unit frmFncChartGridFMXUAI;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, frmFncChartGridFMXU,  FMX.SE.RTTK.DT.Marshal;

type
  TfrmFmxChartAppInspector = class(TfrmChartSalesFMX)
    SERTTKAppInspectorFMX1: TSERTTKAppInspectorFMX;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFmxChartAppInspector: TfrmFmxChartAppInspector;

implementation

uses dmChartWebinar;

{$R *.fmx}

end.
