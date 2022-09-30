unit frmFncChartGridFMXU;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, Data.DB, FMX.TMSFNCTypes, FMX.TMSFNCUtils,
  FMX.TMSFNCGraphics, FMX.TMSFNCGraphicsTypes, FMX.TMSFNCChart, FMX.TMSFNCCustomComponent,
  FMX.TMSFNCChartDatabaseAdapter, FMX.TMSFNCGridCell, FMX.TMSFNCGridOptions, FMX.TMSFNCCustomGrid,
  FMX.TMSFNCGridDatabaseAdapter, FMX.TMSFNCCustomControl, FMX.TMSFNCCustomScrollControl, FMX.TMSFNCGridData,
  FMX.TMSFNCGrid, FMX.Layouts, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs, FireDAC.Phys.SQLiteWrapper.Stat, FireDAC.FMXUI.Wait,
  FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.DApt;

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
    FDConnection: TFDConnection;
    FDMemTableSalesGrid: TFDMemTable;
    fdqSalesPie: TFDQuery;
    fdqSalesPieyear: TIntegerField;
    fdqSalesPieSales: TIntegerField;
    fdqSalesChart: TFDQuery;
    fdqSalesChartmonth: TIntegerField;
    fdqSalesChartSA2018: TBCDField;
    fdqSalesChartSA2019: TBCDField;
    fdqSalesChartSA2020: TBCDField;
    fdqSalesChartmdisp: TStringField;
    FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink;
    procedure FormCreate(Sender: TObject);
    procedure FDConnectionAfterConnect(Sender: TObject);
  private
    FQuery: TFDQuery;
    procedure CopyDataSet;
    procedure DataAppend2019;
    procedure DataAppend2020;
  public
    { Public declarations }
  end;

var
  frmChartSalesFMX: TfrmChartSalesFMX;

implementation


{$R *.fmx}

procedure TfrmChartSalesFMX.CopyDataSet;
begin
  FQuery := TFDQuery.Create(self);
  FQuery.Connection := FDConnection;
  FQuery.Open('Select * from SalesInfo');
  DataAppend2019;
  fdqSalesChart.Active := true;     //THIS LINE NEEDS TO MOVE AFTER APPEND 2020
  DataAppend2020;
  FDMemTableSalesGrid.CopyDataSet(FQuery, [coStructure, coRestart, coAppend]);
  FDQSalesPie.Active := true;
end;

procedure TfrmChartSalesFMX.DataAppend2019;
var
  i: integer;
begin
  for i := 1 to 12 do
  begin
    FQuery.Append;
    FQuery.Fields[0].AsInteger := 2019;
    FQuery.Fields[1].AsInteger := i;
    FQuery.Fields[2].AsInteger := i * 125;
    FQuery.Post;
  end;
end;

procedure TfrmChartSalesFMX.DataAppend2020;
var
  i: integer;
begin
  for i := 1 to 12 do
  begin
    FQuery.Append;
    FQuery.Fields[0].AsInteger := 2020;
    FQuery.Fields[1].AsInteger := i;
    FQuery.Fields[2].AsInteger := i * 150;
    FQuery.Post;
  end;
end;

procedure TfrmChartSalesFMX.FDConnectionAfterConnect(Sender: TObject);
begin
 FDConnection.ExecSQL
    ('CREATE TABLE Chart_Months (Month INT NOT NULL, DisplayName Varchar);');
  FDConnection.ExecSQL
    ('INSERT INTO Chart_Months(Month, DisplayName) VALUES(1, ''Jan''), (2, ''Feb''), (3, ''Mar''), (4, ''Apr''), (5, ''May''), (6, ''Jun''), (7, ''Jul''), (8, ''Aug''), (9, ''Sept''), (10, ''Oct''), (11, ''Nov''), (12, ''Dec'');');
  FDConnection.ExecSQL
    ('CREATE TABLE SalesInfo (year INT NOT NULL, month INT NOT NULL, amount NUMERIC(10,2), PRIMARY KEY(year,month));');
  FDConnection.ExecSQL
    ('INSERT INTO SalesInfo(year,month,amount) VALUES(2018,1,100), (2018,2,120), (2018,3,120), (2018,4,110), (2018,5,130), (2018,6,140), (2018,7,150), (2018,8,120), (2018,9,110), (2018,10,150),(2018,11,170), (2018,12,200);');
  FDConnection.ExecSQL
    ('CREATE VIEW [Sales running total] as SELECT month, amount, SUM(amount) OVER (ORDER BY month) RunningTotal FROM SalesInfo;');
  FDConnection.ExecSQL
    ('CREATE VIEW [Sales_moving_average] as SELECT month, amount, AVG(amount) OVER (ORDER BY month ROWS BETWEEN 1 PRECEDING AND 1 FOLLOWING ) SalesMovingAverage FROM SalesInfo;');
  FDConnection.ExecSQL('CREATE VIEW [Sales_2018] as SELECT month, amount, year FROM SalesInfo where year = 2018;');
  FDConnection.ExecSQL('CREATE VIEW [Sales_2019] as SELECT month, amount, year FROM SalesInfo where year = 2019;');
  FDConnection.ExecSQL('CREATE VIEW [Sales_2020] as SELECT month, amount, year FROM SalesInfo where year = 2020;');
  FDConnection.ExecSQL
    ('CREATE VIEW [Sales_Chart] as  Select m.month, m.displayName as mdisp, s1.amount as SA2018, s2.amount as SA2019, s3.amount as SA2020 from Chart_Months m left join '
    +' sales_2018 s1 on m.month = s1.month left join sales_2019 s2 on m.month = s2.month left join sales_2020 s3 on m.month = s3.month;');

end;

procedure TfrmChartSalesFMX.FormCreate(Sender: TObject);
begin
  FDConnection.Open();
  CopyDataSet;
  TMSFNCGridDatabaseAdapter1.Active := true;
  TMSFNCChartDatabaseAdapter1.Active := true;
  TMSFNCChartDatabaseAdapter2.Active := true;
end;

end.
