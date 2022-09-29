program FncChartFMXBase;

uses
  System.StartUpCopy,
  FMX.Forms,
  frmFncChartGridFMXU in 'frmFncChartGridFMXU.pas' {frmChartSalesFMX},
  dmChartWebinar in 'dmChartWebinar.pas' {ChartWebinarDB: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TChartWebinarDB, ChartWebinarDB);
  Application.CreateForm(TfrmChartSalesFMX, frmChartSalesFMX);
  Application.Run;
end.
