unit ChartOptimization;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.TMSFNCTypes, Vcl.TMSFNCUtils, Vcl.TMSFNCGraphics, Vcl.TMSFNCGraphicsTypes,
  Vcl.ExtCtrls, Vcl.TMSFNCChart, Vcl.TMSFNCGridCell, Vcl.TMSFNCGridOptions, Vcl.TMSFNCCustomControl,
  Vcl.TMSFNCCustomScrollControl, Vcl.TMSFNCGridData, Vcl.TMSFNCCustomGrid, Vcl.TMSFNCGrid, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.TMSFNCCustomComponent,
  Vcl.TMSFNCChartDatabaseAdapter, FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys,
  FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs, FireDAC.Phys.SQLiteWrapper.Stat,
  FireDAC.VCLUI.Wait, Vcl.TMSFNCGridDatabaseAdapter, FireDAC.Phys.SQLiteWrapper;

type
  TfrmChartOptimization = class(TForm)
    TMSFNCChart1: TTMSFNCChart;
    Splitter1: TSplitter;
    TMSFNCGrid1: TTMSFNCGrid;
    TMSFNCChartDatabaseAdapter1: TTMSFNCChartDatabaseAdapter;
    FDQuiz: TFDQuery;
    DataSource1: TDataSource;
    FDConnection: TFDConnection;
    TMSFNCGridDatabaseAdapter1: TTMSFNCGridDatabaseAdapter;
    FDSQLiteFunction1: TFDSQLiteFunction;
    FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink;
    FDQuizMultiplier: TIntegerField;
    FDQuizThrees: TLargeintField;
    FDQuizSevens: TLargeintField;
    procedure FormCreate(Sender: TObject);
    procedure FDConnectionAfterConnect(Sender: TObject);
    procedure FDSQLiteFunction1Calculate(AFunc: TSQLiteFunctionInstance; AInputs: TSQLiteInputs; AOutput: TSQLiteOutput;
      var AUserData: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmChartOptimization: TfrmChartOptimization;

implementation

{$R *.dfm}

uses Vcl.RTTK.PT.FNCChartTool, Vcl.SE.RTTK.Marshal, Vcl.SERTTK.MarshalCV;

procedure TfrmChartOptimization.FDConnectionAfterConnect(Sender: TObject);
begin
  FDConnection.ExecSQL
    ('CREATE TABLE Multiply_Limit (Multiplier INT NOT NULL);');
  FDConnection.ExecSQL
    ('INSERT INTO Multiply_Limit(Multiplier) VALUES(1), (2), (3), (4), (5), (6), (7), (8), (9), (10), (11), (12);');
  FDConnection.ExecSQL
    ('CREATE VIEW [Multiply_Threes] as select Multiplier, XmY( Multiplier, 3) as Threes from Multiply_Limit;');
  FDConnection.ExecSQL
    ('CREATE VIEW [Multiply_Sevens] as select Multiplier, XmY( Multiplier, 7) as Sevens from Multiply_Limit;');
  FDConnection.ExecSQL
    ('CREATE VIEW [Multiply_Quiz] as  Select m3.Multiplier, m3.Threes, m7.Sevens from multiply_threes m3 inner join multiply_sevens m7 on m3.Multiplier = m7.Multiplier;');


end;

procedure TfrmChartOptimization.FDSQLiteFunction1Calculate(AFunc: TSQLiteFunctionInstance; AInputs: TSQLiteInputs;
  AOutput: TSQLiteOutput; var AUserData: TObject);
begin
AOutput.AsInteger := AInputs[0].AsInteger * AInputs[1].AsInteger;
end;

procedure TfrmChartOptimization.FormCreate(Sender: TObject);
var
  lMarshalOptions: TSERTTKMarshalOptions;
begin
  //open FDConnection
  FDConnection.Open;
  FDQuiz.Active := true;
  TMSFNCGridDatabaseAdapter1.Active := true;
  TMSFNCChartDatabaseAdapter1.Active := true;

  lMarshalOptions := TSERTTKMarshalOptions.Create(true);
  TSERTTKMarshalAPI.ShowMarshal(lMarshalOptions);
  lMarshalOptions.Free;
end;

end.
