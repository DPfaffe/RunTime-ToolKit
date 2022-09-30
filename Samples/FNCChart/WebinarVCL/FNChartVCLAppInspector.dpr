program FNChartVCLAppInspector;

uses
  Vcl.Forms,
  frmFncChartGridVCLUAppInspector in 'frmFncChartGridVCLUAppInspector.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
