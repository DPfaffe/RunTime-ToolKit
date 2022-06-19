unit FMX.RTTK.PT.FNCChartTool;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls, FMX.TMSFNCCustomComponent,
  FMX.TMSFNCChartEditor, FMX.Controls.Presentation, FMX.TMSFNCChart, FMX.SERTTK.PluginTypes;

type
  TFrameFNCChartTool = class(TFrame)
    btnShowChartEditor: TButton;
    TMSFNCChartEditorDialog1: TTMSFNCChartEditorDialog;
    procedure btnShowChartEditorClick(Sender: TObject);
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

{$R *.fmx}

uses FMX.SERTTK.Registry, FMX.SE.Logger;

procedure TFrameFNCChartTool.AssignChartToEditor(AChart: TTMSFNCChart);
begin
  FChart := AChart;
  TMSFNCChartEditorDialog1.Chart := AChart;
end;

procedure TFrameFNCChartTool.btnShowChartEditorClick(Sender: TObject);
begin
  TMSFNCChartEditorDialog1.Execute;
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
 end;

{ TSESITFNCChart }

function TSESITFNCChart.InitToolUI(const AToolPage: TSERTTKPluginToolPage; const ARTTKRepository: TSERTTKRepositoryRef): TSERTTKPluginToolInstance;
begin
result := TSERTTKPluginFNCChartTool.Create(self, AToolPage, ARTTKRepository);
end;

initialization

MarshalPlugins.AddTransform(TSETransformFNCChart.Create);

end.
