unit frmFncChartGridVCLUAppInspector;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,frmFncChartGridVCLU, VCL.SE.RTTK.DT.Marshal;

type
  TfrmVCLChartAppInspector = class(TfrmChartSalesVCL)
    SERTTKAppInspectorVCL1: TSERTTKAppInspectorVCL;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVCLChartAppInspector: TfrmVCLChartAppInspector;

implementation

{$R *.dfm}
uses Vcl.RTTK.PT.FNCChartTool;

end.
