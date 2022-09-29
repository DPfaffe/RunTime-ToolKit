program FncChartFMXMarshalCoded;

uses
  System.StartUpCopy,
  FMX.Forms,
  frmFncChartGridFMXUCoded in 'frmFncChartGridFMXUCoded.pas' {frmFmxMarshalCodedOptions},
  dmChartWebinar in 'dmChartWebinar.pas' {ChartWebinarDB: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TChartWebinarDB, ChartWebinarDB);
  Application.CreateForm(TfrmFmxMarshalCodedOptions, frmFmxMarshalCodedOptions);
  Application.Run;
end.
