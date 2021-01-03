object frmRTTKVCL: TfrmRTTKVCL
  Left = 0
  Top = 0
  Caption = 'RTTK VCL Sample'
  ClientHeight = 336
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 635
    Height = 41
    Align = alTop
    TabOrder = 0
    ExplicitLeft = 232
    ExplicitTop = 56
    ExplicitWidth = 185
  end
  object pcWorkSpace: TPageControl
    Left = 0
    Top = 41
    Width = 635
    Height = 295
    ActivePage = tsIfDef
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 280
    ExplicitTop = 48
    ExplicitWidth = 289
    ExplicitHeight = 193
    object tsLabel: TTabSheet
      Caption = 'Label'
      ExplicitWidth = 281
      ExplicitHeight = 165
      object pnlFoxLabel: TPanel
        Left = 160
        Top = 108
        Width = 121
        Height = 57
        Align = alCustom
        TabOrder = 0
        object Label1: TLabel
          Left = 1
          Top = 1
          Width = 235
          Height = 55
          Align = alLeft
          Caption = 'Fox Jump Status'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ExplicitHeight = 39
        end
        object Edit1: TEdit
          Left = 0
          Top = 16
          Width = 121
          Height = 21
          TabOrder = 0
          Text = 'The Quick Brown Fox Jumped over the lazy Moon'
        end
      end
    end
    object tsIfDef: TTabSheet
      Caption = 'If Defined'
      ImageIndex = 1
      ExplicitWidth = 281
      ExplicitHeight = 165
      object Label2: TLabel
        Left = 0
        Top = 0
        Width = 627
        Height = 13
        Align = alTop
        Caption = 'Label2'
        ExplicitLeft = 376
        ExplicitTop = 128
        ExplicitWidth = 31
      end
      object Panel1: TPanel
        Left = 224
        Top = 112
        Width = 185
        Height = 81
        Align = alCustom
        Caption = 'Application Help '
        TabOrder = 0
        VerticalAlignment = taAlignTop
        object btnMarshal: TButton
          Left = 1
          Top = 55
          Width = 183
          Height = 25
          Align = alBottom
          Caption = 'Marshal'
          TabOrder = 0
          OnClick = btnMarshalClick
          ExplicitLeft = 110
          ExplicitTop = 8
          ExplicitWidth = 75
        end
      end
    end
  end
end
