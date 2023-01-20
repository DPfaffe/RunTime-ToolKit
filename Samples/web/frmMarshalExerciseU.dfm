object frmMarshalExercise: TfrmMarshalExercise
  Width = 1039
  Height = 868
  Caption = 'Marshal Demo Web 2023'
  CSSLibrary = cssBootstrap
  ElementFont = efCSS
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -18
  Font.Name = 'Tahoma'
  Font.Style = []
  ParentFont = False
  OnCreate = WebFormCreate
  object divTheme: TWebHTMLDiv
    Left = 0
    Top = 0
    Width = 1039
    Height = 868
    ElementClassName = 'theme1 bg-warning w-100 h-100 overflow-hidden'
    Align = alClient
    Role = ''
    object divBody: TWebScrollBox
      AlignWithMargins = True
      Left = 10
      Top = 10
      Width = 1019
      Height = 848
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 10
      ElementClassName = 'bg-dark rounded'
      Align = alClient
      BorderStyle = bsSingle
      object pnlTop: TWebPanel
        AlignWithMargins = True
        Left = 5
        Top = 5
        Width = 1009
        Height = 60
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        ElementClassName = 'card  '
        Align = alTop
        Caption = 'Marshal Web Core Demo - Fix Stair-Step Videos'
        ElementBodyClassName = 'card-body'
        ElementFont = efCSS
        ElementPosition = epRelative
        object btnMarshal: TWebButton
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 125
          Height = 54
          Align = alLeft
          Caption = 'Marshal'
          ElementClassName = 'btn btn-primary'
          ElementID = 'marshal-btn'
          ElementFont = efCSS
          ElementPosition = epRelative
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          WidthStyle = ssAuto
          WidthPercent = 100.000000000000000000
          OnClick = btnMarshalClick
        end
      end
      object wdivVideoCards: TWebHTMLDiv
        AlignWithMargins = True
        Left = 3
        Top = 73
        Width = 1013
        Height = 325
        ElementClassName = 'row'
        ElementID = 'vidcards'
        HeightStyle = ssAuto
        Align = alTop
        ChildOrder = 1
        ElementPosition = epRelative
        ElementFont = efCSS
        HTML.Strings = (
          '  ')
        Role = ''
      end
      object wdivNotes: TWebHTMLDiv
        AlignWithMargins = True
        Left = 3
        Top = 404
        Width = 1013
        Height = 756
        ElementClassName = 'bg-light rounded'
        HeightStyle = ssAuto
        WidthStyle = ssAuto
        Align = alTop
        ChildOrder = 2
        ElementPosition = epRelative
        ElementFont = efCSS
        Role = ''
        object waNotes: TWebAccordion
          AlignWithMargins = True
          Left = 8
          Top = 8
          Width = 997
          Height = 740
          Margins.Left = 8
          Margins.Top = 8
          Margins.Right = 8
          Margins.Bottom = 8
          HeightStyle = ssAuto
          WidthStyle = ssAuto
          Align = alClient
          ChildOrder = 3
          ElementFont = efCSS
          ElementSectionClassName = 'card-header'
          ElementContentClassName = 'card-body'
          ElementPosition = epIgnore
          Sections = <
            item
              Caption = 'Marshal Front End Inspection -  notes and source code'
              Content = 'Contenet for sectino 1'
              Tag = 0
            end
            item
              Caption = 'Release notes - updates to this demo'
              Content = 'Contenet for section 2'
              Tag = 0
            end>
        end
      end
    end
  end
end
