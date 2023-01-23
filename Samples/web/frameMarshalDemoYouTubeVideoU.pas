unit frameMarshalDemoYouTubeVideoU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, JS, Web,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, WEBLib.WebCtrls, WEBLib.Controls, dmMarshalDemoU;

type
  TfrmYouTubeVideo = class(TFrame)
    wdivCardBody: TWebHTMLDiv;
  private
    { Private declarations }
  public
    procedure SetVideoID(const AVideo: TDemoVideo);
  end;

implementation

{$R *.dfm}
{ TfrmYouTubeVideo }

procedure TfrmYouTubeVideo.SetVideoID(const AVideo: TDemoVideo);
begin
WdivCardBody.Visible := true;
WdivCardBody.html.Clear;
WdivCardBody.html.Add('<h5 class="card-title">'+AVideo.Title+'</h5>');
WdivCardBody.html.Add('<p class="card-text">'+AVideo.Decription+'</p>') ;
WdivCardBody.html.Add('<p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>');
end;

end.
