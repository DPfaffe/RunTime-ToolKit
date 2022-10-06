unit frmFncChartGridVCLUCoded;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frmFncChartGridVCLU, Vcl.StdCtrls;

type
  TfrmVCLMarshalCodedOptions = class(TfrmChartSalesVCL)
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    procedure StaticText1Click(Sender: TObject);
    procedure StaticText2Click(Sender: TObject);
  private
    function ClickCountShow(AChart: TControl): boolean;
  public
    { Public declarations }
  end;

var
  frmVCLMarshalCodedOptions: TfrmVCLMarshalCodedOptions;

implementation

{$R *.dfm}

uses
  Vcl.SE.RTTK.Marshal, // Required for Marshal
  Vcl.RTTK.PT.FNCChartTool, // only needed if using FNC Chart
  Vcl.SERTTK.MarshalCV; // only needed for Marshal options

const
  marshal_show_clicks = 2;

  /// <summary>
  /// Click counter to prevent opening Marshal on the first click.
  /// </summary>
  /// <remarks>
  /// This allows you to hide Marshal functionality unless you know the right click count
  /// </remarks>
function TfrmVCLMarshalCodedOptions.ClickCountShow(AChart: TControl): boolean;
begin
  result := AChart.Tag = marshal_show_clicks;
  if result then
    AChart.Tag := 0
  else
    AChart.Tag := AChart.Tag + 1;
end;

procedure TfrmVCLMarshalCodedOptions.StaticText1Click(Sender: TObject);
begin
  if ClickCountShow(TControl(Sender)) then
    TSERTTKMarshalAPI.ShowMarshal;
end;

/// <summary>
/// Shows Marshal with custom optoins if the click count is met
/// </summary>
/// <remarks>
/// Hidden for chart demo, shown as an option if no other control is availalbe.
/// </remarks>
procedure TfrmVCLMarshalCodedOptions.StaticText2Click(Sender: TObject);
var
  lMarshalOptions: TSERTTKMarshalOptions;
begin
  if ClickCountShow(TControl(Sender)) then
  begin
    lMarshalOptions := TSERTTKMarshalOptions.Create(true);
    lMarshalOptions.FormWidth := 1024;
    lMarshalOptions.FormHeight := 720;
    TSERTTKMarshalAPI.ShowMarshal(lMarshalOptions);
  end;
end;

end.
