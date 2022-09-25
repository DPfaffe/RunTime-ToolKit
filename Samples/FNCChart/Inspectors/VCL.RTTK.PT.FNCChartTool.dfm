object FrameFNCChartTool: TFrameFNCChartTool
  Left = 0
  Top = 0
  Width = 640
  Height = 480
  TabOrder = 0
  DesignSize = (
    640
    480)
  object TMSFNCChartEditorDialog1: TTMSFNCChartEditorDialog
    Left = 408
    Top = 336
    Width = 39
    Height = 39
    Visible = True
  end
  object Button1: TButton
    Left = 72
    Top = 80
    Width = 283
    Height = 177
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = 'Show Chart Editor'
    TabOrder = 1
    OnClick = Button1Click
  end
end
