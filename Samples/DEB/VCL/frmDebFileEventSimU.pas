unit frmDebFileEventSimU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, EventBus, MsgEventsU,
  Generics.Collections, ThreadProcStats, ThreadFSPollFolder, ThreadItemWorker, Vcl.TMSFNCTypes, Vcl.TMSFNCUtils,
  Vcl.TMSFNCGraphics, Vcl.TMSFNCGraphicsTypes, Vcl.TMSFNCCustomControl, Vcl.TMSFNCListBox, Vcl.ExtCtrls,
  Vcl.TMSFNCChart, VCL.TMSFNCCustomGroup, VCL.TMSFNCCheckGroup, Vcl.StdCtrls, VCL.TMSFNCCustomComponent,
  VCL.TMSFNCChartEditor, VCL.TMSFNCStatusBar;

const
  nm_ghqueue_hdr = 'Queue Files';
  nm_gfqueue_hdr = 'Queue Count=';
  nm_ghfound_hdr = 'Found=';
  nm_ghprocessed_hdr = 'Processed=';

type
  TfrmDebFileEvents = class(TForm)
    lbFiles: TTMSFNCListBox;
    chart: TTMSFNCChart;
    Panel1: TPanel;
    cgControls: TTMSFNCCheckGroup;
    TMSFNCChartEditorDialog1: TTMSFNCChartEditorDialog;
    Button1: TButton;
    TMSFNCStatusBar1: TTMSFNCStatusBar;
    procedure FormCreate(Sender: TObject);
    procedure cgControlsCheckBoxClick(Sender: TObject; AItemIndex: Integer; AValue: Int64);
    procedure Button1Click(Sender: TObject);
  strict private
    ghQueueItems: TTMSFNCListBoxItem;
    gfQueueCount: TTMSFNCListBoxItem;
    ghProcessed: TTMSFNCListBoxItem;
    ghFileFound: TTMSFNCListBoxItem;
  private
    FTHPollFolder: TFSPollFolder;
    FThIW: TItemWorkerThread;
    FThStats: TAppStatsThread;
    FProcItems: TDictionary<string, TTMSFNCListBoxItem>;
    procedure InitFileList;
    procedure InitCG;
    procedure InitChart;
    procedure ProcItemAdd(AFileName: string);
    procedure ProcItemMoveQueue(AFileName: string);
    procedure ProcItemMoveProcessed(AFileName: string);
  public
    [Channel('WorkQueueSize',TThreadMode.Main)]
    procedure OnWorkQueueSize(amsg: String);
    [Channel('WorkQueuePanic', TThreadMode.Main)]
    procedure OnWorkQueuePanic(amsg: String);
    [Subscribe(TThreadMode.Main, ctx_StatReady)]
    procedure OnStatThreadCount(AEvent: IOnProcStat);
    [Subscribe(TThreadMode.Main)]
    procedure OnFileFoundEvent(AEvent: IDEBEvent<TOnFileFound>);
    [Subscribe(TThreadMode.Main)]
    procedure OnFileFoundEventCustom(AEvent: IOnFileFound);
    [Subscribe(TThreadMode.Main, 'Processed')]
    procedure OnFileProcessed(AEvent: IOnFileProcessed);
    [Subscribe(TThreadMode.Main, 'EnQueue')]
    procedure OnFileEnQueue(AEvent: IOnFileProcessed);
  end;

var
  frmDebFileEvents: TfrmDebFileEvents;

implementation

{$R *.dfm}

procedure TfrmDebFileEvents.Button1Click(Sender: TObject);
begin

  TMSFNCChartEditorDialog1.Execute;
end;

procedure TfrmDebFileEvents.cgControlsCheckBoxClick(Sender: TObject; AItemIndex: Integer; AValue: Int64);
var
  lp: IEnablePolling;
begin
  if AItemIndex = 0 then
    FTHPollFolder.EnablePolling(cgControls.Checked[AItemIndex]);

  if AItemIndex = 1 then
  begin
    lp := TEnablePolling.Create;
    lp.Enabled := cgControls.Checked[AItemIndex];
    GlobalEventBus.Post(lp, ctx_ItemWorker);
  end;

  if AItemIndex = 2 then
  begin
    lp := TEnablePolling.Create;
    lp.Enabled := cgControls.Checked[AItemIndex];
    GlobalEventBus.Post(lp, ctx_StatsWorker);
  end;

end;

procedure TfrmDebFileEvents.FormCreate(Sender: TObject);
begin
  FProcItems := TDictionary<string, TTMSFNCListBoxItem>.Create;
  InitFileList;
  InitChart;
  InitCG;
  GlobalEventBus.RegisterSubscriberForChannels(self);
  GlobalEventBus.RegisterSubscriberForEvents(self);
  FTHPollFolder := TFSPollFolder.Create();
  FTHPollFolder.Start;
  FThIW := TItemWorkerThread.Create();
  FThIW.Start;
  FThStats := TAppStatsThread.Create();
  FThStats.Start;
end;

procedure TfrmDebFileEvents.InitCG;
begin
  cgControls.Items.Clear;
  cgControls.Items.Add('Poll Files');
  cgControls.Items.Add('Process Queue');
  cgControls.Items.Add('Chart');
end;

procedure TfrmDebFileEvents.InitChart;
begin
  chart.BeginUpdate;
  chart.Series.Delete(2);
  chart.Title.Text := 'Queue vs Thread Count';
  chart.Series[0].points.clear;
  chart.Series[1].points.clear;
  chart.Series[0].AutoXRange := arEnabled       ;
  chart.Series[0].AutoYRange := arCommonZeroBased;
  chart.Series[0].LegendText := 'Thread Count';
  chart.Series[0].Mode := smStatistical;
  chart.Series[1].AutoXRange := arEnabled       ;
  chart.Series[1].AutoYRange := arCommonZeroBased;
  chart.Series[1].LegendText := 'Queue Length';
  chart.Series[1].YValues.Title.Text := 'Queue Length';
  chart.Series[1].Mode := smStatistical;
  chart.EndUpdate;
end;

procedure TfrmDebFileEvents.InitFileList;
begin
  lbFiles.Items.clear;
  ghQueueItems := lbFiles.AddItem(nm_ghqueue_hdr);
  gfQueueCount := lbFiles.AddItem(nm_gfqueue_hdr);
  ghProcessed := lbFiles.AddItem(nm_ghprocessed_hdr);
  ghFileFound := lbFiles.AddItem(nm_ghfound_hdr);
end;

procedure TfrmDebFileEvents.OnFileEnQueue(AEvent: IOnFileProcessed);
begin
  ProcItemMoveQueue(AEvent.FileName);
end;

procedure TfrmDebFileEvents.OnFileFoundEvent(AEvent: IDEBEvent<TOnFileFound>);
begin
  ProcItemAdd(AEvent.Data.FileName);
end;

procedure TfrmDebFileEvents.OnFileFoundEventCustom(AEvent: IOnFileFound);
begin
  ProcItemAdd(AEvent.FileName);
end;

procedure TfrmDebFileEvents.OnFileProcessed(AEvent: IOnFileProcessed);
begin
  ProcItemMoveProcessed(AEvent.FileName);
end;

procedure TfrmDebFileEvents.OnStatThreadCount(AEvent: IOnProcStat);
begin
  chart.Series[0].AddPoint(AEvent.ThreadCount);
  chart.Series[1].AddPoint(AEvent.QueueLength);
end;

procedure TfrmDebFileEvents.OnWorkQueuePanic(amsg: String);
begin

end;

procedure TfrmDebFileEvents.OnWorkQueueSize(amsg: String);
begin
  gfQueueCount.Text := amsg + ' Items in Queue';
end;

procedure TfrmDebFileEvents.ProcItemAdd(AFileName: string);
var
  lbi: TTMSFNCListBoxItem;
begin
  lbFiles.BeginUpdate;
  lbi := lbFiles.AddItem(AFileName);
  FProcItems.Add(AFileName, lbi);
  lbFiles.EndUpdate;
end;

procedure TfrmDebFileEvents.ProcItemMoveProcessed(AFileName: string);
var
  lbi: TTMSFNCListBoxItem;
begin
  lbFiles.BeginUpdate;
  if FProcItems.TryGetValue(AFileName, lbi) then
    lbi.Index := ghProcessed.Index;
  lbFiles.EndUpdate;
end;

procedure TfrmDebFileEvents.ProcItemMoveQueue(AFileName: string);
var
  lbi: TTMSFNCListBoxItem;
begin
  lbFiles.BeginUpdate;
  if FProcItems.TryGetValue(AFileName, lbi) then
    lbi.Index := gfQueueCount.Index;
  lbFiles.EndUpdate;
end;

end.
