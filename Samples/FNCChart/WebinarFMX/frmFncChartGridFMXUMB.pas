unit frmFncChartGridFMXUMB;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, frmFncChartGridFMXU, FMX.Controls.Presentation,
  FMX.StdCtrls, FMX.SE.RTTK.DT.Marshal;

type
  TfrmFncChartMarshalButton = class(TfrmChartSalesFMX)
    SERTTKMarshal1: TSERTTKMarshal;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFncChartMarshalButton: TfrmFncChartMarshalButton;

implementation

uses FMX.RTTK.PT.FNCChartTool; // only needed if using FNC Chart
{$R *.fmx}

end.
