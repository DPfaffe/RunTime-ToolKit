unit frmFramedFMXU;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls, FMX.Controls.Presentation, FMX.Edit,
  FMX.Layouts, frmSubFramedFMXU;

type
  TFramedFMX = class(TFrame)
    GridPanelLayout1: TGridPanelLayout;
    Edit1: TEdit;
    Button1: TButton;
    FrameSubFramedFXM1: TFrameSubFramedFXM;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.fmx}

end.
