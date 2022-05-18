program DebFileEventsVCL;

uses
  Vcl.Forms,
  frmDebFileEventSimU in 'frmDebFileEventSimU.pas' {frmDebFileEvents},
  MsgEventsU in '..\MsgEventsU.pas',
  ThreadFSPollFolder in '..\ThreadFSPollFolder.pas',
  ThreadItemWorker in '..\ThreadItemWorker.pas',
  ThreadProcStats in '..\ThreadProcStats.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmDebFileEvents, frmDebFileEvents);
  Application.Run;
end.
