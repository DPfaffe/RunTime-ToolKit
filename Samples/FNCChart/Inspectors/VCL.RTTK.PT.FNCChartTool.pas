unit VCL.RTTK.PT.FNCChartTool;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  VCL.Graphics, VCL.Controls, VCL.Forms, VCL.Dialogs, VCL.SERTTK.PluginTypes, VCL.StdCtrls, VCL.TMSFNCCustomComponent,
  VCL.TMSFNCChartEditor, VCL.TMSFNCChart, VCL.TMSFNCPDFIO, VCL.TMSFNCGraphicsPDFEngine, VCL.TMSFNCButton,
  VCL.TMSFNCTypes, VCL.TMSFNCUtils, VCL.TMSFNCGraphics, VCL.TMSFNCGraphicsTypes, VCL.TMSFNCHTMLText, VCL.TMSFNCImage,
  VCL.TMSFNCBitmapContainer, VCL.TMSFNCCustomControl, VCL.TMSFNCTableView;

type
  TFrameFNCChartTool = class(TFrame)
    TMSFNCChartEditorDialog1: TTMSFNCChartEditorDialog;
    TMSFNCGraphicsPDFIO1: TTMSFNCGraphicsPDFIO;
    TMSFNCTableView1: TTMSFNCTableView;
    TMSFNCBitmapContainer1: TTMSFNCBitmapContainer;
    TMSFNCImage1: TTMSFNCImage;
    TMSFNCHTMLText1: TTMSFNCHTMLText;
    procedure TMSFNCTableView1ItemSelected(Sender: TObject; AItem: TTMSFNCTableViewItem);
    procedure TMSFNCTableView1BeforeItemShowDetailControl(Sender: TObject; AItem: TTMSFNCTableViewItem;
      ADetailControl: TControl; var AAllow: Boolean);
  private
    FChart: TTMSFNCChart; // used for references
    procedure ExportChartPDF(const AFile: string; const AResult: Boolean);
    procedure LogChartAction(const AMessage: string);
    function CaptureChartImage: integer;
  public
    procedure ShowEditor(Sender: TObject);
    procedure ExportPDF(Sender: TObject);
    procedure AssignChartToEditor(AChart: TTMSFNCChart);
  end;

  TSETransformFNCChart = class(TSERTTKPluginTransform)
  protected
    procedure ExecTransform; override;
  public
    constructor Create; reintroduce;
  end;

  TSESITFNCChart = class(TSERTTKPluginInspectTool)
  public
    function InitToolUI(const AInspectorCVInfo: TSERTTKPluginInspectorCVInfo): TSERTTKPluginToolInstance; override;
  end;

  TSERTTKPluginFNCChartTool = class(TSERTTKPluginToolInstance)
  strict private
    FChartUITool: TFrameFNCChartTool;
  protected
    procedure InitToolInstance; override;
  public
    function DisplayName: string; override;
  end;

implementation

{$R *.dfm}

uses VCL.SERTTK.Registry, VCL.SE.Logger, System.IOUtils, System.JSON;

{ TFrameFNCChartTool }

procedure TFrameFNCChartTool.AssignChartToEditor(AChart: TTMSFNCChart);
begin
  FChart := AChart;
  TMSFNCChartEditorDialog1.Chart := AChart;
  TMSFNCTableView1.Items.Clear;
  LogChartAction('Initial Capture');
end;

procedure TFrameFNCChartTool.ExportChartPDF(const AFile: string; const AResult: Boolean);
const
  fmt_datetime = 'yyyy/mm/dd hh:nn:ss';
begin
  if AResult = false then
    exit;
  TMSFNCGraphicsPDFIO1.Information.Title := 'Export FNC Chart';
  TMSFNCGraphicsPDFIO1.Options.Header := TMSFNCGraphicsPDFIO1.Information.Title;
  TMSFNCGraphicsPDFIO1.Options.Footer := 'Exported @ ' + FormatDateTime(fmt_datetime, now);
  TMSFNCGraphicsPDFIO1.Save(AFile);
end;

procedure TFrameFNCChartTool.ExportPDF(Sender: TObject);
const
  txt_extension = 'PDF files (*.pdf)|*.PDF';
var
  fn, cn: string;
  fr: Boolean;
begin
  cn := FChart.Name;
  if cn.IsEmpty then
    fn := TPath.Combine(TTMSFNCUtils.GetTempPath, FChart.ClassName) + '.json'
  else
    fn := TPath.Combine(TTMSFNCUtils.GetTempPath, 'FNCChart' + cn) + '.json';
  fr := TTMSFNCUtils.SaveFile(fn, txt_extension, ExportChartPDF);
end;

procedure TFrameFNCChartTool.ShowEditor(Sender: TObject);
begin
  TMSFNCChartEditorDialog1.Execute;
  LogChartAction('Edit @' + FormatDateTime('hh:nn:ss', now));
end;

function TFrameFNCChartTool.CaptureChartImage: integer;
var
  bmi: TTMSFNCBitmapItem;
  lms: TMemoryStream;
begin
  lms := TMemoryStream.Create;
  try
    FChart.MakeScreenshot.SaveToStream(lms);
    lms.Position := 0;
    bmi := TMSFNCBitmapContainer1.Items.Add;
    bmi.Bitmap.LoadFromStream(lms);
    result := bmi.Index;
    TMSFNCImage1.Bitmap := bmi.Bitmap;
  finally
    lms.Free;
  end;
end;

procedure TFrameFNCChartTool.LogChartAction(const AMessage: string);
var
  tvi: TTMSFNCTableViewItem;
  ts: TStringStream;
begin
  tvi := TMSFNCTableView1.Items.Add;
  tvi.Text := AMessage;
  tvi.DataInteger := CaptureChartImage;
  ts := TStringStream.Create;
  try
    FChart.SaveToJSONStream(ts);
    ts.Position := 0;
    tvi.DataString := ts.DataString;
  finally
    ts.Free;
  end;
end;

procedure TFrameFNCChartTool.TMSFNCTableView1BeforeItemShowDetailControl(Sender: TObject; AItem: TTMSFNCTableViewItem;
  ADetailControl: TControl; var AAllow: Boolean);
var
  JV: TJSONValue;
begin
  try
    try
      JV := TJSONObject.ParseJSONValue(AItem.DataString);
      TMSFNCHTMLText1.Text := JV.Format(1);
    except
      on E: Exception do
    end;
  finally
    FreeAndNil(JV);
  end;
end;

procedure TFrameFNCChartTool.TMSFNCTableView1ItemSelected(Sender: TObject; AItem: TTMSFNCTableViewItem);
begin
  TMSFNCImage1.Bitmap := TMSFNCBitmapContainer1.Items[AItem.DataInteger].Bitmap;
end;

{ TSETransformFNCChart }

constructor TSETransformFNCChart.Create;
begin
  inherited Create(TTMSFNCChart);
end;

procedure TSETransformFNCChart.ExecTransform;
begin
  try // add tool reference class to the Inspectors list
    RepoComponent.ToolAdd(TSESITFNCChart.Create(RepoComponent));
  except
    on E: Exception do
      Logger.Debug(E.Message)
  end;
end;

{ TSESITFNCChart }

function TSESITFNCChart.InitToolUI(const AInspectorCVInfo: TSERTTKPluginInspectorCVInfo): TSERTTKPluginToolInstance;
begin
  result := TSERTTKPluginFNCChartTool.Create(self, AInspectorCVInfo);
end;

{ TSERTTKPluginFNCChartTool }

function TSERTTKPluginFNCChartTool.DisplayName: string;
begin
  result := 'FNC Chart Editor';
end;

procedure TSERTTKPluginFNCChartTool.InitToolInstance;
begin
  inherited;
  FChartUITool := TFrameFNCChartTool.Create(self.ToolPage.Container);
  FChartUITool.Parent := self.ToolArea;
  if Assigned(self.ToolInfo.AppComponent) and (self.ToolInfo.AppComponent is TTMSFNCChart) then
    FChartUITool.AssignChartToEditor(TTMSFNCChart(self.ToolInfo.AppComponent));
  Toolbar.NewButton('Show Editor', FChartUITool.ShowEditor);
  Toolbar.NewButton('Save to PDF', FChartUITool.ExportPDF);
end;

initialization

MarshalPlugins.AddTransform(TSETransformFNCChart.Create);

end.
