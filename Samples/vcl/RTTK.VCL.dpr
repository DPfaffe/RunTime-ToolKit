program RTTK.VCL;

uses
  Vcl.Forms,
  frmRttkVCLU in 'frmRttkVCLU.pas' {frmRTTKVCL},
  dmRttkVCLU in 'dmRttkVCLU.pas' {dmRTTK: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmRTTKVCL, frmRTTKVCL);
  Application.CreateForm(TdmRTTK, dmRTTK);
  Application.Run;
end.
