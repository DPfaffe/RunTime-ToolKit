program RTTK_FMX;

uses
  System.StartUpCopy,
  FMX.Forms,
  frmRttkFMXU in 'frmRttkFMXU.pas' {frmRTTKFMX},
  dmRttkFMXU in 'dmRttkFMXU.pas' {dmRTTK: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmRTTKFMX, frmRTTKFMX);
  Application.CreateForm(TdmRTTK, dmRTTK);
  Application.Run;
end.
