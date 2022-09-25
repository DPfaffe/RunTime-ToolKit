object frmChartOptimization: TfrmChartOptimization
  Left = 0
  Top = 0
  Caption = 'Chart Optimization'
  ClientHeight = 682
  ClientWidth = 813
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object Splitter1: TSplitter
    Left = 330
    Top = 0
    Height = 682
    ExplicitLeft = 0
    ExplicitTop = 402
    ExplicitHeight = 813
  end
  object TMSFNCChart1: TTMSFNCChart
    AlignWithMargins = True
    Left = 338
    Top = 5
    Width = 465
    Height = 672
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 10
    Margins.Bottom = 5
    Appearance.ColorList = <
      item
        Color = 16105559
      end
      item
        Color = 5644279
      end
      item
        Color = 7936771
      end
      item
        Color = 12275349
      end
      item
        Color = 1296366
      end
      item
        Color = 4350195
      end
      item
        Color = 16544551
      end
      item
        Color = 5820321
      end
      item
        Color = 10922240
      end
      item
        Color = 16376965
      end>
    Appearance.GlobalFont.Color = -1
    Appearance.GlobalFont.Scale = 1.000000000000000000
    Appearance.GlobalFont.Style = []
    Appearance.ColorScheme = ccsColorList
    Appearance.MonochromeColor = 11829830
    ClickMargin = 10.000000000000000000
    Legend.Fill.Color = 16775416
    Legend.Stroke.Color = clGray
    Legend.Font.Charset = DEFAULT_CHARSET
    Legend.Font.Color = clWindowText
    Legend.Font.Height = -11
    Legend.Font.Name = 'Segoe UI'
    Legend.Font.Style = []
    Legend.Left = 10.000000000000000000
    Legend.Position = lpBottomRight
    Legend.Top = 10.000000000000000000
    Stroke.Color = clGray
    SeriesMargins.Left = 0
    SeriesMargins.Top = 0
    SeriesMargins.Right = 0
    SeriesMargins.Bottom = 0
    Series = <>
    Title.Fill.Kind = gfkNone
    Title.Fill.Color = 16775416
    Title.Stroke.Color = clGray
    Title.Font.Charset = DEFAULT_CHARSET
    Title.Font.Color = clWindowText
    Title.Font.Height = -11
    Title.Font.Name = 'Segoe UI'
    Title.Font.Style = []
    Title.Height = 35.000000000000000000
    Title.TextHorizontalAlignment = gtaTrailing
    Title.TextMargins.Left = 3
    Title.TextMargins.Top = 3
    Title.TextMargins.Right = 3
    Title.TextMargins.Bottom = 3
    Title.Text = 'Multiply Chart of 3 & 7'
    XAxis.Fill.Kind = gfkNone
    XAxis.Fill.Color = 16775416
    XAxis.Stroke.Color = clGray
    XAxis.Height = 35.000000000000000000
    YAxis.Fill.Kind = gfkNone
    YAxis.Fill.Color = 16775416
    YAxis.Stroke.Color = clGray
    YAxis.Width = 35.000000000000000000
    Adapter = TMSFNCChartDatabaseAdapter1
    DefaultLoadOptions.XValuesFormatString = '%.0f'
    DefaultLoadOptions.YValuesFormatString = '%.2f'
    DefaultLoadOptions.MaxYOffsetPercentage = 5.000000000000000000
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 30
    ExplicitTop = 290
    ExplicitWidth = 780
    ExplicitHeight = 392
    object TMSFNCChartDatabaseAdapter1: TTMSFNCChartDatabaseAdapter
      Left = 536
      Top = 96
      Width = 39
      Height = 39
      Visible = True
      AutoCreateSeries = False
      Source.DataSource = DataSource1
      Source.Series = <
        item
          YValue = 'Threes'
          XValue = 'Multiplier'
          XLabel = 'Multiplier'
        end
        item
          YValue = 'Sevens'
          XValue = 'Multiplier'
          XLabel = 'Multiplier'
        end>
    end
  end
  object TMSFNCGrid1: TTMSFNCGrid
    AlignWithMargins = True
    Left = 5
    Top = 5
    Width = 320
    Height = 672
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Align = alLeft
    ParentDoubleBuffered = False
    DoubleBuffered = True
    TabOrder = 1
    DefaultRowHeight = 40.000000000000000000
    FixedColumns = 0
    ColumnCount = 0
    RowCount = 1
    Options.Bands.Enabled = True
    Options.Editing.CalcFormat = '%g'
    Options.Grouping.CalcFormat = '%g'
    Options.Grouping.GroupCountFormat = '(%d)'
    Options.IO.XMLEncoding = 'ISO-8859-1'
    Options.Mouse.ClickMargin = 0
    Options.Mouse.ColumnSizeMargin = 6
    Options.Mouse.RowSizeMargin = 6
    Adapter = TMSFNCGridDatabaseAdapter1
    Columns = <
      item
        BorderWidth = 1
        FixedFont.Charset = DEFAULT_CHARSET
        FixedFont.Color = 4539717
        FixedFont.Height = -11
        FixedFont.Name = 'Segoe UI'
        FixedFont.Style = [fsBold]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8026746
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ID = ''
        Width = 70.000000000000000000
      end
      item
        BorderWidth = 1
        FixedFont.Charset = DEFAULT_CHARSET
        FixedFont.Color = 4539717
        FixedFont.Height = -11
        FixedFont.Name = 'Segoe UI'
        FixedFont.Style = [fsBold]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8026746
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ID = ''
        Width = 250.000000000000000000
      end
      item
        BorderWidth = 1
        FixedFont.Charset = DEFAULT_CHARSET
        FixedFont.Color = 4539717
        FixedFont.Height = -11
        FixedFont.Name = 'Segoe UI'
        FixedFont.Style = [fsBold]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8026746
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ID = ''
        Width = 100.000000000000000000
      end
      item
        BorderWidth = 1
        FixedFont.Charset = DEFAULT_CHARSET
        FixedFont.Color = 4539717
        FixedFont.Height = -11
        FixedFont.Name = 'Segoe UI'
        FixedFont.Style = [fsBold]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8026746
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ID = ''
        Width = 100.000000000000000000
      end
      item
        BorderWidth = 1
        FixedFont.Charset = DEFAULT_CHARSET
        FixedFont.Color = 4539717
        FixedFont.Height = -11
        FixedFont.Name = 'Segoe UI'
        FixedFont.Style = [fsBold]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8026746
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ID = ''
        Width = 90.000000000000000000
      end>
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -11
    DefaultFont.Name = 'Segoe UI'
    DefaultFont.Style = []
    TopRow = 1
    Appearance.FixedLayout.Fill.Color = 16380654
    Appearance.FixedLayout.Font.Charset = DEFAULT_CHARSET
    Appearance.FixedLayout.Font.Color = 4539717
    Appearance.FixedLayout.Font.Height = -13
    Appearance.FixedLayout.Font.Name = 'Segoe UI'
    Appearance.FixedLayout.Font.Style = [fsBold]
    Appearance.NormalLayout.Fill.Color = 16578806
    Appearance.NormalLayout.Font.Charset = DEFAULT_CHARSET
    Appearance.NormalLayout.Font.Color = 8026746
    Appearance.NormalLayout.Font.Height = -11
    Appearance.NormalLayout.Font.Name = 'Segoe UI'
    Appearance.NormalLayout.Font.Style = []
    Appearance.GroupLayout.Fill.Color = 12817262
    Appearance.GroupLayout.Font.Charset = DEFAULT_CHARSET
    Appearance.GroupLayout.Font.Color = clBlack
    Appearance.GroupLayout.Font.Height = -11
    Appearance.GroupLayout.Font.Name = 'Segoe UI'
    Appearance.GroupLayout.Font.Style = []
    Appearance.SummaryLayout.Fill.Color = 14009785
    Appearance.SummaryLayout.Font.Charset = DEFAULT_CHARSET
    Appearance.SummaryLayout.Font.Color = clBlack
    Appearance.SummaryLayout.Font.Height = -11
    Appearance.SummaryLayout.Font.Name = 'Segoe UI'
    Appearance.SummaryLayout.Font.Style = []
    Appearance.SelectedLayout.Fill.Color = 16441019
    Appearance.SelectedLayout.Font.Charset = DEFAULT_CHARSET
    Appearance.SelectedLayout.Font.Color = 4539717
    Appearance.SelectedLayout.Font.Height = -11
    Appearance.SelectedLayout.Font.Name = 'Segoe UI'
    Appearance.SelectedLayout.Font.Style = []
    Appearance.FocusedLayout.Fill.Color = 16039284
    Appearance.FocusedLayout.Font.Charset = DEFAULT_CHARSET
    Appearance.FocusedLayout.Font.Color = 4539717
    Appearance.FocusedLayout.Font.Height = -11
    Appearance.FocusedLayout.Font.Name = 'Segoe UI'
    Appearance.FocusedLayout.Font.Style = []
    Appearance.FixedSelectedLayout.Fill.Color = 14599344
    Appearance.FixedSelectedLayout.Font.Charset = DEFAULT_CHARSET
    Appearance.FixedSelectedLayout.Font.Color = clBlack
    Appearance.FixedSelectedLayout.Font.Height = -11
    Appearance.FixedSelectedLayout.Font.Name = 'Segoe UI'
    Appearance.FixedSelectedLayout.Font.Style = []
    Appearance.BandLayout.Fill.Color = 16711679
    Appearance.BandLayout.Font.Charset = DEFAULT_CHARSET
    Appearance.BandLayout.Font.Color = 8026746
    Appearance.BandLayout.Font.Height = -11
    Appearance.BandLayout.Font.Name = 'Segoe UI'
    Appearance.BandLayout.Font.Style = []
    Appearance.ProgressLayout.Format = '%.0f%%'
    LeftCol = 0
    ScrollMode = scmItemScrolling
    GlobalFont.Scale = 1.000000000000000000
    GlobalFont.Style = []
    DesignTimeSampleData = True
    ExplicitLeft = 8
    object TMSFNCGridDatabaseAdapter1: TTMSFNCGridDatabaseAdapter
      Left = 504
      Top = 112
      Width = 39
      Height = 39
      Visible = True
      Grid = TMSFNCGrid1
      DataSource = DataSource1
      Columns = <>
    end
  end
  object FDQuiz: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'select * from multiply_quiz')
    Left = 736
    Top = 464
    object FDQuizMultiplier: TIntegerField
      FieldName = 'Multiplier'
    end
    object FDQuizThrees: TLargeintField
      FieldName = 'Threes'
    end
    object FDQuizSevens: TLargeintField
      FieldName = 'Sevens'
    end
  end
  object DataSource1: TDataSource
    DataSet = FDQuiz
    Left = 592
    Top = 376
  end
  object FDConnection: TFDConnection
    Params.Strings = (
      'Database=:memory:'
      'DriverID=SQLite')
    LoginPrompt = False
    AfterConnect = FDConnectionAfterConnect
    Left = 552
    Top = 600
  end
  object FDSQLiteFunction1: TFDSQLiteFunction
    DriverLink = FDPhysSQLiteDriverLink1
    Active = True
    FunctionName = 'XmY'
    ArgumentsCount = 2
    OnCalculate = FDSQLiteFunction1Calculate
    Left = 736
    Top = 592
  end
  object FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink
    Left = 736
    Top = 552
  end
end
