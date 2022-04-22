unit frmRttkVCLU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.SE.RTTK.DT.Marshal, Vcl.Buttons;

type
  TfrmRTTKVCL = class(TForm)
    pnlTop: TPanel;
    pnlFoxLabel: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    pcWorkSpace: TPageControl;
    tsLabel: TTabSheet;
    tsIfDef: TTabSheet;
    btnMarshal: TButton;
    Label2: TLabel;
    Panel1: TPanel;
    ListBox1: TListBox;
    SERTTKMarshal1: TSERTTKMarshal;
    tsRunTimeComp: TTabSheet;
    Panel2: TPanel;
    memoRTCompFooter: TMemo;
    btnAddMemo: TButton;
    btnDeleteMemo: TSpeedButton;
    procedure btnMarshalClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnAddMemoClick(Sender: TObject);
    procedure btnDeleteMemoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    FRuntimeMemo: TMemo;
  public
    { Public declarations }
  end;

var
  frmRTTKVCL: TfrmRTTKVCL;

implementation

{$R *.dfm}
{$IFDEF DEBUG}

uses Vcl.SE.RTTK.Marshal;
{$ENDIF}

procedure TfrmRTTKVCL.btnAddMemoClick(Sender: TObject);
var
  s: string;
begin
  FRuntimeMemo := TMemo.Create(self);
  FRuntimeMemo.Parent := tsRunTimeComp;
  FRuntimeMemo.Align := TAlign.alClient;
  for s in memoRTCompFooter.Lines do
    FRuntimeMemo.Lines.Add('Copy of : ' + s);
  btnDeleteMemo.Enabled := true;
end;

procedure TfrmRTTKVCL.btnDeleteMemoClick(Sender: TObject);
begin
  if Assigned(FRuntimeMemo) then
    FRuntimeMemo.Free;
  btnDeleteMemo.Enabled := false;
end;

procedure TfrmRTTKVCL.btnMarshalClick(Sender: TObject);
begin
{$IFDEF DEBUG}
  TSERTTKWorker.ShowMarshal;
{$ENDIF}
end;

procedure TfrmRTTKVCL.FormActivate(Sender: TObject);
begin
{$IFNDEF DEBUG}
  btnMarshal.Caption := 'Disabled in Release';
  btnMarshal.Enabled := false;
{$ENDIF}
end;

procedure TfrmRTTKVCL.FormCreate(Sender: TObject);
begin
  pcWorkSpace.ActivePage := tsLabel;
  btnDeleteMemo.Enabled := false;
end;

procedure TfrmRTTKVCL.FormDestroy(Sender: TObject);
begin
  OutputDebugString('VCL form destroyed');
end;

end.
