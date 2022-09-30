unit frmFncChartGridVCLUMarshalButton;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,frmFncChartGridVCLU, VCL.SE.RTTK.DT.Marshal;

type
  TfrmFncChartMarshalButton = class(TfrmChartSalesVCL)
    SERTTKMarshal1: TSERTTKMarshal;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFncChartMarshalButton: TfrmFncChartMarshalButton;

implementation

{$R *.dfm}
uses Vcl.RTTK.PT.FNCChartTool;

end.
