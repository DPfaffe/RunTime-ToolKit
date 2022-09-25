unit VCL.RTTK.PT.FNCChartTool;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VCL.SERTTK.PluginTypes, Vcl.StdCtrls, VCL.TMSFNCCustomComponent,
  VCL.TMSFNCChartEditor, VCL.TMSFNCChart;

type
  TFrameFNCChartTool = class(TFrame)
    TMSFNCChartEditorDialog1: TTMSFNCChartEditorDialog;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    FChart: TTMSFNCChart; // used for references
  public
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
   function InitToolUI(const AToolPage: TSERTTKPluginToolPage; const ARTTKRepository: TSERTTKRepositoryRef)
      : TSERTTKPluginToolInstance; override;
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
uses VCL.SERTTK.Registry, VCL.SE.Logger;

{ TFrameFNCChartTool }

procedure TFrameFNCChartTool.AssignChartToEditor(AChart: TTMSFNCChart);
begin
      FChart := AChart;
  TMSFNCChartEditorDialog1.Chart := AChart;
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

function TSESITFNCChart.InitToolUI(const AToolPage: TSERTTKPluginToolPage;
  const ARTTKRepository: TSERTTKRepositoryRef): TSERTTKPluginToolInstance;
begin
  result := TSERTTKPluginFNCChartTool.Create(self, AToolPage, ARTTKRepository);
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
end;

procedure TFrameFNCChartTool.Button1Click(Sender: TObject);
begin
TMSFNCChartEditorDialog1.Execute;
end;

initialization

MarshalPlugins.AddTransform(TSETransformFNCChart.Create);

end.
