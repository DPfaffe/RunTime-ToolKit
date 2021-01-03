program RTTK.VCL;

uses
  Vcl.Forms,
  frmRttkVCLU in 'frmRttkVCLU.pas' {frmRTTKVCL};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmRTTKVCL, frmRTTKVCL);
  Application.Run;
end.
