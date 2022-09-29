program FncChartFMXAppInspector;

uses
  System.StartUpCopy,
  FMX.Forms,
  frmFncChartGridFMXUAI in 'frmFncChartGridFMXUAI.pas' {frmFmxChartAppInspector},
  dmChartWebinar in 'dmChartWebinar.pas' {ChartWebinarDB: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TChartWebinarDB, ChartWebinarDB);
  Application.CreateForm(TfrmFmxChartAppInspector, frmFmxChartAppInspector);
  Application.Run;
end.
