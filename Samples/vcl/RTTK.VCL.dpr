program RTTK.VCL;

uses
  Vcl.Forms,
  frmRttkVCLU in 'frmRttkVCLU.pas' {frmRTTKVCL},
  dmRttkVCLU in 'dmRttkVCLU.pas' {dmRTTK: TDataModule},
  frmFramedVCLU in 'frmFramedVCLU.pas' {FramedVCL: TFrame},
  frmSubFramedVCLU in 'frmSubFramedVCLU.pas' {FrameSubFramedVCL: TFrame};

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := true;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmRTTK, dmRTTK);
  Application.CreateForm(TfrmRTTKVCL, frmRTTKVCL);
  Application.Run;
end.
