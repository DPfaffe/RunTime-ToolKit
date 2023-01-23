program MarshalDemo_Web;

uses
  Vcl.Forms,
  WEBLib.Forms,
  frmMarshalDemoU in 'frmMarshalDemoU.pas' {frmMarshalDemo: TWebForm} {*.html},
  dmMarshalDemoU in 'dmMarshalDemoU.pas' {dmMarshalDemo: TWebDataModule},
  frameMarshalDemoTopU in 'frameMarshalDemoTopU.pas' {frameMarshalDemoTopLevel: TFrame},
  frameMarshalDemoSubU in 'frameMarshalDemoSubU.pas' {FrameMarshalSubFrame: TFrame},
  frameMarshalDemoYoutubeU in 'frameMarshalDemoYoutubeU.pas' {frmYouTubeCard: TFrame},
  frameMarshalDemoYouTubeVideoU in 'frameMarshalDemoYouTubeVideoU.pas' {frmYouTubeVideo: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmMarshalDemo, dmMarshalDemo);
  Application.CreateForm(TfrmMarshalDemo, frmMarshalDemo);
  Application.Run;
end.
