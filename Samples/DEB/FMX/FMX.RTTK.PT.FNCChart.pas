unit FMX.RTTK.PT.FNCChart;

{$I FMX.SERTI.inc}

interface

uses Generics.Collections, System.Classes,
{$IFDEF FMXRTILIB}
  FMX.SE.RTTK.PluginTypes, frmFncChartTool,   FMX.SE.SupportRepository,
{$ENDIF}
{$IFDEF VCLRTILIB}
  VCL.SE.SupportTypes,
{$ENDIF}
  FireDAC.Comp.DataSet;

const
  MAJ_VER = 1; // Major version nr.
  MIN_VER = 0; // Minor version nr.
  REL_VER = 0; // Release nr.
  BLD_VER = 0; // Build nr.

  // Version history
  // v1.0.0.0 : First Release
  // v1.0.1.0 : Added Defined transform for TDataset
  // v1.0.1.1 : Removed Fields transform from TFDDataset
  // v1.0.2.1 : Added transform for application info and comp list
  // v1.0.2.2 : Added transform for Screen Info
  // v1.0.3.0 : Base class moved to SupportTypes
  // v1.1.0.0 : Added Transform DB Browser
  // v1.2.0.0 : Added Repo Ref to transform
  // v1.2.1.0 : Cleaned code comments
  // v2.0.1.0 : Assignment of transforms moved to repository class as registry

  { ******************************************************************** }
  { written by swiftexpat }
  { copyright © 2022 }
  { Email : support@swiftexpat.com }
  { Web : https://swiftexpat.com }
  { }
  { The source code is given as is. The author is not responsible }
  { for any possible damage done due to the use of this code. }
  { The complete source code remains property of the author and may }
  { not be distributed, published, given or sold in any form as such. }
  { No parts of the source code can be included in any other component }
  { or application without written authorization of the author. }
  { ******************************************************************** }

type

  /// <summary> this should be wrapped with a TFDMemTable or do we test down level
  // TSETransTFDDataSet = class(TSESTransformBase)
  // strict private
  // FDS: TFDDataSet;
  // private
  // procedure TransformIndexes;
  // procedure TransformAggregates;
  // protected
  // procedure ExecTransform; override;
  // public
  // constructor Create; reintroduce;
  // end;

  TSETransformFNCChart = class(TSERTTKPluginTransform)
  protected
    procedure ExecTransform; override;
  public
    constructor Create; reintroduce;
  end;

  TSESITFNCChart = class(TSERTTKPluginInspectTool)
  public
    function InitToolUI( const AToolPage: TSERTTKPluginToolPage; const ARTTKRepository: TSESRepository)  : TSERTTKPluginToolInstance; override;
  end;

  TSERTTKPluginFNCChartTool = class(TSERTTKPluginToolInstance)
  strict private
    FChartUITool : TFrameFNCChartTool;
  protected
    procedure InitToolInstance; override;
  public
    function DisplayName: string; override;
  end;

implementation

uses FMX.TMSFNCChart, FMX.SE.RTTK.Registry, System.SysUtils, FMX.SE.Logger;

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

{ TSESITFNCChart }

function TSESITFNCChart.InitToolUI( const AToolPage: TSERTTKPluginToolPage; const ARTTKRepository: TSESRepository)  : TSERTTKPluginToolInstance;
begin
  result := TSERTTKPluginFNCChartTool.Create(self, AToolPage,  ARTTKRepository);
end;

{ TSERTTKPluginFNCChartTool }

function TSERTTKPluginFNCChartTool.DisplayName: string;
begin
result := '23';
end;

procedure TSERTTKPluginFNCChartTool.InitToolInstance;
begin
  inherited;
  FChartUITool := TFrameFNCChartTool.Create(self.ToolPage.Container);
  FChartUITool.Parent := self.ToolArea;
  if Assigned(self.ToolInfo.AppComponent) and (self.ToolInfo.AppComponent is TTMSFNCChart) then
    FChartUITool.AssignChartToEditor(TTMSFNCChart(self.ToolInfo.AppComponent));

  //code to create tool here

end;

initialization

MarshalPlugins.AddTransform(TSETransformFNCChart.Create);

// regsiter the mapping of the tool refrence to the cv class

end.
