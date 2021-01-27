unit frmRttkVCLU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.SE.RTTK.DT.Marshal;

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
    procedure btnMarshalClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
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

procedure TfrmRTTKVCL.btnMarshalClick(Sender: TObject);
begin
{$IFDEF DEBUG}
  TSERTTKWorker.ShowMarshal;
{$ENDIF}
end;

procedure TfrmRTTKVCL.FormActivate(Sender: TObject);
begin
  pcWorkSpace.ActivePage := tsLabel;
end;

end.
