object frmYouTubeCard: TfrmYouTubeCard
  Left = 0
  Top = 0
  Width = 640
  Height = 480
  Align = alClient
  TabOrder = 0
  object wdivCardRow: TWebHTMLDiv
    Left = 0
    Top = 0
    Width = 640
    Height = 480
    ElementClassName = 'row g-1'
    WidthStyle = ssAuto
    Align = alClient
    ChildOrder = 2
    ElementPosition = epIgnore
    Role = ''
    ExplicitLeft = 320
    ExplicitTop = 240
    ExplicitWidth = 100
    ExplicitHeight = 40
    object wdivVideo: TWebHTMLDiv
      Left = 0
      Top = 0
      Width = 377
      Height = 480
      ElementClassName = 'col-6'
      HeightStyle = ssAuto
      WidthStyle = ssAuto
      Align = alLeft
      ChildOrder = 2
      ElementPosition = epIgnore
      Role = ''
      object WebYoutube1: TWebYoutube
        Left = 0
        Top = 0
        Width = 377
        Height = 480
        ParentCustomHint = False
        HeightStyle = ssAuto
        WidthStyle = ssAuto
        Align = alClient
        AllowFullScreen = True
        AutoPlay = False
        ExplicitLeft = -231
        ExplicitTop = -47
        ExplicitWidth = 480
        ExplicitHeight = 360
      end
    end
  end
end
