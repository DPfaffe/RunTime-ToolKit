program FncChartFMXMarshalButton;

uses
  System.StartUpCopy,
  FMX.Forms,
  frmFncChartGridFMXUMB in 'frmFncChartGridFMXUMB.pas' {frmFncChartMarshalButton},
  dmChartWebinar in 'dmChartWebinar.pas' {ChartWebinarDB: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TChartWebinarDB, ChartWebinarDB);
  Application.CreateForm(TfrmFncChartMarshalButton, frmFncChartMarshalButton);
  Application.Run;
end.
