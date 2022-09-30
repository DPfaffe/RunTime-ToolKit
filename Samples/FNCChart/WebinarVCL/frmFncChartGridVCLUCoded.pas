unit frmFncChartGridVCLUCoded;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frmFncChartGridVCLU, Vcl.StdCtrls;

type
  TfrmVCLMarshalCodedOptions = class(TfrmChartSalesVCL)
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    procedure Label1Click(Sender: TObject);
    procedure StaticText1Click(Sender: TObject);
    procedure StaticText2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVCLMarshalCodedOptions: TfrmVCLMarshalCodedOptions;

implementation

{$R *.dfm}

uses Vcl.RTTK.PT.FNCChartTool,
  Vcl.SE.RTTK.Marshal,
  Vcl.SERTTK.MarshalCV;

procedure TfrmVCLMarshalCodedOptions.Label1Click(Sender: TObject);
begin
  TSERTTKMarshalAPI.ShowMarshal;
end;

procedure TfrmVCLMarshalCodedOptions.StaticText1Click(Sender: TObject);
begin
  TSERTTKMarshalAPI.ShowMarshal;
end;

procedure TfrmVCLMarshalCodedOptions.StaticText2Click(Sender: TObject);
var
  lMarshalOptions: TSERTTKMarshalOptions;
begin
  lMarshalOptions := TSERTTKMarshalOptions.Create(true);
  lMarshalOptions.FormWidth := 1024;
  lMarshalOptions.FormHeight := 720;
  TSERTTKMarshalAPI.ShowMarshal(lMarshalOptions);
end;

end.
