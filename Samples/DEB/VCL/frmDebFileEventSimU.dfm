object frmDebFileEvents: TfrmDebFileEvents
  Left = 0
  Top = 0
  Caption = 'DEB File Events Simulation'
  ClientHeight = 941
  ClientWidth = 1525
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesigned
  OnCreate = FormCreate
  TextHeight = 15
  object lbFiles: TTMSFNCListBox
    Left = 0
    Top = 0
    Width = 200
    Height = 921
    Align = alLeft
    ParentDoubleBuffered = False
    DoubleBuffered = True
    TabOrder = 0
    ItemsAppearance.Font.Charset = DEFAULT_CHARSET
    ItemsAppearance.Font.Color = clBlack
    ItemsAppearance.Font.Height = -59
    ItemsAppearance.Font.Name = 'Segoe UI'
    ItemsAppearance.Font.Style = []
    ItemsAppearance.Fill.Color = -1
    ItemsAppearance.Stroke.Kind = gskNone
    ItemsAppearance.Stroke.Color = 11119017
    ItemsAppearance.SelectedFill.Color = 16297243
    ItemsAppearance.SelectedStroke.Color = 16297243
    ItemsAppearance.DisabledFill.Color = 11119017
    ItemsAppearance.DisabledStroke.Kind = gskNone
    ItemsAppearance.DisabledStroke.Color = 11119017
    ItemsAppearance.FixedHeight = 126.562500000000000000
    Items = <
      item
        Text = 'Mercedes'
      end
      item
        Text = 'Audi'
      end
      item
        Text = 'BMW'
      end
      item
        Text = 'Land Rover'
      end
      item
        Text = 'Bugatti'
      end>
    Header.Text = 'Header'
    Header.Font.Charset = DEFAULT_CHARSET
    Header.Font.Color = clBlack
    Header.Font.Height = -59
    Header.Font.Name = 'Segoe UI'
    Header.Font.Style = []
    Header.Stroke.Color = 11119017
    Header.Size = 126.562500000000000000
    Header.SortIndicatorColor = 11829830
    Interaction.Filtering.DropDownWidth = 507
    Interaction.Filtering.DropDownHeight = 608
    ExplicitHeight = 941
  end
  object Panel1: TPanel
    Left = 200
    Top = 0
    Width = 1325
    Height = 921
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 1
    ExplicitHeight = 941
    object chart: TTMSFNCChart
      Left = 1
      Top = 1
      Width = 1323
      Height = 350
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
          Fill.Color = 10061943
          LegendText = 'Serie 1'
          Labels.Fill.Color = 16775416
          Labels.Font.Charset = DEFAULT_CHARSET
          Labels.Font.Color = clWindowText
          Labels.Font.Height = -11
          Labels.Font.Name = 'Segoe UI'
          Labels.Font.Style = []
          Labels.Format = '%.2f'
          Labels.OffsetY = -10.000000000000000000
          Labels.Stroke.Color = clGray
          Markers.Fill.Color = 10061943
          Markers.Height = 10.000000000000000000
          Markers.Stroke.Color = 5197615
          Markers.Visible = True
          Markers.Width = 10.000000000000000000
          MaxX = 10.000000000000000000
          MaxY = 10.000000000000000000
          MaxYOffsetPercentage = 10.000000000000000000
          Offset3DX = 15.000000000000000000
          Offset3DY = 15.000000000000000000
          Points = <
            item
              Annotations = <>
              YValue = 123.000000000000000000
              YValueSecond = 83.000000000000000000
              YValueVariable = 103.000000000000000000
              YValueLow = -18.000000000000000000
              YValueClose = 117.000000000000000000
              YValueHigh = 123.000000000000000000
              YValueOpen = 122.000000000000000000
              YValueMedian = 117.000000000000000000
            end
            item
              Annotations = <>
              XValue = 1.000000000000000000
              YValue = 110.000000000000000000
              YValueSecond = 70.000000000000000000
              YValueVariable = 90.000000000000000000
              YValueLow = 78.000000000000000000
              YValueClose = 100.000000000000000000
              YValueHigh = 110.000000000000000000
              YValueOpen = 113.000000000000000000
              YValueMedian = 117.000000000000000000
            end
            item
              Annotations = <>
              XValue = 2.000000000000000000
              YValue = 73.000000000000000000
              YValueSecond = 33.000000000000000000
              YValueVariable = 53.000000000000000000
              YValueLow = -17.000000000000000000
              YValueClose = 79.000000000000000000
              YValueHigh = 73.000000000000000000
              YValueOpen = 71.000000000000000000
              YValueMedian = 70.000000000000000000
            end
            item
              Annotations = <>
              XValue = 3.000000000000000000
              YValue = 56.000000000000000000
              YValueSecond = 16.000000000000000000
              YValueVariable = 36.000000000000000000
              YValueLow = 46.000000000000000000
              YValueClose = 62.000000000000000000
              YValueHigh = 56.000000000000000000
              YValueOpen = 52.000000000000000000
              YValueMedian = 51.000000000000000000
            end
            item
              Annotations = <>
              XValue = 4.000000000000000000
              YValue = 136.000000000000000000
              YValueSecond = 96.000000000000000000
              YValueVariable = 116.000000000000000000
              YValueLow = -3.000000000000000000
              YValueClose = 129.000000000000000000
              YValueHigh = 136.000000000000000000
              YValueOpen = 131.000000000000000000
              YValueMedian = 132.000000000000000000
            end
            item
              Annotations = <>
              XValue = 5.000000000000000000
              YValue = 27.000000000000000000
              YValueSecond = -13.000000000000000000
              YValueVariable = 7.000000000000000000
              YValueLow = 12.000000000000000000
              YValueClose = 25.000000000000000000
              YValueHigh = 27.000000000000000000
              YValueOpen = 28.000000000000000000
              YValueMedian = 23.000000000000000000
            end
            item
              Annotations = <>
              XValue = 6.000000000000000000
              YValue = 29.000000000000000000
              YValueSecond = -11.000000000000000000
              YValueVariable = 9.000000000000000000
              YValueLow = -2.000000000000000000
              YValueClose = 23.000000000000000000
              YValueHigh = 29.000000000000000000
              YValueOpen = 31.000000000000000000
              YValueMedian = 27.000000000000000000
            end
            item
              Annotations = <>
              XValue = 7.000000000000000000
              YValue = 71.000000000000000000
              YValueSecond = 31.000000000000000000
              YValueVariable = 51.000000000000000000
              YValueLow = 17.000000000000000000
              YValueClose = 77.000000000000000000
              YValueHigh = 71.000000000000000000
              YValueOpen = 72.000000000000000000
              YValueMedian = 70.000000000000000000
            end
            item
              Annotations = <>
              XValue = 8.000000000000000000
              YValue = 90.000000000000000000
              YValueSecond = 50.000000000000000000
              YValueVariable = 70.000000000000000000
              YValueLow = 36.000000000000000000
              YValueClose = 99.000000000000000000
              YValueHigh = 90.000000000000000000
              YValueOpen = 85.000000000000000000
              YValueMedian = 85.000000000000000000
            end
            item
              Annotations = <>
              XValue = 9.000000000000000000
              YValue = 62.000000000000000000
              YValueSecond = 22.000000000000000000
              YValueVariable = 42.000000000000000000
              YValueLow = 12.000000000000000000
              YValueClose = 56.000000000000000000
              YValueHigh = 62.000000000000000000
              YValueOpen = 60.000000000000000000
              YValueMedian = 61.000000000000000000
            end
            item
              Annotations = <>
              XValue = 10.000000000000000000
              YValue = 73.000000000000000000
              YValueSecond = 33.000000000000000000
              YValueVariable = 53.000000000000000000
              YValueLow = 5.000000000000000000
              YValueClose = 75.000000000000000000
              YValueHigh = 73.000000000000000000
              YValueOpen = 70.000000000000000000
              YValueMedian = 73.000000000000000000
            end>
          Legend.Fill.Color = 16775416
          Legend.Font.Charset = DEFAULT_CHARSET
          Legend.Font.Color = clWindowText
          Legend.Font.Height = -11
          Legend.Font.Name = 'Segoe UI'
          Legend.Font.Style = []
          Legend.Left = -10.000000000000000000
          Legend.Stroke.Color = clGray
          Stroke.Color = 5197615
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
          XValues.Title.Text = 'X-Axis Serie 1'
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
          YValues.Title.Text = 'Y-Axis Serie 1'
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
          Fill.Color = 11186720
          LegendText = 'Serie 2'
          Labels.Fill.Color = 16775416
          Labels.Font.Charset = DEFAULT_CHARSET
          Labels.Font.Color = clWindowText
          Labels.Font.Height = -11
          Labels.Font.Name = 'Segoe UI'
          Labels.Font.Style = []
          Labels.Format = '%.2f'
          Labels.OffsetY = -10.000000000000000000
          Labels.Stroke.Color = clGray
          Markers.Fill.Color = 11186720
          Markers.Height = 10.000000000000000000
          Markers.Stroke.Color = 25600
          Markers.Visible = True
          Markers.Width = 10.000000000000000000
          MaxX = 10.000000000000000000
          MaxY = 10.000000000000000000
          MaxYOffsetPercentage = 10.000000000000000000
          Offset3DX = 15.000000000000000000
          Offset3DY = 15.000000000000000000
          Points = <
            item
              Annotations = <>
              YValue = 44.000000000000000000
              YValueSecond = 4.000000000000000000
              YValueVariable = 24.000000000000000000
              YValueLow = 27.000000000000000000
              YValueClose = 38.000000000000000000
              YValueHigh = 44.000000000000000000
              YValueOpen = 38.000000000000000000
              YValueMedian = 41.000000000000000000
            end
            item
              Annotations = <>
              XValue = 1.000000000000000000
              YValue = 143.000000000000000000
              YValueSecond = 103.000000000000000000
              YValueVariable = 123.000000000000000000
              YValueLow = 14.000000000000000000
              YValueClose = 149.000000000000000000
              YValueHigh = 143.000000000000000000
              YValueOpen = 152.000000000000000000
              YValueMedian = 156.000000000000000000
            end
            item
              Annotations = <>
              XValue = 2.000000000000000000
              YValue = 67.000000000000000000
              YValueSecond = 27.000000000000000000
              YValueVariable = 47.000000000000000000
              YValueLow = 40.000000000000000000
              YValueClose = 73.000000000000000000
              YValueHigh = 67.000000000000000000
              YValueOpen = 75.000000000000000000
              YValueMedian = 74.000000000000000000
            end
            item
              Annotations = <>
              XValue = 3.000000000000000000
              YValue = 59.000000000000000000
              YValueSecond = 19.000000000000000000
              YValueVariable = 39.000000000000000000
              YValueLow = 52.000000000000000000
              YValueClose = 63.000000000000000000
              YValueHigh = 59.000000000000000000
              YValueOpen = 58.000000000000000000
              YValueMedian = 61.000000000000000000
            end
            item
              Annotations = <>
              XValue = 4.000000000000000000
              YValue = 141.000000000000000000
              YValueSecond = 101.000000000000000000
              YValueVariable = 121.000000000000000000
              YValueLow = 43.000000000000000000
              YValueClose = 146.000000000000000000
              YValueHigh = 141.000000000000000000
              YValueOpen = 132.000000000000000000
              YValueMedian = 131.000000000000000000
            end
            item
              Annotations = <>
              XValue = 5.000000000000000000
              YValue = 41.000000000000000000
              YValueSecond = 1.000000000000000000
              YValueVariable = 21.000000000000000000
              YValueLow = 57.000000000000000000
              YValueClose = 40.000000000000000000
              YValueHigh = 41.000000000000000000
              YValueOpen = 31.000000000000000000
              YValueMedian = 31.000000000000000000
            end
            item
              Annotations = <>
              XValue = 6.000000000000000000
              YValue = 68.000000000000000000
              YValueSecond = 28.000000000000000000
              YValueVariable = 48.000000000000000000
              YValueLow = 15.000000000000000000
              YValueClose = 70.000000000000000000
              YValueHigh = 68.000000000000000000
              YValueOpen = 63.000000000000000000
              YValueMedian = 59.000000000000000000
            end
            item
              Annotations = <>
              XValue = 7.000000000000000000
              YValue = 80.000000000000000000
              YValueSecond = 40.000000000000000000
              YValueVariable = 60.000000000000000000
              YValueLow = -11.000000000000000000
              YValueClose = 71.000000000000000000
              YValueHigh = 80.000000000000000000
              YValueOpen = 87.000000000000000000
              YValueMedian = 89.000000000000000000
            end
            item
              Annotations = <>
              XValue = 8.000000000000000000
              YValue = 51.000000000000000000
              YValueSecond = 11.000000000000000000
              YValueVariable = 31.000000000000000000
              YValueLow = -12.000000000000000000
              YValueClose = 44.000000000000000000
              YValueHigh = 51.000000000000000000
              YValueOpen = 51.000000000000000000
              YValueMedian = 51.000000000000000000
            end
            item
              Annotations = <>
              XValue = 9.000000000000000000
              YValue = 28.000000000000000000
              YValueSecond = -12.000000000000000000
              YValueVariable = 8.000000000000000000
              YValueLow = -6.000000000000000000
              YValueClose = 30.000000000000000000
              YValueHigh = 28.000000000000000000
              YValueOpen = 19.000000000000000000
              YValueMedian = 17.000000000000000000
            end
            item
              Annotations = <>
              XValue = 10.000000000000000000
              YValue = 132.000000000000000000
              YValueSecond = 92.000000000000000000
              YValueVariable = 112.000000000000000000
              YValueLow = 16.000000000000000000
              YValueClose = 128.000000000000000000
              YValueHigh = 132.000000000000000000
              YValueOpen = 133.000000000000000000
              YValueMedian = 133.000000000000000000
            end>
          Legend.Fill.Color = 16775416
          Legend.Font.Charset = DEFAULT_CHARSET
          Legend.Font.Color = clWindowText
          Legend.Font.Height = -11
          Legend.Font.Name = 'Segoe UI'
          Legend.Font.Style = []
          Legend.Left = -10.000000000000000000
          Legend.Stroke.Color = clGray
          Stroke.Color = 25600
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
          XValues.Title.Text = 'X-Axis Serie 2'
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
          YValues.Title.Text = 'Y-Axis Serie 2'
          YValues.Positions = []
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
          Fill.Color = 42495
          LegendText = 'Serie 3'
          Labels.Fill.Color = 16775416
          Labels.Font.Charset = DEFAULT_CHARSET
          Labels.Font.Color = clWindowText
          Labels.Font.Height = -11
          Labels.Font.Name = 'Segoe UI'
          Labels.Font.Style = []
          Labels.Format = '%.2f'
          Labels.OffsetY = -10.000000000000000000
          Labels.Stroke.Color = clGray
          Markers.Fill.Color = 42495
          Markers.Height = 10.000000000000000000
          Markers.Stroke.Color = 139
          Markers.Visible = True
          Markers.Width = 10.000000000000000000
          MaxX = 10.000000000000000000
          MaxY = 10.000000000000000000
          MaxYOffsetPercentage = 10.000000000000000000
          Offset3DX = 15.000000000000000000
          Offset3DY = 15.000000000000000000
          Points = <
            item
              Annotations = <>
              YValue = 75.000000000000000000
              YValueSecond = 35.000000000000000000
              YValueVariable = 55.000000000000000000
              YValueLow = 77.000000000000000000
              YValueClose = 79.000000000000000000
              YValueHigh = 75.000000000000000000
              YValueOpen = 77.000000000000000000
              YValueMedian = 79.000000000000000000
            end
            item
              Annotations = <>
              XValue = 1.000000000000000000
              YValue = 153.000000000000000000
              YValueSecond = 113.000000000000000000
              YValueVariable = 133.000000000000000000
              YValueLow = 43.000000000000000000
              YValueClose = 152.000000000000000000
              YValueHigh = 153.000000000000000000
              YValueOpen = 154.000000000000000000
              YValueMedian = 155.000000000000000000
            end
            item
              Annotations = <>
              XValue = 2.000000000000000000
              YValue = 63.000000000000000000
              YValueSecond = 23.000000000000000000
              YValueVariable = 43.000000000000000000
              YValueLow = 67.000000000000000000
              YValueClose = 62.000000000000000000
              YValueHigh = 63.000000000000000000
              YValueOpen = 54.000000000000000000
              YValueMedian = 50.000000000000000000
            end
            item
              Annotations = <>
              XValue = 3.000000000000000000
              YValue = 107.000000000000000000
              YValueSecond = 67.000000000000000000
              YValueVariable = 87.000000000000000000
              YValueLow = 75.000000000000000000
              YValueClose = 112.000000000000000000
              YValueHigh = 107.000000000000000000
              YValueOpen = 103.000000000000000000
              YValueMedian = 101.000000000000000000
            end
            item
              Annotations = <>
              XValue = 4.000000000000000000
              YValue = 92.000000000000000000
              YValueSecond = 52.000000000000000000
              YValueVariable = 72.000000000000000000
              YValueLow = -14.000000000000000000
              YValueClose = 94.000000000000000000
              YValueHigh = 92.000000000000000000
              YValueOpen = 99.000000000000000000
              YValueMedian = 99.000000000000000000
            end
            item
              Annotations = <>
              XValue = 5.000000000000000000
              YValue = 93.000000000000000000
              YValueSecond = 53.000000000000000000
              YValueVariable = 73.000000000000000000
              YValueLow = 47.000000000000000000
              YValueClose = 102.000000000000000000
              YValueHigh = 93.000000000000000000
              YValueOpen = 100.000000000000000000
              YValueMedian = 98.000000000000000000
            end
            item
              Annotations = <>
              XValue = 6.000000000000000000
              YValue = 87.000000000000000000
              YValueSecond = 47.000000000000000000
              YValueVariable = 67.000000000000000000
              YValueLow = 21.000000000000000000
              YValueClose = 96.000000000000000000
              YValueHigh = 87.000000000000000000
              YValueOpen = 96.000000000000000000
              YValueMedian = 93.000000000000000000
            end
            item
              Annotations = <>
              XValue = 7.000000000000000000
              YValue = 147.000000000000000000
              YValueSecond = 107.000000000000000000
              YValueVariable = 127.000000000000000000
              YValueLow = -12.000000000000000000
              YValueClose = 138.000000000000000000
              YValueHigh = 147.000000000000000000
              YValueOpen = 153.000000000000000000
              YValueMedian = 152.000000000000000000
            end
            item
              Annotations = <>
              XValue = 8.000000000000000000
              YValue = 25.000000000000000000
              YValueSecond = -15.000000000000000000
              YValueVariable = 5.000000000000000000
              YValueLow = -10.000000000000000000
              YValueClose = 21.000000000000000000
              YValueHigh = 25.000000000000000000
              YValueOpen = 15.000000000000000000
              YValueMedian = 13.000000000000000000
            end
            item
              Annotations = <>
              XValue = 9.000000000000000000
              YValue = 75.000000000000000000
              YValueSecond = 35.000000000000000000
              YValueVariable = 55.000000000000000000
              YValueLow = -3.000000000000000000
              YValueClose = 66.000000000000000000
              YValueHigh = 75.000000000000000000
              YValueOpen = 81.000000000000000000
              YValueMedian = 78.000000000000000000
            end
            item
              Annotations = <>
              XValue = 10.000000000000000000
              YValue = 145.000000000000000000
              YValueSecond = 105.000000000000000000
              YValueVariable = 125.000000000000000000
              YValueLow = 12.000000000000000000
              YValueClose = 150.000000000000000000
              YValueHigh = 145.000000000000000000
              YValueOpen = 135.000000000000000000
              YValueMedian = 132.000000000000000000
            end>
          Legend.Fill.Color = 16775416
          Legend.Font.Charset = DEFAULT_CHARSET
          Legend.Font.Color = clWindowText
          Legend.Font.Height = -11
          Legend.Font.Name = 'Segoe UI'
          Legend.Font.Style = []
          Legend.Left = -10.000000000000000000
          Legend.Stroke.Color = clGray
          Stroke.Color = 139
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
          XValues.Title.Text = 'X-Axis Serie 3'
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
          YValues.Title.Text = 'Y-Axis Serie 3'
          YValues.Positions = []
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
      DefaultLoadOptions.XValuesFormatString = '%.0f'
      DefaultLoadOptions.YValuesFormatString = '%.2f'
      DefaultLoadOptions.MaxYOffsetPercentage = 5.000000000000000000
      Align = alTop
      TabOrder = 0
    end
    object cgControls: TTMSFNCCheckGroup
      Left = 24
      Top = 400
      Width = 155
      Height = 105
      ParentDoubleBuffered = False
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentColor = True
      TabOrder = 1
      Items.Strings = (
        'BMW'
        'Mercedes'
        'Audi'
        'Bugatti')
      Title.Font.Charset = DEFAULT_CHARSET
      Title.Font.Color = clWindowText
      Title.Font.Height = -11
      Title.Font.Name = 'Segoe UI'
      Title.Font.Style = []
      Fill.Kind = gfkNone
      OnCheckBoxClick = cgControlsCheckBoxClick
    end
  end
  object TMSFNCChartEditorDialog1: TTMSFNCChartEditorDialog
    Left = 552
    Top = 448
    Width = 39
    Height = 39
    Visible = True
    Chart = chart
  end
  object Button1: TButton
    Left = 632
    Top = 496
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 3
    OnClick = Button1Click
  end
  object TMSFNCStatusBar1: TTMSFNCStatusBar
    Left = 0
    Top = 921
    Width = 1525
    Height = 20
    ParentDoubleBuffered = False
    DoubleBuffered = True
    TabOrder = 4
    Panels = <
      item
        Text = '07:01:26'
        Style = spsTime
        Alignment = taRightJustify
        Width = 50
        Progress.Level0Fill.Color = clLime
        Progress.Level1Fill.Color = clYellow
        Progress.Level2Fill.Color = 42495
        Progress.Level3Fill.Color = clRed
        Progress.Position = 0
      end>
    PanelAppearance.Font.Charset = DEFAULT_CHARSET
    PanelAppearance.Font.Color = clWindowText
    PanelAppearance.Font.Height = -11
    PanelAppearance.Font.Name = 'Segoe UI'
    PanelAppearance.Font.Style = []
    ExplicitLeft = 776
    ExplicitTop = 488
    ExplicitWidth = 0
  end
end
