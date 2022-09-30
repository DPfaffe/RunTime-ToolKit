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
        Column = 1
        Control = TMSFNCPieChart1
        Row = 0
      end
      item
        Column = 0
        Control = TMSFNCGrid1
        Row = 1
      end
      item
        Column = 0
        Control = TMSFNCBarChart1
        Row = 0
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
      Title.Text = 'Sales Pie by Year'
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
      TabOrder = 0
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
            XLabel = 'year'
            YValueHigh = 'Sales'
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
      TabOrder = 1
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
    object TMSFNCBarChart1: TTMSFNCBarChart
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
      Crosshair.Visible = True
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
      Series = <
        item
          AnimationFactor = 4.000000000000000000
          AutoYRange = arCommonZeroBased
          Bar.Width = 65.000000000000000000
          Bar.Spacing = 20.000000000000000000
          MultiPoint.Width = 65.000000000000000000
          Pie.Size = 200.000000000000000000
          Pie.Margins.Left = 10
          Pie.Margins.Top = 10
          Pie.Margins.Right = 10
          Pie.Margins.Bottom = 10
          Pie.SweepAngle = 360.000000000000000000
          Fill.Color = 16105559
          LegendText = 'Series 0'
          Labels.Fill.Color = 16775416
          Labels.Font.Charset = DEFAULT_CHARSET
          Labels.Font.Color = clWindowText
          Labels.Font.Height = -11
          Labels.Font.Name = 'Segoe UI'
          Labels.Font.Style = []
          Labels.Format = '%.2f'
          Labels.OffsetY = -10.000000000000000000
          Labels.Stroke.Color = clGray
          Labels.Visible = True
          Markers.Fill.Color = 16105559
          Markers.Height = 10.000000000000000000
          Markers.Stroke.Color = 8020012
          Markers.Visible = True
          Markers.Width = 10.000000000000000000
          MaxX = 10.000000000000000000
          MaxY = 10.000000000000000000
          MaxYOffsetPercentage = 10.000000000000000000
          Mode = smStatistical
          Offset3DX = 15.000000000000000000
          Offset3DY = 15.000000000000000000
          Points = <
            item
              Annotations = <>
              YValue = 60.000000000000000000
              YValueSecond = 50.000000000000000000
              YValueVariable = 60.000000000000000000
              YValueLow = 30.000000000000000000
              YValueClose = 55.000000000000000000
              YValueHigh = 60.000000000000000000
              YValueOpen = 30.000000000000000000
              YValueMedian = 59.000000000000000000
            end
            item
              Annotations = <>
              XValue = 1.000000000000000000
              YValue = 41.000000000000000000
              YValueSecond = 26.000000000000000000
              YValueVariable = 41.000000000000000000
              YValueLow = 18.000000000000000000
              YValueClose = 32.000000000000000000
              YValueHigh = 41.000000000000000000
              YValueOpen = 31.000000000000000000
              YValueMedian = 44.000000000000000000
            end
            item
              Annotations = <>
              XValue = 2.000000000000000000
              YValue = 110.000000000000000000
              YValueSecond = 96.000000000000000000
              YValueVariable = 110.000000000000000000
              YValueLow = 67.000000000000000000
              YValueClose = 107.000000000000000000
              YValueHigh = 110.000000000000000000
              YValueOpen = 75.000000000000000000
              YValueMedian = 113.000000000000000000
            end
            item
              Annotations = <>
              XValue = 3.000000000000000000
              YValue = 86.000000000000000000
              YValueSecond = 69.000000000000000000
              YValueVariable = 86.000000000000000000
              YValueLow = 28.000000000000000000
              YValueClose = 31.000000000000000000
              YValueHigh = 86.000000000000000000
              YValueOpen = 50.000000000000000000
              YValueMedian = 89.000000000000000000
            end
            item
              Annotations = <>
              XValue = 4.000000000000000000
              YValue = 122.000000000000000000
              YValueSecond = 110.000000000000000000
              YValueVariable = 122.000000000000000000
              YValueLow = 51.000000000000000000
              YValueClose = 95.000000000000000000
              YValueHigh = 122.000000000000000000
              YValueOpen = 95.000000000000000000
              YValueMedian = 120.000000000000000000
            end
            item
              Annotations = <>
              XValue = 5.000000000000000000
              YValue = 87.000000000000000000
              YValueSecond = 71.000000000000000000
              YValueVariable = 87.000000000000000000
              YValueLow = 49.000000000000000000
              YValueClose = 68.000000000000000000
              YValueHigh = 87.000000000000000000
              YValueOpen = 51.000000000000000000
              YValueMedian = 86.000000000000000000
            end
            item
              Annotations = <>
              XValue = 6.000000000000000000
              YValue = 99.000000000000000000
              YValueSecond = 89.000000000000000000
              YValueVariable = 99.000000000000000000
              YValueLow = 49.000000000000000000
              YValueClose = 55.000000000000000000
              YValueHigh = 99.000000000000000000
              YValueOpen = 70.000000000000000000
              YValueMedian = 98.000000000000000000
            end
            item
              Annotations = <>
              XValue = 7.000000000000000000
              YValue = 25.000000000000000000
              YValueSecond = 12.000000000000000000
              YValueVariable = 25.000000000000000000
              YValueLow = 7.000000000000000000
              YValueClose = 12.000000000000000000
              YValueHigh = 25.000000000000000000
              YValueOpen = 17.000000000000000000
              YValueMedian = 29.000000000000000000
            end
            item
              Annotations = <>
              XValue = 8.000000000000000000
              YValue = 99.000000000000000000
              YValueSecond = 81.000000000000000000
              YValueVariable = 99.000000000000000000
              YValueLow = 46.000000000000000000
              YValueClose = 76.000000000000000000
              YValueHigh = 99.000000000000000000
              YValueOpen = 52.000000000000000000
              YValueMedian = 101.000000000000000000
            end
            item
              Annotations = <>
              XValue = 9.000000000000000000
              YValue = 85.000000000000000000
              YValueSecond = 69.000000000000000000
              YValueVariable = 85.000000000000000000
              YValueLow = 37.000000000000000000
              YValueClose = 52.000000000000000000
              YValueHigh = 85.000000000000000000
              YValueOpen = 44.000000000000000000
              YValueMedian = 84.000000000000000000
            end
            item
              Annotations = <>
              XValue = 10.000000000000000000
              YValue = 52.000000000000000000
              YValueSecond = 39.000000000000000000
              YValueVariable = 52.000000000000000000
              YValueLow = 22.000000000000000000
              YValueClose = 43.000000000000000000
              YValueHigh = 52.000000000000000000
              YValueOpen = 28.000000000000000000
              YValueMedian = 54.000000000000000000
            end>
          Legend.Fill.Color = 16775416
          Legend.Font.Charset = DEFAULT_CHARSET
          Legend.Font.Color = clWindowText
          Legend.Font.Height = -11
          Legend.Font.Name = 'Segoe UI'
          Legend.Font.Style = []
          Legend.Left = -10.000000000000000000
          Legend.Stroke.Color = clGray
          Stroke.Color = 8020012
          XGrid.Visible = True
          XValues.MajorUnit = 1.000000000000000000
          XValues.MajorUnitFont.Charset = DEFAULT_CHARSET
          XValues.MajorUnitFont.Color = clWindowText
          XValues.MajorUnitFont.Height = -11
          XValues.MajorUnitFont.Name = 'Segoe UI'
          XValues.MajorUnitFont.Style = []
          XValues.MajorUnitFormat = '%.0f'
          XValues.MajorUnitSpacing = 5.000000000000000000
          XValues.MajorUnitTickMarkSize = 10.000000000000000000
          XValues.MajorUnitTickMarkColor = clSilver
          XValues.MinorUnitFont.Charset = DEFAULT_CHARSET
          XValues.MinorUnitFont.Color = clWindowText
          XValues.MinorUnitFont.Height = -11
          XValues.MinorUnitFont.Name = 'Segoe UI'
          XValues.MinorUnitFont.Style = []
          XValues.MinorUnitFormat = '%.0f'
          XValues.MinorUnitSpacing = 5.000000000000000000
          XValues.MinorUnitTickMarkSize = 7.000000000000000000
          XValues.MinorUnitTickMarkColor = clSilver
          XValues.Title.Font.Charset = DEFAULT_CHARSET
          XValues.Title.Font.Color = clWindowText
          XValues.Title.Font.Height = -11
          XValues.Title.Font.Name = 'Segoe UI'
          XValues.Title.Font.Style = []
          XValues.Title.TextMargins.Left = 0
          XValues.Title.TextMargins.Top = 0
          XValues.Title.TextMargins.Right = 0
          XValues.Title.TextMargins.Bottom = 0
          XValues.Title.Text = 'X-Axis Series 1'
          YGrid.Visible = True
          YValues.MajorUnit = 1.000000000000000000
          YValues.MajorUnitFont.Charset = DEFAULT_CHARSET
          YValues.MajorUnitFont.Color = clWindowText
          YValues.MajorUnitFont.Height = -11
          YValues.MajorUnitFont.Name = 'Segoe UI'
          YValues.MajorUnitFont.Style = []
          YValues.MajorUnitFormat = '%.2f'
          YValues.MajorUnitSpacing = 5.000000000000000000
          YValues.MajorUnitTickMarkSize = 10.000000000000000000
          YValues.MajorUnitTickMarkColor = clSilver
          YValues.MinorUnitFont.Charset = DEFAULT_CHARSET
          YValues.MinorUnitFont.Color = clWindowText
          YValues.MinorUnitFont.Height = -11
          YValues.MinorUnitFont.Name = 'Segoe UI'
          YValues.MinorUnitFont.Style = []
          YValues.MinorUnitFormat = '%.2f'
          YValues.MinorUnitSpacing = 5.000000000000000000
          YValues.MinorUnitTickMarkSize = 7.000000000000000000
          YValues.MinorUnitTickMarkColor = clSilver
          YValues.Title.Font.Charset = DEFAULT_CHARSET
          YValues.Title.Font.Color = clWindowText
          YValues.Title.Font.Height = -11
          YValues.Title.Font.Name = 'Segoe UI'
          YValues.Title.Font.Style = []
          YValues.Title.TextMargins.Left = 0
          YValues.Title.TextMargins.Top = 0
          YValues.Title.TextMargins.Right = 0
          YValues.Title.TextMargins.Bottom = 0
          YValues.Title.Text = 'Y-Axis Series 1'
          Crosshair.XTextStroke.Color = 16105559
          Crosshair.XTextFill.Color = 16105559
          Crosshair.XTextFont.Charset = DEFAULT_CHARSET
          Crosshair.XTextFont.Color = clWhite
          Crosshair.XTextFont.Height = -11
          Crosshair.XTextFont.Name = 'Segoe UI'
          Crosshair.XTextFont.Style = []
          Crosshair.YTextStroke.Color = 16105559
          Crosshair.YTextFill.Color = 16105559
          Crosshair.YTextFont.Charset = DEFAULT_CHARSET
          Crosshair.YTextFont.Color = clWhite
          Crosshair.YTextFont.Height = -11
          Crosshair.YTextFont.Name = 'Segoe UI'
          Crosshair.YTextFont.Style = []
          Crosshair.HorizontalLineStroke.Color = 16105559
          Crosshair.VerticalLineStroke.Color = 16105559
        end
        item
          AnimationFactor = 4.000000000000000000
          AutoYRange = arCommonZeroBased
          Bar.Width = 65.000000000000000000
          Bar.Spacing = 20.000000000000000000
          MultiPoint.Width = 65.000000000000000000
          Pie.Size = 200.000000000000000000
          Pie.Margins.Left = 10
          Pie.Margins.Top = 10
          Pie.Margins.Right = 10
          Pie.Margins.Bottom = 10
          Pie.SweepAngle = 360.000000000000000000
          Fill.Color = 5644279
          LegendText = 'Series 1'
          Labels.Fill.Color = 16775416
          Labels.Font.Charset = DEFAULT_CHARSET
          Labels.Font.Color = clWindowText
          Labels.Font.Height = -11
          Labels.Font.Name = 'Segoe UI'
          Labels.Font.Style = []
          Labels.Format = '%.2f'
          Labels.OffsetY = -10.000000000000000000
          Labels.Stroke.Color = clGray
          Labels.Visible = True
          Markers.Fill.Color = 5644279
          Markers.Height = 10.000000000000000000
          Markers.Stroke.Color = 2822268
          Markers.Width = 10.000000000000000000
          MaxX = 10.000000000000000000
          MaxY = 10.000000000000000000
          MaxYOffsetPercentage = 10.000000000000000000
          Mode = smStatistical
          Offset3DX = 15.000000000000000000
          Offset3DY = 15.000000000000000000
          Points = <
            item
              Annotations = <>
              YValue = 23.000000000000000000
              YValueSecond = 11.000000000000000000
              YValueVariable = 23.000000000000000000
              YValueLow = 5.000000000000000000
              YValueClose = 20.000000000000000000
              YValueHigh = 23.000000000000000000
              YValueOpen = 16.000000000000000000
              YValueMedian = 20.000000000000000000
            end
            item
              Annotations = <>
              XValue = 1.000000000000000000
              YValue = 123.000000000000000000
              YValueSecond = 111.000000000000000000
              YValueVariable = 123.000000000000000000
              YValueLow = 50.000000000000000000
              YValueClose = 110.000000000000000000
              YValueHigh = 123.000000000000000000
              YValueOpen = 86.000000000000000000
              YValueMedian = 122.000000000000000000
            end
            item
              Annotations = <>
              XValue = 2.000000000000000000
              YValue = 71.000000000000000000
              YValueSecond = 60.000000000000000000
              YValueVariable = 71.000000000000000000
              YValueLow = 19.000000000000000000
              YValueClose = 55.000000000000000000
              YValueHigh = 71.000000000000000000
              YValueOpen = 30.000000000000000000
              YValueMedian = 73.000000000000000000
            end
            item
              Annotations = <>
              XValue = 3.000000000000000000
              YValue = 39.000000000000000000
              YValueSecond = 26.000000000000000000
              YValueVariable = 39.000000000000000000
              YValueLow = 10.000000000000000000
              YValueClose = 16.000000000000000000
              YValueHigh = 39.000000000000000000
              YValueOpen = 20.000000000000000000
              YValueMedian = 35.000000000000000000
            end
            item
              Annotations = <>
              XValue = 4.000000000000000000
              YValue = 35.000000000000000000
              YValueSecond = 23.000000000000000000
              YValueVariable = 35.000000000000000000
              YValueLow = 9.000000000000000000
              YValueClose = 31.000000000000000000
              YValueHigh = 35.000000000000000000
              YValueOpen = 15.000000000000000000
              YValueMedian = 31.000000000000000000
            end
            item
              Annotations = <>
              XValue = 5.000000000000000000
              YValue = 72.000000000000000000
              YValueSecond = 57.000000000000000000
              YValueVariable = 72.000000000000000000
              YValueLow = 38.000000000000000000
              YValueClose = 55.000000000000000000
              YValueHigh = 72.000000000000000000
              YValueOpen = 44.000000000000000000
              YValueMedian = 69.000000000000000000
            end
            item
              Annotations = <>
              XValue = 6.000000000000000000
              YValue = 79.000000000000000000
              YValueSecond = 67.000000000000000000
              YValueVariable = 79.000000000000000000
              YValueLow = 37.000000000000000000
              YValueClose = 52.000000000000000000
              YValueHigh = 79.000000000000000000
              YValueOpen = 60.000000000000000000
              YValueMedian = 80.000000000000000000
            end
            item
              Annotations = <>
              XValue = 7.000000000000000000
              YValue = 67.000000000000000000
              YValueSecond = 57.000000000000000000
              YValueVariable = 67.000000000000000000
              YValueLow = 29.000000000000000000
              YValueClose = 54.000000000000000000
              YValueHigh = 67.000000000000000000
              YValueOpen = 38.000000000000000000
              YValueMedian = 70.000000000000000000
            end
            item
              Annotations = <>
              XValue = 8.000000000000000000
              YValue = 121.000000000000000000
              YValueSecond = 105.000000000000000000
              YValueVariable = 121.000000000000000000
              YValueLow = 52.000000000000000000
              YValueClose = 89.000000000000000000
              YValueHigh = 121.000000000000000000
              YValueOpen = 80.000000000000000000
              YValueMedian = 123.000000000000000000
            end
            item
              Annotations = <>
              XValue = 9.000000000000000000
              YValue = 21.000000000000000000
              YValueSecond = 3.000000000000000000
              YValueVariable = 21.000000000000000000
              YValueLow = 3.000000000000000000
              YValueClose = 8.000000000000000000
              YValueHigh = 21.000000000000000000
              YValueOpen = 8.000000000000000000
              YValueMedian = 22.000000000000000000
            end
            item
              Annotations = <>
              XValue = 10.000000000000000000
              YValue = 81.000000000000000000
              YValueSecond = 63.000000000000000000
              YValueVariable = 81.000000000000000000
              YValueLow = 33.000000000000000000
              YValueClose = 61.000000000000000000
              YValueHigh = 81.000000000000000000
              YValueOpen = 68.000000000000000000
              YValueMedian = 77.000000000000000000
            end>
          Legend.Fill.Color = 16775416
          Legend.Font.Charset = DEFAULT_CHARSET
          Legend.Font.Color = clWindowText
          Legend.Font.Height = -11
          Legend.Font.Name = 'Segoe UI'
          Legend.Font.Style = []
          Legend.Left = -10.000000000000000000
          Legend.Stroke.Color = clGray
          Stroke.Color = 2822268
          XValues.MajorUnit = 1.000000000000000000
          XValues.MajorUnitFont.Charset = DEFAULT_CHARSET
          XValues.MajorUnitFont.Color = clWindowText
          XValues.MajorUnitFont.Height = -11
          XValues.MajorUnitFont.Name = 'Segoe UI'
          XValues.MajorUnitFont.Style = []
          XValues.MajorUnitFormat = '%.0f'
          XValues.MajorUnitSpacing = 5.000000000000000000
          XValues.MajorUnitTickMarkSize = 10.000000000000000000
          XValues.MajorUnitTickMarkColor = clSilver
          XValues.MinorUnitFont.Charset = DEFAULT_CHARSET
          XValues.MinorUnitFont.Color = clWindowText
          XValues.MinorUnitFont.Height = -11
          XValues.MinorUnitFont.Name = 'Segoe UI'
          XValues.MinorUnitFont.Style = []
          XValues.MinorUnitFormat = '%.0f'
          XValues.MinorUnitSpacing = 5.000000000000000000
          XValues.MinorUnitTickMarkSize = 7.000000000000000000
          XValues.MinorUnitTickMarkColor = clSilver
          XValues.Title.Font.Charset = DEFAULT_CHARSET
          XValues.Title.Font.Color = clWindowText
          XValues.Title.Font.Height = -11
          XValues.Title.Font.Name = 'Segoe UI'
          XValues.Title.Font.Style = []
          XValues.Title.TextMargins.Left = 0
          XValues.Title.TextMargins.Top = 0
          XValues.Title.TextMargins.Right = 0
          XValues.Title.TextMargins.Bottom = 0
          XValues.Title.Text = 'X-Axis Series 2'
          XValues.Positions = []
          YValues.MajorUnit = 1.000000000000000000
          YValues.MajorUnitFont.Charset = DEFAULT_CHARSET
          YValues.MajorUnitFont.Color = clWindowText
          YValues.MajorUnitFont.Height = -11
          YValues.MajorUnitFont.Name = 'Segoe UI'
          YValues.MajorUnitFont.Style = []
          YValues.MajorUnitFormat = '%.2f'
          YValues.MajorUnitSpacing = 5.000000000000000000
          YValues.MajorUnitTickMarkSize = 10.000000000000000000
          YValues.MajorUnitTickMarkColor = clSilver
          YValues.MinorUnitFont.Charset = DEFAULT_CHARSET
          YValues.MinorUnitFont.Color = clWindowText
          YValues.MinorUnitFont.Height = -11
          YValues.MinorUnitFont.Name = 'Segoe UI'
          YValues.MinorUnitFont.Style = []
          YValues.MinorUnitFormat = '%.2f'
          YValues.MinorUnitSpacing = 5.000000000000000000
          YValues.MinorUnitTickMarkSize = 7.000000000000000000
          YValues.MinorUnitTickMarkColor = clSilver
          YValues.Title.Font.Charset = DEFAULT_CHARSET
          YValues.Title.Font.Color = clWindowText
          YValues.Title.Font.Height = -11
          YValues.Title.Font.Name = 'Segoe UI'
          YValues.Title.Font.Style = []
          YValues.Title.TextMargins.Left = 0
          YValues.Title.TextMargins.Top = 0
          YValues.Title.TextMargins.Right = 0
          YValues.Title.TextMargins.Bottom = 0
          YValues.Title.Text = 'Y-Axis Series 2'
          YValues.Positions = []
          Crosshair.XTextStroke.Color = 5644279
          Crosshair.XTextFill.Color = 5644279
          Crosshair.XTextFont.Charset = DEFAULT_CHARSET
          Crosshair.XTextFont.Color = clWhite
          Crosshair.XTextFont.Height = -11
          Crosshair.XTextFont.Name = 'Segoe UI'
          Crosshair.XTextFont.Style = []
          Crosshair.YTextStroke.Color = 5644279
          Crosshair.YTextFill.Color = 5644279
          Crosshair.YTextFont.Charset = DEFAULT_CHARSET
          Crosshair.YTextFont.Color = clWhite
          Crosshair.YTextFont.Height = -11
          Crosshair.YTextFont.Name = 'Segoe UI'
          Crosshair.YTextFont.Style = []
          Crosshair.HorizontalLineStroke.Color = 5644279
          Crosshair.VerticalLineStroke.Color = 5644279
        end>
      Title.Fill.Kind = gfkNone
      Title.Fill.Color = 16775416
      Title.Stroke.Color = clGray
      Title.Font.Charset = DEFAULT_CHARSET
      Title.Font.Color = clWindowText
      Title.Font.Height = -11
      Title.Font.Name = 'Segoe UI'
      Title.Font.Style = []
      Title.Height = 35.000000000000000000
      Title.TextHorizontalAlignment = gtaLeading
      Title.TextMargins.Left = 3
      Title.TextMargins.Top = 3
      Title.TextMargins.Right = 3
      Title.TextMargins.Bottom = 3
      Title.Text = 'Sales Stacked by Year'
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
      TabOrder = 2
      ExplicitLeft = 920
      ExplicitTop = 560
      ExplicitWidth = 550
      ExplicitHeight = 350
      object TMSFNCChartDatabaseAdapter1: TTMSFNCChartDatabaseAdapter
        Left = 472
        Top = 272
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
