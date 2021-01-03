program RTTK_FMX;

uses
  System.StartUpCopy,
  FMX.Forms,
  frmRttkFMXU in 'frmRttkFMXU.pas' {frmRTTKFMX};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmRTTKFMX, frmRTTKFMX);
  Application.Run;
end.
