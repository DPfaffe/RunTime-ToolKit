unit frmFncChartGridFMXUCoded;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, frmFncChartGridFMXU, FMX.Controls.Presentation,
  FMX.StdCtrls, FMX.TMSFNCTypes, FMX.TMSFNCUtils, FMX.TMSFNCGraphics, FMX.TMSFNCGraphicsTypes, FMX.TMSFNCCustomControl,
  FMX.TMSFNCHTMLText;

type
  TfrmFmxMarshalCodedOptions = class(TfrmChartSalesFMX)
    Label1: TLabel;
    Label2: TLabel;
    procedure Label1Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
  private
    function ClickCountShow(AChart: TFMXObject): boolean;
  public
    procedure PieLegendClick(Sender: TObject); override;
    procedure StackLegendClick(Sender: TObject); override;
  end;

var
  frmFmxMarshalCodedOptions: TfrmFmxMarshalCodedOptions;

implementation

uses FMX.RTTK.PT.FNCChartTool,
  FMX.SE.RTTK.Marshal,
  FMX.SERTTK.MarshalCV;

const
  marshal_show_clicks = 2;
{$R *.fmx}

/// <summary>
///   Click counter to prevent opening Marshal on the first click.
/// </summary>
/// <remarks>
///   This allows you to hide Marshal functionality unless you know the right click count
/// </remarks>
function TfrmFmxMarshalCodedOptions.ClickCountShow(AChart: TFMXObject): boolean;
begin
  result := AChart.Tag = marshal_show_clicks;
  if result then
    AChart.Tag := 0
  else
    AChart.Tag := AChart.Tag + 1;
end;

procedure TfrmFmxMarshalCodedOptions.Label1Click(Sender: TObject);
begin
  if ClickCountShow(TFMXObject(Sender)) then
    TSERTTKMarshalAPI.ShowMarshal;
end;

procedure TfrmFmxMarshalCodedOptions.Label2Click(Sender: TObject);
var
  lMarshalOptions: TSERTTKMarshalOptions;
begin
  if ClickCountShow(TFMXObject(Sender)) then
  begin
    lMarshalOptions := TSERTTKMarshalOptions.Create(true);
    lMarshalOptions.FormWidth := 1024;
    lMarshalOptions.FormHeight := 720;
    TSERTTKMarshalAPI.ShowMarshal(lMarshalOptions);
  end;
end;

procedure TfrmFmxMarshalCodedOptions.PieLegendClick(Sender: TObject);
var
  lMarshalOptions: TSERTTKMarshalOptions;
begin
  if ClickCountShow(TFMXObject(Sender)) then
  begin
    lMarshalOptions := TSERTTKMarshalOptions.Create(true);
    lMarshalOptions.FormWidth := 1024;
    lMarshalOptions.FormHeight := 720;
    TSERTTKMarshalAPI.ShowMarshal(lMarshalOptions);
  end;
  inherited;
end;

procedure TfrmFmxMarshalCodedOptions.StackLegendClick(Sender: TObject);
begin
  if ClickCountShow(TFMXObject(Sender)) then
    TSERTTKMarshalAPI.ShowMarshal;
  inherited;
end;

end.
