unit frmSubFramedFMXU;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls, FMX.Edit, FMX.Controls.Presentation,
  FMX.Layouts;

type
  TFrameSubFramedFXM = class(TFrame)
    GridPanelLayout1: TGridPanelLayout;
    Label1: TLabel;
    Button1: TButton;
    Edit1: TEdit;
    CheckBox1: TCheckBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.fmx}

end.
