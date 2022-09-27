program RTTK_FMX;

uses
  System.StartUpCopy,
  FMX.Forms,
  frmRttkFMXU in 'frmRttkFMXU.pas' {frmRTTKFMX},
  dmRttkFMXU in 'dmRttkFMXU.pas' {dmRTTK: TDataModule},
  frmFramedFMXU in 'frmFramedFMXU.pas' {FramedFMX: TFrame},
  frmSubFramedFMXU in 'frmSubFramedFMXU.pas' {FrameSubFramedFXM: TFrame};

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := true;
  Application.Initialize;
  Application.CreateForm(TdmRTTK, dmRTTK);
  Application.CreateForm(TfrmRTTKFMX, frmRTTKFMX);
  Application.Run;
end.
