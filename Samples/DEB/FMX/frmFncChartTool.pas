unit frmFncChartTool;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls, FMX.TMSFNCCustomComponent,
  FMX.TMSFNCChartEditor, FMX.Controls.Presentation, FMX.TMSFNCChart;

type
  TFrameFNCChartTool = class(TFrame)
    btnShowChartEditor: TButton;
    TMSFNCChartEditorDialog1: TTMSFNCChartEditorDialog;
    procedure btnShowChartEditorClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure AssignChartToEditor(AChart: TTMSFNCChart);
  end;

implementation

{$R *.fmx}

procedure TFrameFNCChartTool.AssignChartToEditor(AChart: TTMSFNCChart);
begin
  TMSFNCChartEditorDialog1.Chart := AChart;
end;

procedure TFrameFNCChartTool.btnShowChartEditorClick(Sender: TObject);
begin
  TMSFNCChartEditorDialog1.Execute;
end;

end.
