unit FMX.RTTK.PT.FNCChartTool;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls, FMX.TMSFNCCustomComponent,
  FMX.TMSFNCChartEditor, FMX.Controls.Presentation, FMX.TMSFNCChart, FMX.SERTTK.PluginTypes, FMX.TMSFNCPDFIO,
  FMX.TMSFNCGraphicsPDFEngine, FMX.TMSFNCButton, FMX.TMSFNCPDFLib, FMX.TMSFNCTypes, FMX.TMSFNCUtils, FMX.TMSFNCGraphics,
  FMX.TMSFNCGraphicsTypes, FMX.TMSFNCCustomControl, FMX.Layouts, FMX.TMSFNCBitmapContainer,
  FMX.TMSFNCImage, FMX.TMSFNCHTMLText, FMX.TMSFNCStatusBar, FMX.TMSFNCListBox;

type
  TFrameFNCChartTool = class(TFrame)
    TMSFNCGraphicsPDFIO1: TTMSFNCGraphicsPDFIO;
    TMSFNCChartEditorDialog: TTMSFNCChartEditorDialog;
    TMSFNCBitmapContainer1: TTMSFNCBitmapContainer;
    TMSFNCImage1: TTMSFNCImage;
    TMSFNCHTMLText1: TTMSFNCHTMLText;
    TMSFNCStatusBar1: TTMSFNCStatusBar;
    TMSFNCListBox1: TTMSFNCListBox;
    Panel1: TPanel;
    procedure TMSFNCListBox1ItemClick(Sender: TObject; AItem: TTMSFNCListBoxItem);
  private
    FChart: TTMSFNCChart; // used for references
    procedure LogChartAction(const AMessage: string);
    procedure ExportChartPDF(const AFile: string; const AResult: Boolean);
    function CaptureChartImage: integer;
    procedure StatusBarLoad;
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

{$R *.fmx}

uses FMX.SERTTK.Registry, FMX.SE.Logger, System.IOUtils, System.JSON, FMX.TMSFNCChartDatabaseAdapter;

procedure TFrameFNCChartTool.AssignChartToEditor(AChart: TTMSFNCChart);
begin
  FChart := AChart;
  TMSFNCChartEditorDialog.Chart := AChart;
  TMSFNCListBox1.Items.Clear;
  LogChartAction('Initial Capture');
  StatusBarLoad;
end;

procedure TFrameFNCChartTool.ExportChartPDF(const AFile: string; const AResult: Boolean);
const
  fmt_datetime = 'yyyy/mm/dd hh:nn:ss';
begin
  if AResult = false then
    exit;
  TMSFNCGraphicsPDFIO1.Information.Title := 'Export FNC Chart';
  TMSFNCGraphicsPDFIO1.ExportObject := FChart;
  TMSFNCGraphicsPDFIO1.Options.Header := TMSFNCGraphicsPDFIO1.Information.Title;
  TMSFNCGraphicsPDFIO1.Options.Footer := 'Exported @ ' + FormatDateTime(fmt_datetime, now);
  if FChart.Width > FChart.height then
    TMSFNCGraphicsPDFIO1.Options.PageOrientation  := TTMSFNCPDFlibPageOrientation.poLandscape;
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
    fn := TPath.Combine(TTMSFNCUtils.GetTempPath, FChart.ClassName) + '.pdf'
  else
    fn := TPath.Combine(TTMSFNCUtils.GetTempPath, 'FNCChart' + cn) + '.pdf';
  fr := TTMSFNCUtils.SaveFile(fn, txt_extension, ExportChartPDF);
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

procedure TFrameFNCChartTool.ShowEditor(Sender: TObject);
begin
  TMSFNCChartEditorDialog.Execute;
  LogChartAction('Edit @' + FormatDateTime('hh:nn:ss', now));
end;

procedure TFrameFNCChartTool.StatusBarLoad;
var
  sp: TTMSFNCStatusBarPanel;
  adapter: TTMSFNCChartDatabaseAdapter;
  function AddPanel: TTMSFNCStatusBarPanel;
  begin
    result := TMSFNCStatusBar1.Panels.Add;
    result.Style := TTMSFNCStatusBarPanelStyle.spsHTML;
    result.AutoSize := true;
  end;
  function TextGreen(AText:string):string;
  begin
    result := '<FONT color="#00FF00" >'+AText+'</FONT>';
  end;
  function TextRed(AText:string):string;
  begin
    result := '<FONT color="#FF0000">'+AText+'</FONT>';
  end;

begin
  sp := AddPanel;
  if Assigned(FChart.adapter) then
    if FChart.adapter.Active then
    begin
      sp.Text := TextGreen('Adapter active');
      adapter := TTMSFNCChartDatabaseAdapter(FChart.adapter);
      sp := AddPanel;
      if Assigned(adapter.Source.DataSource) then
        if adapter.Source.DataSource.Enabled then
        begin
          sp.Text := TextGreen('DataSource Active');
          sp := AddPanel;
          if Assigned(adapter.Source.DataSource.DataSet) then
            if adapter.Source.DataSource.DataSet.Active then
              sp.Text := TextGreen('DataSet Active')
            else
              sp.Text := TextRed('DataSet InActive')
          else
            sp.Text := TextRed('DataSet Not Assigned');
        end
        else
          sp.Text := TextRed('DataSource Disabled')
      else
        sp.Text := TextRed('DataSource not Assigned')
    end
    else
      sp.Text := TextRed('Adapter inactive')
  else
    sp.Text := TextRed('NO Adapter!')
end;

procedure TFrameFNCChartTool.LogChartAction(const AMessage: string);
var
  tvi: TTMSFNCListBoxItem;
  ts: TStringStream;
begin
  tvi := TMSFNCListBox1.Items.Add;
  tvi.Text := AMessage;
  tvi.DataInteger := CaptureChartImage;
  ts := TStringStream.Create;
  try
    FChart.SaveToJSONStream(ts);
    ts.Position := 0;
    tvi.DataString := ts.DataString;
    TMSFNCListBox1.ItemIndex := tvi.Index;
  finally
    ts.Free;
  end;
end;

procedure TFrameFNCChartTool.TMSFNCListBox1ItemClick(Sender: TObject; AItem: TTMSFNCListBoxItem);
var
  JV: TJSONValue;
begin
  try
    try
    TMSFNCImage1.Bitmap := TMSFNCBitmapContainer1.Items[AItem.DataInteger].Bitmap;
      JV := TJSONObject.ParseJSONValue(AItem.DataString);
      TMSFNCHTMLText1.Text := JV.Format(1);
    except
      on E: Exception do
    end;
  finally
    FreeAndNil(JV);
  end;
end;

{ TSETransformFNCChart }

constructor TSETransformFNCChart.Create;
begin // what class type will this transform be mapped for?
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

{ TSERTTKPluginFNCChartTool }

function TSERTTKPluginFNCChartTool.DisplayName: string;
begin
  result := 'FNC Chart Editor';
end;

procedure TSERTTKPluginFNCChartTool.InitToolInstance;
begin
  inherited; // code to create tool here
  FChartUITool := TFrameFNCChartTool.Create(self.ToolPage.Container);
  FChartUITool.Parent := self.ToolArea;
  if Assigned(self.ToolInfo.AppComponent) and (self.ToolInfo.AppComponent is TTMSFNCChart) then
    FChartUITool.AssignChartToEditor(TTMSFNCChart(self.ToolInfo.AppComponent));
  Toolbar.NewButton('Show Editor', FChartUITool.ShowEditor);
  Toolbar.NewButton('Save to PDF', FChartUITool.ExportPDF);
end;

{ TSESITFNCChart }

function TSESITFNCChart.InitToolUI(const AInspectorCVInfo: TSERTTKPluginInspectorCVInfo): TSERTTKPluginToolInstance;
begin
  result := TSERTTKPluginFNCChartTool.Create(self, AInspectorCVInfo);
end;

initialization

MarshalPlugins.AddTransform(TSETransformFNCChart.Create);

end.
