unit frmFramedVCLU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, frmSubFramedVCLU;

type
  TFramedVCL = class(TFrame)
    Button1: TButton;
    Label1: TLabel;
    GridPanel1: TGridPanel;
    FrameSubFramedVCL1: TFrameSubFramedVCL;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
