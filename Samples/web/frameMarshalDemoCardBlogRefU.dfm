object frmCardBlogRef: TfrmCardBlogRef
  Left = 0
  Top = 0
  Width = 640
  Height = 480
  Align = alClient
  TabOrder = 0
  object wdivCardHeader: TWebHTMLDiv
    Left = 0
    Top = 0
    Width = 640
    Height = 40
    ElementClassName = 'card-header'
    HeightStyle = ssAuto
    WidthStyle = ssAuto
    Align = alTop
    ElementPosition = epRelative
    Role = ''
    ExplicitLeft = 320
    ExplicitTop = 240
    ExplicitWidth = 100
  end
  object wdivCardBody: TWebHTMLDiv
    Left = 0
    Top = 40
    Width = 640
    Height = 400
    ElementClassName = 'card-body'
    HeightStyle = ssAuto
    WidthStyle = ssAuto
    Align = alClient
    ChildOrder = 1
    ElementPosition = epRelative
    HTML.Strings = (
      'Card Body')
    Role = ''
    ExplicitLeft = 320
    ExplicitTop = 240
    ExplicitWidth = 100
    ExplicitHeight = 40
  end
  object wdivCardFooter: TWebHTMLDiv
    Left = 0
    Top = 440
    Width = 640
    Height = 40
    ElementClassName = 'card-footer'
    HeightStyle = ssAuto
    WidthStyle = ssAuto
    Align = alBottom
    ChildOrder = 2
    ElementPosition = epRelative
    HTML.Strings = (
      'Default Footer')
    Role = ''
    ExplicitLeft = 320
    ExplicitTop = 240
    ExplicitWidth = 100
  end
end
