object frmMarshalDemo: TfrmMarshalDemo
  Width = 1501
  Height = 1171
  Caption = 'Marshal Demo Web 2023'
  CSSLibrary = cssBootstrap
  ElementFont = efCSS
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -28
  Font.Name = 'Segoe UI'
  Font.Style = []
  FormContainer = 'container'
  ParentFont = False
  OnCreate = WebFormCreate
  object WebHTMLDiv2: TWebHTMLDiv
    Left = 0
    Top = 0
    Width = 1501
    Height = 1171
    ElementClassName = 'theme1 bg-warning w-100 h-100 overflow-hidden'
    HeightStyle = ssPercent
    WidthStyle = ssPercent
    Align = alClient
    ElementFont = efCSS
    Role = ''
    object WebHTMLDiv3: TWebHTMLDiv
      AlignWithMargins = True
      Left = 10
      Top = 10
      Width = 1481
      Height = 1151
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 10
      ElementClassName = 'bg-dark rounded'
      Align = alClient
      ChildOrder = 1
      ElementFont = efCSS
      Role = ''
      object pnlTop: TWebPanel
        AlignWithMargins = True
        Left = 5
        Top = 5
        Width = 1471
        Height = 60
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Align = alTop
        Caption = 'Marshal Web Core Demo'
        ElementPosition = epRelative
        object btnMarshal: TWebButton
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 169
          Height = 54
          Align = alLeft
          Caption = 'Marshal'
          ElementClassName = 'btn btn-primary'
          ElementID = 'marshal-btn'
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
          OnClick = btnMarshalClick
        end
      end
      object wdivVideoCards: TWebHTMLDiv
        Left = 0
        Top = 70
        Width = 1481
        Height = 325
        ElementClassName = 'card-group'
        ElementID = 'vidcards'
        Align = alTop
        ChildOrder = 1
        ElementPosition = epRelative
        ElementFont = efCSS
        HTML.Strings = (
          '  ')
        Role = ''
      end
      object pcFeatures: TWebPageControl
        AlignWithMargins = True
        Left = 10
        Top = 405
        Width = 1461
        Height = 736
        Margins.Left = 10
        Margins.Top = 10
        Margins.Right = 10
        Margins.Bottom = 10
        ElementID = 'pageControl'
        Align = alClient
        ChildOrder = 2
        ElementFont = efCSS
        TabIndex = 0
        TabOrder = 2
        object tiFeatures: TWebTabSheet
          Left = 0
          Top = 20
          Width = 1461
          Height = 716
          ElementClassName = 'rounded bg-secondary'
          Caption = 'Usage'
          ElementFont = efCSS
          object WebHTMLDiv4: TWebHTMLDiv
            Left = 0
            Top = 0
            Width = 1461
            Height = 716
            Align = alClient
            ChildOrder = 1
            ElementFont = efCSS
            Role = ''
            ExplicitLeft = 223
            ExplicitWidth = 1244
            object WebMemo1: TWebMemo
              Left = 0
              Top = 0
              Width = 1461
              Height = 121
              Align = alTop
              AutoSize = False
              ElementClassName = 'form-control'
              ElementFont = efCSS
              HeightPercent = 100.000000000000000000
              Lines.Strings = (
                
                  'This demo is designed to allow you to explore Marshal'#39's features' +
                  ' in the TMS Web Core environment.'
                
                  'The videos above are quick 5 min guided explainations, but here ' +
                  'you can explore at your own pace.')
              SelLength = 0
              SelStart = 198
              WidthPercent = 100.000000000000000000
              ExplicitWidth = 1244
            end
            object WebMemo2: TWebMemo
              Left = 0
              Top = 448
              Width = 1461
              Height = 268
              Align = alBottom
              AutoSize = False
              ElementClassName = 'form-control'
              ElementFont = efCSS
              HeightPercent = 100.000000000000000000
              Lines.Strings = (
                'Some frequent questions include:'
                'Q: Is it possible to inspect runtime created controls?'
                
                  'A: Yes, used the runtime memo tab to learn how Marshal can be re' +
                  'freshed to discover runtime controls.'
                ''
                'Q: Is it possible to inspect frames?'
                
                  'A: Yes, the videos above are a frame and sub-frame combination s' +
                  'o that you can review them in Marshal.')
              SelLength = 0
              SelStart = 337
              WidthPercent = 100.000000000000000000
              ExplicitWidth = 1244
            end
            object WebHTMLSpan1: TWebHTMLSpan
              Left = 0
              Top = 121
              Width = 1461
              Height = 327
              ElementClassName = 'border border-5'
              Align = alClient
              ChildOrder = 3
              ElementFont = efCSS
              Role = ''
              ExplicitLeft = 728
              ExplicitTop = 360
              ExplicitWidth = 100
              ExplicitHeight = 40
              object WebHTMLDiv5: TWebHTMLDiv
                Left = 0
                Top = 0
                Width = 1461
                Height = 327
                Align = alClient
                ChildOrder = 1
                ElementPosition = epRelative
                ElementFont = efCSS
                HTML.Strings = (
                  
                    '<div id="carouselWithCaptions" class="carousel slide" data-bs-ri' +
                    'de="carousel">'
                  '  <ol class="carousel-indicators">'
                  
                    '    <li data-bs-target="#carouselWithCaptions" data-bs-slide-to=' +
                    '"0" class="active"></li>'
                  
                    '    <li data-bs-target="#carouselWithCaptions" data-bs-slide-to=' +
                    '"1"></li>'
                  
                    '    <li data-bs-target="#carouselWithCaptions" data-bs-slide-to=' +
                    '"2"></li>'
                  '  </ol>'
                  '  <div class="carousel-inner">'
                  '    <div class="carousel-item active bg-info">'
                  
                    '      <img src="bootstrap.jpg" class="d-block image-fluid" alt="' +
                    'Web Core Bootstrap">'
                  
                    '      <div class="carousel-caption d-none d-sm-block  text-white' +
                    '-50 bg-dark">'
                  '        <h5>TMS Web Core mixed with some Bootstrap</h5>'
                  
                    '        <p>Web core allows you to mix Delphi, html and bootstrap' +
                    ' for some powerfull building blocks.</p>'
                  
                    '        <p>Let Marshal be the extra tool you wish was in the bro' +
                    'wser console to fix your bootstrap classes to get that perfect u' +
                    'i.</p>'
                  
                    '        <p>This demo has some mixes of pure bootstrap, such as t' +
                    'his carousel which is contained in a WebHtmlDiv components html ' +
                    'property as well as '
                  
                    'the Youtube videos above which are a bootstrap card group built ' +
                    'with frames and WebHtmlDiv components .</p>'
                  '      </div>'
                  '    </div>'
                  '    <div class="carousel-item bg-info">'
                  
                    '      <img src="cardgroup.jpg" class="d-block image-fluid" alt="' +
                    'Cardgroup slide">'
                  
                    '      <div class="carousel-caption d-none d-sm-block text-white-' +
                    '50 bg-dark">'
                  '        <h5>Bootstrap card-group from TDataSet</h5>'
                  
                    '        <p>The videos are populated from a clientdataset and dis' +
                    'played using a combination of bootstrap and frames.</p>'
                  '      </div>'
                  '    </div>'
                  '    <div class="carousel-item bg-info">'
                  
                    '      <img src="github.jpg" class="d-block image-fluid" alt="Car' +
                    'dgroup slide">'
                  
                    '      <div class="carousel-caption d-none d-sm-block text-white-' +
                    '50 bg-dark">'
                  '        <h5>Source code available on GitHub</h5>'
                  
                    '        <p>View the Delphi source code to explore how this demo ' +
                    'was built.</p>'
                  '      </div>'
                  '    </div>'
                  '  </div>'
                  
                    '  <a class="carousel-control-prev" href="#carouselWithCaptions" ' +
                    'role="button" data-bs-slide="prev">'
                  
                    '    <span class="carousel-control-prev-icon" aria-hidden="true">' +
                    '</span>'
                  '    <span class="visually-hidden">Previous</span>'
                  '  </a>'
                  
                    '  <a class="carousel-control-next" href="#carouselWithCaptions" ' +
                    'role="button" data-bs-slide="next">'
                  
                    '    <span class="carousel-control-next-icon" aria-hidden="true">' +
                    '</span>'
                  '    <span class="visually-hidden">Next</span>'
                  '  </a>'
                  '</div>')
                Role = ''
                ExplicitLeft = 728
                ExplicitTop = 160
                ExplicitWidth = 100
                ExplicitHeight = 40
              end
            end
          end
        end
        object tiRunTimeMemo: TWebTabSheet
          Left = 0
          Top = 20
          Width = 1461
          Height = 716
          Caption = 'RunTime Memo'
          ChildOrder = 1
          object pnlRTMemoTools: TWebPanel
            Left = 0
            Top = 0
            Width = 1461
            Height = 60
            Align = alTop
            Caption = 'RT Memo Tools'
            object btnMemoAdd: TWebButton
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 169
              Height = 54
              Align = alLeft
              Caption = 'Add Memo'
              HeightPercent = 100.000000000000000000
              WidthPercent = 100.000000000000000000
              OnClick = btnMemoAddClick
            end
            object btnMemoDelete: TWebButton
              AlignWithMargins = True
              Left = 1299
              Top = 3
              Width = 159
              Height = 54
              Align = alRight
              Caption = 'Delete Memo'
              ChildOrder = 1
              HeightPercent = 100.000000000000000000
              WidthPercent = 100.000000000000000000
              OnClick = btnMemoDeleteClick
            end
          end
          object memoRTCompFooter: TWebMemo
            AlignWithMargins = True
            Left = 3
            Top = 538
            Width = 1455
            Height = 175
            Align = alBottom
            AutoSize = False
            HeightPercent = 100.000000000000000000
            Lines.Strings = (
              'Click on Add Memo to create a memo in the client area at runtime'
              'Refresh the tree in Marshal'
              'Click on Delete memo to remove the runtime object'
              'Refresh the form in Marshal')
            SelLength = 0
            SelStart = 175
            WidthPercent = 100.000000000000000000
          end
        end
        object tiFrames: TWebTabSheet
          Left = 0
          Top = 20
          Width = 1461
          Height = 716
          ElementClassName = 'rounded bg-secondary'
          Caption = 'Frames'
          ChildOrder = 2
          ElementFont = efCSS
          TabVisible = False
          object pnlFramesTools: TWebPanel
            Left = 217
            Top = 0
            Width = 1244
            Height = 716
            Align = alClient
            Caption = 'pnlFramesTools'
            ExplicitLeft = 0
            ExplicitWidth = 1461
            ExplicitHeight = 60
            object WebLabel1: TWebLabel
              Left = 0
              Top = 0
              Width = 1244
              Height = 29
              Align = alTop
              Alignment = taCenter
              Caption = 'Design Time Frames'
              HeightPercent = 100.000000000000000000
              WidthPercent = 100.000000000000000000
              ExplicitLeft = 2
              ExplicitTop = 2
              ExplicitWidth = 1240
            end
            object wpFrameHost: TWebPanel
              Left = 0
              Top = 29
              Width = 1244
              Height = 687
              Align = alClient
              Caption = 'wpFrameHost'
              ChildOrder = 2
              ExplicitLeft = 2
              ExplicitTop = 2
              ExplicitWidth = 1240
              ExplicitHeight = 29
              object WebHTMLDiv1: TWebHTMLDiv
                Left = 0
                Top = 0
                Width = 1244
                Height = 687
                Align = alClient
                Role = ''
                ExplicitWidth = 1240
                ExplicitHeight = 29
              end
            end
          end
          object lbFeatures: TWebListBox
            Left = 0
            Top = 0
            Width = 217
            Height = 716
            Align = alLeft
            HeightPercent = 100.000000000000000000
            ItemHeight = 38
            Visible = False
            WidthPercent = 100.000000000000000000
            ItemIndex = -1
          end
        end
      end
    end
  end
  object WebElementActionList1: TWebElementActionList
    Actions = <>
    Left = 1032
    Top = 640
  end
end
