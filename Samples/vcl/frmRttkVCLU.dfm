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
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 635
    Height = 22
    Align = alTop
    TabOrder = 0
    object SERTTKMarshal1: TSERTTKMarshal
      Left = 1
      Top = 1
      Width = 75
      Height = 20
      Align = alLeft
      Caption = 'Marshal'
      TabOrder = 0
    end
  end
  object pcWorkSpace: TPageControl
    Left = 0
    Top = 22
    Width = 635
    Height = 314
    ActivePage = tsLabel
    Align = alClient
    TabOrder = 1
    object tsLabel: TTabSheet
      Caption = 'Label'
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
      object ListBox1: TListBox
        Left = 0
        Top = 0
        Width = 121
        Height = 286
        Align = alLeft
        ItemHeight = 13
        TabOrder = 1
      end
    end
    object tsIfDef: TTabSheet
      Caption = 'If Defined'
      ImageIndex = 1
      object Label2: TLabel
        Left = 0
        Top = 0
        Width = 31
        Height = 13
        Align = alTop
        Caption = 'Label2'
      end
      object Panel1: TPanel
        Left = 224
        Top = 112
        Width = 185
        Height = 81
        Align = alCustom
        BorderStyle = bsSingle
        Caption = 'Application Help : Disabled in  release'
        TabOrder = 0
        VerticalAlignment = taAlignTop
        object btnMarshal: TButton
          Left = 1
          Top = 51
          Width = 179
          Height = 25
          Align = alBottom
          Caption = 'Marshal'
          TabOrder = 0
          OnClick = btnMarshalClick
        end
      end
    end
  end
end
