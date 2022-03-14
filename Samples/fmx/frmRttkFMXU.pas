unit frmRttkFMXU;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.ListBox, FMX.Edit, FMX.Controls.Presentation, FMX.StdCtrls, FMX.TabControl,
  FMX.Objects, FMX.SE.RTTK.DT.Marshal, System.DateUtils, FMX.Memo.Types, FMX.ScrollBox, FMX.Memo;

type
  TfrmRTTKFMX = class(TForm)
    lytTools: TLayout;
    Label1: TLabel;
    Edit1: TEdit;
    tcWorkSpace: TTabControl;
    tiLabel: TTabItem;
    tiIfDef: TTabItem;
    CalloutRectangle1: TCalloutRectangle;
    lblAppHelp: TLabel;
    btnMarshal: TButton;
    ListBox1: TListBox;
    ListBoxItem1: TListBoxItem;
    ListBoxItem2: TListBoxItem;
    ListBoxGroupHeader1: TListBoxGroupHeader;
    ListBoxGroupHeader2: TListBoxGroupHeader;
    ListBoxGroupFooter1: TListBoxGroupFooter;
    ListBoxGroupFooter2: TListBoxGroupFooter;
    SERTTKMarshal1: TSERTTKMarshal;
    tiRunTimeComp: TTabItem;
    pnlRTCompButtons: TPanel;
    btnAddMemo: TCornerButton;
    btnDeleteMemo: TSpeedButton;
    memoRTCompFooter: TMemo;
    procedure btnMarshalClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure lblAppHelpClick(Sender: TObject);
    procedure btnAddMemoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnDeleteMemoClick(Sender: TObject);
  private
    FRuntimeMemo: TMemo;
  public
    { Public declarations }
  end;

var
  frmRTTKFMX: TfrmRTTKFMX;

implementation

{$R *.fmx}

// {$IFDEF DEBUG}
uses FMX.SE.RTTK.Marshal;
// {$ENDIF}

procedure TfrmRTTKFMX.btnMarshalClick(Sender: TObject);
begin
{$IFDEF DEBUG}
  TSERTTKWorker.ShowMarshal;
{$ENDIF}
end;

procedure TfrmRTTKFMX.FormActivate(Sender: TObject);
begin
{$IFNDEF DEBUG}
  btnMarshal.Text := 'Disabled in Release';
{$ENDIF}
end;

procedure TfrmRTTKFMX.FormCreate(Sender: TObject);
begin
  btnDeleteMemo.Enabled := false;
  tcWorkSpace.ActiveTab := tiLabel;
end;

procedure TfrmRTTKFMX.lblAppHelpClick(Sender: TObject);
begin
  if lblAppHelp.Tag = 0 then
  begin
    lblAppHelp.TagString := DateTimeToStr(Now);
    lblAppHelp.Tag := 1;
  end
  else if (lblAppHelp.Tag = 1) and (SecondsBetween(Now, StrToDateTime(lblAppHelp.TagString)) < 5) then
  begin
    lblAppHelp.TagString := DateTimeToStr(Now);
    lblAppHelp.Tag := 2;
  end
  else if (lblAppHelp.Tag = 2) and (SecondsBetween(Now, StrToDateTime(lblAppHelp.TagString)) < 5) then
  begin
    TSERTTKWorker.ShowMarshal;
    lblAppHelp.Tag := 0;
    lblAppHelp.TagString := '';
  end
  else
  begin
    lblAppHelp.Tag := 0;
    lblAppHelp.TagString := '';
  end;
end;

procedure TfrmRTTKFMX.btnDeleteMemoClick(Sender: TObject);
begin
  if Assigned(FRuntimeMemo) then
    FRuntimeMemo.Free;
  btnDeleteMemo.Enabled := false;
end;

procedure TfrmRTTKFMX.btnAddMemoClick(Sender: TObject);
var
  s: string;
begin
  FRuntimeMemo := TMemo.Create(self);
  FRuntimeMemo.Parent := tiRunTimeComp;
  FRuntimeMemo.Align := TAlignLayout.Client;
  for s in memoRTCompFooter.Lines do
    FRuntimeMemo.Lines.Add('Copy of : ' + s);
  btnDeleteMemo.Enabled := true;
end;

end.
