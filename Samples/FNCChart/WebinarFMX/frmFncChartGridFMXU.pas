unit frmFncChartGridFMXU;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, Data.DB, FMX.TMSFNCTypes, FMX.TMSFNCUtils,
  FMX.TMSFNCGraphics, FMX.TMSFNCGraphicsTypes, FMX.TMSFNCChart, FMX.TMSFNCCustomComponent,
  FMX.TMSFNCChartDatabaseAdapter, FMX.TMSFNCGridCell, FMX.TMSFNCGridOptions, FMX.TMSFNCCustomGrid,
  FMX.TMSFNCGridDatabaseAdapter, FMX.TMSFNCCustomControl, FMX.TMSFNCCustomScrollControl, FMX.TMSFNCGridData,
  FMX.TMSFNCGrid, FMX.Layouts;

type
  TfrmChartSalesFMX = class(TForm)
    dsSalesBarChart: TDataSource;
    dsSalesGrid: TDataSource;
    dsSalesPie: TDataSource;
    TMSFNCStackedBarChart1: TTMSFNCStackedBarChart;
    TMSFNCChartDatabaseAdapter1: TTMSFNCChartDatabaseAdapter;
    GridPanelLayout1: TGridPanelLayout;
    TMSFNCPieChart1: TTMSFNCPieChart;
    TMSFNCGrid1: TTMSFNCGrid;
    TMSFNCGridDatabaseAdapter1: TTMSFNCGridDatabaseAdapter;
    TMSFNCChartDatabaseAdapter2: TTMSFNCChartDatabaseAdapter;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmChartSalesFMX: TfrmChartSalesFMX;

implementation

uses dmChartWebinar;

{$R *.fmx}

procedure TfrmChartSalesFMX.FormCreate(Sender: TObject);
begin
        TMSFNCGridDatabaseAdapter1.Active := true;
        TMSFNCChartDatabaseAdapter1.Active := true;
                TMSFNCChartDatabaseAdapter2.Active := true;
end;

end.
