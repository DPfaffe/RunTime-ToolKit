object frmChartSalesVCL: TfrmChartSalesVCL
  Left = 0
  Top = 0
  Caption = 'frmChartSalesVCL'
  ClientHeight = 895
  ClientWidth = 1379
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object GridPanel1: TGridPanel
    Left = 0
    Top = 0
    Width = 1379
    Height = 895
    Align = alClient
    Caption = 'GridPanel1'
    ColumnCollection = <
      item
        Value = 50.000000000000000000
      end
      item
        Value = 50.000000000000000000
      end>
    ControlCollection = <
      item
        Column = 0
        Control = TMSFNCStackedBarChart1
        Row = 0
      end
      item
        Column = 1
        Control = TMSFNCPieChart1
        Row = 0
      end
      item
        Column = 0
        Control = TMSFNCGrid1
        Row = 1
      end>
    RowCollection = <
      item
        Value = 50.000000000000000000
      end
      item
        Value = 50.000000000000000000
      end>
    ShowCaption = False
    TabOrder = 0
    ExplicitLeft = 608
    ExplicitTop = 456
    ExplicitWidth = 185
    ExplicitHeight = 41
    object TMSFNCStackedBarChart1: TTMSFNCStackedBarChart
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 682
      Height = 440
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
      Title.TextMargins.Left = 3
      Title.TextMargins.Top = 3
      Title.TextMargins.Right = 3
      Title.TextMargins.Bottom = 3
      Title.Text = 'TMS FNC Chart'
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
      ExplicitLeft = 416
      ExplicitTop = 272
      ExplicitWidth = 550
      ExplicitHeight = 350
      object TMSFNCChartDatabaseAdapter1: TTMSFNCChartDatabaseAdapter
        Left = 320
        Top = 200
        Width = 39
        Height = 39
        Visible = True
        AutoCreateSeries = False
        Source.DataSource = dsSalesBarChart
        Source.Series = <
          item
            YValue = 'SA2018'
            XValue = 'Month'
            XLabel = 'mdisp'
          end
          item
            YValue = 'SA2019'
            XValue = 'Month'
            XLabel = 'mdisp'
          end
          item
            YValue = 'SA2020'
            XValue = 'Month'
            XLabel = 'mdisp'
          end>
      end
    end
    object TMSFNCPieChart1: TTMSFNCPieChart
      AlignWithMargins = True
      Left = 692
      Top = 4
      Width = 683
      Height = 440
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
      Legend.Visible = False
      Legend.Font.Charset = DEFAULT_CHARSET
      Legend.Font.Color = clWindowText
      Legend.Font.Height = -11
      Legend.Font.Name = 'Segoe UI'
      Legend.Font.Style = []
      Legend.Left = 10.000000000000000000
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
      Title.TextMargins.Left = 3
      Title.TextMargins.Top = 3
      Title.TextMargins.Right = 3
      Title.TextMargins.Bottom = 3
      Title.Text = 'TMS FNC Chart'
      XAxis.Fill.Kind = gfkNone
      XAxis.Fill.Color = 16775416
      XAxis.Stroke.Color = clGray
      XAxis.Height = 35.000000000000000000
      YAxis.Fill.Kind = gfkNone
      YAxis.Fill.Color = 16775416
      YAxis.Stroke.Color = clGray
      YAxis.Width = 35.000000000000000000
      Adapter = TMSFNCChartDatabaseAdapter2
      DefaultLoadOptions.XValuesFormatString = '%.0f'
      DefaultLoadOptions.YValuesFormatString = '%.2f'
      DefaultLoadOptions.MaxYOffsetPercentage = 5.000000000000000000
      Align = alClient
      TabOrder = 1
      ExplicitLeft = 8
      ExplicitTop = 8
      ExplicitWidth = 550
      ExplicitHeight = 350
      object TMSFNCChartDatabaseAdapter2: TTMSFNCChartDatabaseAdapter
        Left = 328
        Top = 208
        Width = 39
        Height = 39
        Visible = True
        Source.DataSource = dsSalesPie
        Source.Series = <
          item
            YValue = 'Sales'
          end>
      end
    end
    object TMSFNCGrid1: TTMSFNCGrid
      AlignWithMargins = True
      Left = 4
      Top = 450
      Width = 682
      Height = 441
      Align = alClient
      ParentDoubleBuffered = False
      DoubleBuffered = True
      TabOrder = 2
      DefaultRowHeight = 40.000000000000000000
      FixedColumns = 0
      ColumnCount = 4
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
      ExplicitLeft = 16
      ExplicitTop = 40
      ExplicitWidth = 520
      ExplicitHeight = 270
      object TMSFNCGridDatabaseAdapter1: TTMSFNCGridDatabaseAdapter
        Left = 560
        Top = 264
        Width = 39
        Height = 39
        Visible = True
        Grid = TMSFNCGrid1
        DataSource = dsSalesGrid
        Columns = <>
      end
    end
  end
  object FDConnection: TFDConnection
    Params.Strings = (
      'Database=:memory:'
      'DriverID=SQLite')
    Connected = True
    LoginPrompt = False
    AfterConnect = FDConnectionAfterConnect
    Left = 824
    Top = 808
  end
  object dsSalesBarChart: TDataSource
    DataSet = fdqSalesChart
    Left = 824
    Top = 504
  end
  object dsSalesGrid: TDataSource
    DataSet = FDMemTableSalesGrid
    Left = 976
    Top = 496
  end
  object dsSalesPie: TDataSource
    DataSet = fdqSalesPie
    Left = 1152
    Top = 488
  end
  object fdqSalesChart: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'select * from sales_chart')
    Left = 824
    Top = 648
    object fdqSalesChartMonth: TIntegerField
      FieldName = 'Month'
      Origin = 'Month'
      Required = True
    end
    object fdqSalesChartmdisp: TStringField
      FieldName = 'mdisp'
      Origin = 'mdisp'
      Size = 32767
    end
    object fdqSalesChartSA2018: TBCDField
      FieldName = 'SA2018'
      Origin = 'SA2018'
      Precision = 10
      Size = 2
    end
    object fdqSalesChartSA2019: TBCDField
      FieldName = 'SA2019'
      Origin = 'SA2019'
      Precision = 10
      Size = 2
    end
    object fdqSalesChartSA2020: TBCDField
      FieldName = 'SA2020'
      Origin = 'SA2020'
      Precision = 10
      Size = 2
    end
  end
  object fdqSalesPie: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      
        '                      select year, sum(amount) as "Sales::Int32"' +
        ' from salesinfo group by year')
    Left = 1160
    Top = 632
    object fdqSalesPieyear: TIntegerField
      FieldName = 'year'
      Origin = 'year'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdqSalesPieSales: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Sales'
      Origin = 'Sales'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object FDMemTableSalesGrid: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 992
    Top = 640
  end
end
