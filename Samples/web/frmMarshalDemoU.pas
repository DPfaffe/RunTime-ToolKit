unit frmMarshalDemoU;

interface

uses
  System.SysUtils, System.Classes, JS, Web, WEBLib.Graphics, WEBLib.Controls,
  WEBLib.Forms, WEBLib.Dialogs, WEBLib.ComCtrls, Vcl.Controls, WEBLib.ExtCtrls, WEBLib.Actions, WEBLib.TreeNodes,
  Vcl.ComCtrls, Vcl.StdCtrls, WEBLib.StdCtrls, Vcl.Forms, frameMarshalDemoTopU, WEBLib.WebCtrls, WEBLib.Rating;

type
  TfrmMarshalDemo = class(TWebForm)
    pnlTop: TWebPanel;
    pcFeatures: TWebPageControl;
    tiFeatures: TWebTabSheet;
    tiRunTimeMemo: TWebTabSheet;
    tiFrames: TWebTabSheet;
    WebElementActionList1: TWebElementActionList;
    lbFeatures: TWebListBox;
    btnMarshal: TWebButton;
    pnlFramesTools: TWebPanel;
    pnlRTMemoTools: TWebPanel;
    btnMemoAdd: TWebButton;
    btnMemoDelete: TWebButton;
    memoRTCompFooter: TWebMemo;
    WebLabel1: TWebLabel;
    wpFrameHost: TWebPanel;
    WebHTMLDiv1: TWebHTMLDiv;
    WebHTMLDiv2: TWebHTMLDiv;
    wdivVideoCards: TWebHTMLDiv;
    WebHTMLDiv3: TWebHTMLDiv;
    WebHTMLDiv4: TWebHTMLDiv;
    WebMemo1: TWebMemo;
    WebMemo2: TWebMemo;
    WebHTMLSpan1: TWebHTMLSpan;
    WebHTMLDiv5: TWebHTMLDiv;
    procedure WebFormCreate(Sender: TObject);
    procedure btnMarshalClick(Sender: TObject);
    procedure btnMemoAddClick(Sender: TObject);
    procedure btnMemoDeleteClick(Sender: TObject);
  private
    FRuntimeMemo: TWebMemo;
    FFrame: TframeMarshalDemoTopLevel;
    procedure LoadFeatureTree;
    procedure LoadYouTubeVideos;
  public
    { Public declarations }
  end;

var
  frmMarshalDemo: TfrmMarshalDemo;

implementation

uses {$IFDEF RTTK}WEBLib.SE.RTTK.Constable, {$ENDIF} dmMarshalDemoU, frameMarshalDemoYoutubeU;

{$R *.dfm}

procedure TfrmMarshalDemo.btnMarshalClick(Sender: TObject);
begin
{$IFDEF RTTK}
  TSERTTKConstableAPI.ShowConstable;
  Console.log('defined')
{$ENDIF}
end;

procedure TfrmMarshalDemo.btnMemoAddClick(Sender: TObject);
var
  s: string;
begin
  FRuntimeMemo := TWebMemo.Create(self);
  FRuntimeMemo.Parent := tiRunTimeMemo;
  FRuntimeMemo.Align := TAlign.alClient;
  for s in memoRTCompFooter.Lines do
    FRuntimeMemo.Lines.Add('Copy of : ' + s);
  btnMemoDelete.Enabled := true;
end;

procedure TfrmMarshalDemo.btnMemoDeleteClick(Sender: TObject);
begin
  if Assigned(FRuntimeMemo) then
    FRuntimeMemo.Free;
  btnMemoDelete.Enabled := false;
end;

procedure TfrmMarshalDemo.LoadFeatureTree;
begin
  lbFeatures.Items.Add('Features');
  dmMarshalDemo.cdsFeatures.first;
  while not dmMarshalDemo.cdsFeatures.EOF do
  begin
    lbFeatures.Items.Add(dmMarshalDemo.cdsFeatures.FieldByName('FeatureName').AsString);
    dmMarshalDemo.cdsFeatures.next;
  end;
end;

procedure TfrmMarshalDemo.LoadYouTubeVideos;
var
  fVideoCard: TfrmYouTubeCard;
  i: integer;
begin
  dmMarshalDemo.cdsVideos.first;
  i := 0;
  while not dmMarshalDemo.cdsVideos.EOF do
  begin
    try
      fVideoCard := TfrmYouTubeCard.Create(self);
      fVideoCard.Align := alClient;
      fVideoCard.Parent := wdivVideoCards;
      fVideoCard.ElementClassName := 'card';
      fVideoCard.ElementPosition := epRelative;
      fVideoCard.HeightStyle := ssAuto;
      fVideoCard.WidthStyle := ssAuto;
      fVideoCard.ChildOrder := i;
      fVideoCard.LoadFromForm;
      fVideoCard.BeginUpdate;
      fVideoCard.LoadVideo(dmMarshalDemo.CurrentVideo);
      fVideoCard.EndUPdate;
    Except
      on E: Exception do // handle exception types
        Console.log(E.Message);
      else // handle everything else
        Console.log(String(JS.JSExceptValue));
    End;
    dmMarshalDemo.cdsVideos.next;
    inc(i);
  end;
end;

procedure TfrmMarshalDemo.WebFormCreate(Sender: TObject);
begin
  LoadFeatureTree;
  FFrame := TframeMarshalDemoTopLevel.Create(self);
  FFrame.Align := alClient;
  FFrame.Parent := WebHTMLDiv1;
  FFrame.LoadFromForm;
  try
    // raise Exception.Create('I created this');
    FFrame.SetupLabels;
  Except
    on E: Exception do // handle exception types
      Console.log(E.Message);
    else // handle everything else
      Console.log(String(JS.JSExceptValue));
  End;
  LoadYouTubeVideos;
  WebMemo1.Lines.Clear;
  WebMemo1.Lines.Add('Use this demo to explore Marshal''s features in the TMS Web Core environment.');
  WebMemo1.Lines.Add('Review the videos above, quick 5 min guided explainations, and / or explore at your own pace.');
  pcFeatures.ActivePageIndex := 0;

end;

end.
