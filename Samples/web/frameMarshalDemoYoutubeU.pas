unit frameMarshalDemoYoutubeU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, WEBLib.Controls, WEBLib.WebCtrls,
  frameMarshalDemoYouTubeVideoU, JS, Web, dmMarshalDemoU;

type
  TfrmYouTubeCard = class(TFrame)
    wdivVideo: TWebHTMLDiv;
    WebYoutube1: TWebYoutube;
    wdivCardRow: TWebHTMLDiv;
  private
    FVideoCard: TfrmYouTubeVideo;
    procedure SetVideoID(const AVideoID: string);
    procedure LoadVideoFrame(const AVideo: TDemoVideo);
  public
    procedure LoadVideo(const AVideo: TDemoVideo);
  end;

implementation

{$R *.dfm}
{ TfrmYouTubeCard }

procedure TfrmYouTubeCard.LoadVideo(const AVideo: TDemoVideo);
begin
  self.BeginUpdate;
  LoadVideoFrame(AVideo);
  SetVideoID(AVideo.VideoID);
  self.EndUPdate;
end;

procedure TfrmYouTubeCard.LoadVideoFrame(const AVideo: TDemoVideo);
begin
  try
    FVideoCard := TfrmYouTubeVideo.Create(self);
    FVideoCard.Align := alClient;
    FVideoCard.Parent := wdivCardRow;
    FVideoCard.ElementClassName := 'col-6';
    FVideoCard.ElementPosition := epIgnore;
    FVideoCard.HeightStyle := ssAuto;
    FVideoCard.WidthStyle := ssAuto;
    FVideoCard.LoadFromForm;
    FVideoCard.SetVideoID(AVideo);
  Except
    on E: Exception do // handle exception types
      Console.log(E.Message);
    else // handle everything else
      Console.log(String(JS.JSExceptValue));
  End;
end;

procedure TfrmYouTubeCard.SetVideoID(const AVideoID: string);
begin
  WebYoutube1.VideoID := AVideoID;
end;

end.
