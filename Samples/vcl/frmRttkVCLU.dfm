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
  OnActivate = FormActivate
  OnCreate = FormCreate
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
    ActivePage = tsRunTimeComp
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
        Width = 627
        Height = 13
        Align = alTop
        Caption = 'Label2'
        ExplicitWidth = 31
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
    object tsRunTimeComp: TTabSheet
      Caption = 'RT Comps'
      ImageIndex = 2
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 627
        Height = 41
        Align = alTop
        Caption = 'Panel2'
        TabOrder = 0
        ExplicitLeft = 224
        ExplicitTop = 120
        ExplicitWidth = 185
        object btnDeleteMemo: TSpeedButton
          Left = 504
          Top = 1
          Width = 122
          Height = 39
          Align = alRight
          Caption = 'Delete Memo'
          OnClick = btnDeleteMemoClick
        end
        object btnAddMemo: TButton
          Left = 1
          Top = 1
          Width = 75
          Height = 39
          Align = alLeft
          Caption = 'Add Memo'
          TabOrder = 0
          OnClick = btnAddMemoClick
          ExplicitLeft = 280
          ExplicitTop = 8
          ExplicitHeight = 25
        end
      end
      object memoRTCompFooter: TMemo
        Left = 0
        Top = 197
        Width = 627
        Height = 89
        Align = alBottom
        Lines.Strings = (
          'Clcik on Add Memo to create a memo in the client area at runtime'
          'Refresh the tree in Marshal'
          'Click on Delete memo to remove the runtime object'
          'Refresh the form in Marshal')
        TabOrder = 1
        ExplicitLeft = 224
        ExplicitTop = -24
        ExplicitWidth = 185
      end
    end
  end
end
