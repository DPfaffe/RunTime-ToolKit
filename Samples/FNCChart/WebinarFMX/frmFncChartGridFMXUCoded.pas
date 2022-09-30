unit frmFncChartGridFMXUCoded;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, frmFncChartGridFMXU, FMX.Controls.Presentation,
  FMX.StdCtrls;

type
  TfrmFmxMarshalCodedOptions = class(TfrmChartSalesFMX)
    Label1: TLabel;
    Label2: TLabel;
    procedure Label1Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFmxMarshalCodedOptions: TfrmFmxMarshalCodedOptions;

implementation

uses FMX.RTTK.PT.FNCChartTool,
  FMX.SE.RTTK.Marshal,
  FMX.SERTTK.MarshalCV;

{$R *.fmx}

procedure TfrmFmxMarshalCodedOptions.Label1Click(Sender: TObject);
begin
  TSERTTKMarshalAPI.ShowMarshal;
end;

procedure TfrmFmxMarshalCodedOptions.Label2Click(Sender: TObject);
var
  lMarshalOptions: TSERTTKMarshalOptions;
begin
  lMarshalOptions := TSERTTKMarshalOptions.Create(true);
  lMarshalOptions.FormWidth := 1024;
  lMarshalOptions.FormHeight := 720;
  TSERTTKMarshalAPI.ShowMarshal(lMarshalOptions);

end;

end.
