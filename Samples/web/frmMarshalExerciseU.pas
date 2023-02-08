unit frmMarshalExerciseU;

interface

uses
  System.SysUtils, System.Classes, JS, Web, WEBLib.Graphics, WEBLib.Controls, frameMarshalDemoTopU,
  WEBLib.Forms, WEBLib.Dialogs, Vcl.Controls, WEBLib.WebCtrls, WEBLib.ExtCtrls, Vcl.StdCtrls, WEBLib.StdCtrls;

type
  TfrmMarshalExercise = class(TWebForm)
    divTheme: TWebHTMLDiv;
    divBody: TWebScrollBox;
    pnlTop: TWebPanel;
    btnMarshal: TWebButton;
    wdivVideoCards: TWebHTMLDiv;
    wdivNotes: TWebHTMLDiv;
    waNotes: TWebAccordion;
    procedure WebFormCreate(Sender: TObject);
    procedure btnMarshalClick(Sender: TObject);
  private
    procedure LoadBlogVideos;
    procedure LoadNotesAccordion;
  public
    { Public declarations }
  end;

var
  frmMarshalExercise: TfrmMarshalExercise;

implementation

{$R *.dfm}

uses {$IFDEF RTTK}WEBLib.SERTTK.Marshal, {$ENDIF} dmMarshalDemoU,  frameMarshalDemoCardBlogRefU;

procedure TfrmMarshalExercise.btnMarshalClick(Sender: TObject);
begin
{$IFDEF RTTK}
  TSERTTKMarshalAPI.ShowConstable;
{$ENDIF}
end;

procedure TfrmMarshalExercise.LoadNotesAccordion;
const
  li_info = 'class="list-group-item list-group-item-secondary"';
  li_warn = 'class="list-group-item list-group-item-info"';
  li_alert = 'class="list-group-item list-group-item-danger"';
var
  sect: TAccordionSection;
  procedure AppendContent(const ASectionID: integer; const AContent: string);
  begin
    waNotes.Sections[ASectionID].Content := waNotes.Sections[ASectionID].Content + AContent;
  end;
  procedure BeginContent(const ASectionID: integer; const AContent: string);
  begin
    waNotes.Sections[ASectionID].Content := AContent;
  end;

begin
  BeginContent(0,
    '<p>Marshal provides runtime inspection of the forms, controls and datamodules of this Delphi / TMS Web Core application. ');
  AppendContent(0, 'Use this demo and exercise below as guided learning for Marshal can inspect and modify in an application.');
  AppendContent(0,  '<br>View the videos above to see Marshal in action, but the true purpose is for the learning exercise below.');
  AppendContent(0, '<br>Source code  <a href="https://github.com/SwiftExpat/RunTime-ToolKit/tree/main/Samples/web" class="card-link"> on GitHub</a> , to explore how this demo was built.');
    AppendContent(0, 'This demo is a minimal application using a datamodule and frames. The exercise is to fix the videos above.');
  AppendContent(0,  '</p>');
  BeginContent(1, '<p>2/14/2023 : Beta 2');
  AppendContent(1, '<ul ><li>Fixed session view defect & added exercise</li>');
  AppendContent(1, '<li>Performance improved for session view</li></ul><p>');
  AppendContent(1, '<p>2/12/2023 : Beta 1');
  AppendContent(1, '<ul ><li>Fixed long delay on Marshal display</li>');
  AppendContent(1, '<li>Removed sections from application info for Web Core</li></ul><p>');

  sect := waNotes.Sections.Insert(1); // add;
  sect.Caption := 'Exercise 1 - Fixing the stair step videos above';
  sect.Content :=
    '<p>The videos above are displayed using bootstrap cards pouplated from data in a TDataset. Frames are used to create cards that display Youtube control and video description.</p>';
  AppendContent(1, '<ol ><li>Navigation - Display Marshal using the blue button at the top left of the page.');
  AppendContent(1, '<ul class="list-group "><li ' + li_info +
    ' ><span class="mark">Structure View</span> contains your applications forms, datamodules and components.</li> ');
  AppendContent(1, '<li ' + li_info + ' >The application object is given the first tab and assigned dedicated inspectors. Inspectors are displayed in the client area and assigned by class type.</li></ul> ');
  AppendContent(1, '</li>');
  AppendContent(1,
    '<li>Navigate Datamodule - Use the structure view tree to expand <span class="mark">dmMarshalDemo</span>  and click on the <span class="mark">cdsVideos</span> .</li>');

  AppendContent(1, '<ul class="list-group "><li ' + li_info +
    ' ><span class="mark">Object Plus</span> is the default inspector, it allows you to inspect and modify properties and events.</li> ');
  AppendContent(1, '<li ' + li_info +
    ' >A second inspector, <span class="mark">DataSet Grid</span>, is assigned because <span class="mark">cdsVideos</span> is a TDataset.</li></ul> ');
  AppendContent(1, '</li>');
  { dataset }
  AppendContent(1, '<li>TDataSet - Inspect <span class="mark">cdsVideos</span> to see the data populating the videos. </li>');
  AppendContent(1, '<ul class="list-group "><li ' + li_info +
    ' >Select the Object Plus <span class="mark"> events </span> tab to notice the <span class="mark">AfterOpen</span> event is assigned to populate the data.</li> ');
  AppendContent(1, '<li ' + li_info +
    ' >Select the <span class="mark">Dataset Grid </span> inspector tab and you see a grid with the data used to populate the cards.</li></ul> ');
  AppendContent(1, '</li>');
  { card group }
  AppendContent(1,
    '<li>Form Navigation - Next you will inspect form to see how the videos are displayed using a cards. Each card is a frame instance populated from <span class="mark">cdsVideos</span>. </li>');
  AppendContent(1, '<ul class="list-group "><li ' + li_info +
    ' >Using the structure view, expand <span class="mark">frmMarshalExercise</span>, expand <span class="mark">divTheme</span>, expand <span class="mark">divBody</span> and select <span class="mark">wdivVideoCards</span>.</li> ');
  AppendContent(1, '<li ' + li_info +
    ' >Inspect the property <span class="mark">ElementClassName</span> , it is set to <span class="mark">row</span> from bootstrap. This is the row for the cards.</li> ');
  AppendContent(1, '<li ' + li_warn +
    ' >The cards are Delphi frames created in a div tag to be the columns. The loop is based on the data in <span class="mark">cdsVideos</span> .</li></ul> ');
  AppendContent(1, '</li>');
  { frames }
  AppendContent(1,
    '<li>Row Inspection - Expand <span class="mark">wdivVideoCards</span> in the structure view and you will see the 3 THTMLDiv components that create the columns for the cards and control the width. </li>');
  AppendContent(1, '<ul class="list-group "><li ' + li_info +
    ' >Select the <span class="mark">DivComp0</span> and use Object Plus to inspect the <span class="mark">ElementClassName</span>, it is set to <span class="mark">col-sm-5</span> to control the column width. </li> ');
  AppendContent(1, '<li ' + li_alert +
    ' >Each div is set to a different column with to allow you to correct it with Marshal. The div components are created at runtime, you can validate the <span class="mark">ChildOrder</span> property to identify the div. I assign a name only for this exercise. </li> ');
  AppendContent(1, '<li ' + li_warn +
    ' >Expand the frame to explore how the card is built with a header, body and footer poistioned using <span class="mark">ChildOrder</span> .</li></ul> ');
  AppendContent(1, '</li>');

  { Grid }
  AppendContent(1,
    '<li>Column Fix - The cards are horizontal based on a row with 3 grid columns of different sizes configured on the <span class="mark">DivComp#</span> component using the <span class="mark">ElementClassName</span> setting ex. <span class="mark">col-sm-#</span>. </li>');
  AppendContent(1, '<ul class="list-group "><li ' + li_warn +
    ' >The cards should be equal size, so the total of the columns must equal 12 to fill the row. Adjust the columns using Marshal to see the changes.</li> ');
  AppendContent(1, '<li ' + li_info +
    ' >Select <span class="mark">DivComp0</span> and use Object Plus to modify the <span class="mark">ElementClassName</span> property to <span class="mark">col-sm-4</span>. </li> ');
  AppendContent(1, '<li ' + li_info +
    ' >Select <span class="mark">DivComp2</span> and use Object Plus to modify the <span class="mark">ElementClassName</span> property to <span class="mark">col-sm-4</span>. </li> ');
  AppendContent(1, '<li ' + li_warn +
    ' ><span class="mark">DivComp1</span> is already set to <span class="mark">col-sm-4</span> due to the math applied in the source code  .</li></ul> ');

  AppendContent(1, '</ul> </li>');
  { Review }
  AppendContent(1,
    '<li>Session Review - Marshal records changes in the session.  View the session using the <span class="mark">Show Session</span> button above the structure View.</li>');
  AppendContent(1, '<ul class="list-group "><li ' + li_info +
    ' >The session contains the application info report and object modification details. Object plus records property modifications in the session.</li> ');
  AppendContent(1, '<li ' + li_info +
    ' >Review the object modification events which capture the <span class="mark">path</span> of the component, the <span class="mark">property</span> changed, <span class="mark">before value</span> and <span class="mark">after value</span>. </li> ');
  AppendContent(1, '<li ' + li_alert +
    ' >Currently the Web Core implmentation does not support screen capture, it will be in a future release. </li> ');
  AppendContent(1, '</ul> </li>');
  AppendContent(1, '</ol>');
  sect.Expanded := true;

end;

procedure TfrmMarshalExercise.LoadBlogVideos;
var
  fVideoCard: TfrmCardBlogRef;
  i: integer;
  fdiv: TWebHTMLDiv;

begin
  dmMarshalDemo.cdsVideos.first;
  i := 0;
  while not dmMarshalDemo.cdsVideos.EOF do
  begin
    try
      fdiv := TWebHTMLDiv.Create(self);
      fdiv.ChildOrder := i;
      fdiv.Parent := wdivVideoCards;
      fdiv.ElementPosition := epRelative;
      fdiv.HeightStyle := ssAuto;
      fdiv.WidthStyle := ssAuto;
      fdiv.ElementClassName := 'col-sm-' + (5 - i).ToString;
      fdiv.Name := 'DivComp'+i.tostring;
      fVideoCard := TfrmCardBlogRef.Create(self);
      fVideoCard.Align := alClient;
      fVideoCard.Parent := fdiv; // wdivVideoCards;
      fVideoCard.ElementClassName := 'card bg-info';
      fVideoCard.ElementPosition := epRelative;
      fVideoCard.HeightStyle := ssAuto;
      fVideoCard.WidthStyle := ssAuto;
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

procedure TfrmMarshalExercise.WebFormCreate(Sender: TObject);
begin
  LoadBlogVideos;
  LoadNotesAccordion;
end;

end.
