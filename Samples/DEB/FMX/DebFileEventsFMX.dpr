program DebFileEventsFMX;

uses
  System.StartUpCopy,
  FMX.Forms,
  frmDebFileEventSimU in 'frmDebFileEventSimU.pas' {frmDebFileEvents},
  MsgEventsU in '..\MsgEventsU.pas',
  ThreadFSPollFolder in '..\ThreadFSPollFolder.pas',
  ThreadItemWorker in '..\ThreadItemWorker.pas',
  ThreadProcStats in '..\ThreadProcStats.pas',
  FMX.RTTK.PT.FNCChartTool in 'FMX.RTTK.PT.FNCChartTool.pas' {FrameFNCChartTool: TFrame};

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := true;
  Application.Initialize;
  Application.CreateForm(TfrmDebFileEvents, frmDebFileEvents);
  Application.Run;
end.
