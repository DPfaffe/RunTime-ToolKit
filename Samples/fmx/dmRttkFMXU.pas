unit dmRttkFMXU;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteWrapper.Stat, FireDAC.FMXUI.Wait, Data.DB, FireDAC.Comp.Client, FireDAC.Comp.DataSet, FireDAC.DApt,
  FireDAC.Phys.SQLiteWrapper, Datasnap.DBClient;

type
  TdmRTTK = class(TDataModule)
    FDMemTable: TFDMemTable;
    FDConnection: TFDConnection;
    FDQuerySales: TFDQuery;
    FDQuerySalesyear: TIntegerField;
    FDQuerySalesmonth: TIntegerField;
    FDSQLiteFunctionXmY: TFDSQLiteFunction;
    FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink;
    ClientDataSetSalesInfo: TClientDataSet;
    FDQuerySalesIndexed: TFDQuery;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    procedure FDConnectionAfterConnect(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
    procedure FDSQLiteFunctionXmYCalculate(AFunc: TSQLiteFunctionInstance; AInputs: TSQLiteInputs; AOutput: TSQLiteOutput;
      var AUserData: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    FQuery:TFDQuery;
    procedure CopyDataSet;
  public
    { Public declarations }
  end;

var
  dmRTTK: TdmRTTK;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}
{$R *.dfm}

procedure TdmRTTK.CopyDataSet;
begin
    FQuery:=TFDQuery.Create(self);
    FQuery.Connection := FDConnection;
    FQuery.Open('Select * from SalesInfo');
    FDMemTable.CopyDataSet(FQuery, [coStructure, coRestart, coAppend]);
end;

procedure TdmRTTK.DataModuleCreate(Sender: TObject);
begin
  FDConnection.Open();
  CopyDataSet;
end;

procedure TdmRTTK.DataModuleDestroy(Sender: TObject);
begin
FDConnection.Close;
end;

{ schema objects from https://www.sqlitetutorial.net/sqlite-window-functions/sqlite-window-frame/ }
procedure TdmRTTK.FDConnectionAfterConnect(Sender: TObject);
begin
  FDConnection.ExecSQL
    ('CREATE TABLE SalesInfo (year INT NOT NULL, month INT NOT NULL, amount NUMERIC(10,2), PRIMARY KEY(year,month));');
  FDConnection.ExecSQL
    ('INSERT INTO SalesInfo(year,month,amount) VALUES(2018,1,100), (2018,2,120), (2018,3,120), (2018,4,110), (2018,5,130), (2018,6,140), (2018,7,150), (2018,8,120), (2018,9,110), (2018,10,150),(2018,11,170), (2018,12,200);');
  FDConnection.ExecSQL
    ('CREATE VIEW [Sales running total] as SELECT month, amount, SUM(amount) OVER (ORDER BY month) RunningTotal FROM SalesInfo;');
  FDConnection.ExecSQL
    ('CREATE VIEW [Sales_moving_average] as SELECT month, amount, AVG(amount) OVER (ORDER BY month ROWS BETWEEN 1 PRECEDING AND 1 FOLLOWING ) SalesMovingAverage FROM SalesInfo;');
end;

procedure TdmRTTK.FDSQLiteFunctionXmYCalculate(AFunc: TSQLiteFunctionInstance; AInputs: TSQLiteInputs;
  AOutput: TSQLiteOutput; var AUserData: TObject);
begin
 AOutput.AsInteger := AInputs[0].AsInteger * AInputs[1].AsInteger;
end;

end.
