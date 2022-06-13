program DebFileEventsFMX;

uses
  System.StartUpCopy,
  FMX.Forms,
  frmDebFileEventSimU in 'frmDebFileEventSimU.pas' {frmDebFileEvents},
  MsgEventsU in '..\MsgEventsU.pas',
  ThreadFSPollFolder in '..\ThreadFSPollFolder.pas',
  ThreadItemWorker in '..\ThreadItemWorker.pas',
  ThreadProcStats in '..\ThreadProcStats.pas',
  FMX.RTTK.PT.FNCChart in 'FMX.RTTK.PT.FNCChart.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := true;
  Application.Initialize;
  Application.CreateForm(TfrmDebFileEvents, frmDebFileEvents);
  Application.Run;
end.
