object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'Select Help'
  ClientHeight = 294
  ClientWidth = 385
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object listView: TcxListView
    Left = 8
    Top = 31
    Width = 369
    Height = 274
    Columns = <>
    HideSelection = False
    Items.ItemData = {
      05AE0000000300000000000000FFFFFFFFFFFFFFFF00000000FFFFFFFF000000
      000E430072006500610074006500200049006E0076006F006900630065000000
      0000FFFFFFFFFFFFFFFF00000000FFFFFFFF000000001645002D0049006E0076
      006F006900630065002000430061006E00630065006C006C006100740069006F
      006E0000000000FFFFFFFFFFFFFFFF00000000FFFFFFFF000000000C43006F00
      6D006D006F006E00200055007300610067006500}
    ReadOnly = True
    Style.Color = clHighlightText
    Style.TextColor = clForestgreen
    TabOrder = 0
    ViewStyle = vsTile
    OnDblClick = listViewDblClick
  end
  object StaticText1: TStaticText
    Left = 8
    Top = 8
    Width = 68
    Height = 19
    Caption = 'Hide Guides'
    TabOrder = 1
    OnDblClick = StaticText1DblClick
  end
end
