program ChartOptimizationVCL;

uses
  Vcl.Forms,
  ChartOptimization in 'ChartOptimization.pas' {frmChartOptimization},
  VCL.RTTK.PT.FNCChartTool in '..\Inspectors\VCL.RTTK.PT.FNCChartTool.pas' {FrameFNCChartTool: TFrame};

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := true;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmChartOptimization, frmChartOptimization);
  Application.Run;
end.
