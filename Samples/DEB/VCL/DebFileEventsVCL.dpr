program DebFileEventsVCL;

uses
  Vcl.Forms,
  frmDebFileEventSimU in 'frmDebFileEventSimU.pas' {frmDebFileEvents} ,
  MsgEventsU in '..\MsgEventsU.pas',
  ThreadFSPollFolder in '..\ThreadFSPollFolder.pas',
  ThreadItemWorker in '..\ThreadItemWorker.pas',
  ThreadProcStats in '..\ThreadProcStats.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := true;
  Application.Initialize;
  Application.MainFormOnTaskbar := true;
  Application.CreateForm(TfrmDebFileEvents, frmDebFileEvents);
  Application.Run;

end.
