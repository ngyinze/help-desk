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
  object lvSelect: TcxListView
    Left = 8
    Top = 8
    Width = 369
    Height = 274
    Columns = <>
    HideSelection = False
    Items.ItemData = {
      05C40000000300000000000000FFFFFFFFFFFFFFFF00000000FFFFFFFF000000
      000E430072006500610074006500200049006E0076006F006900630065000000
      0000FFFFFFFFFFFFFFFF00000000FFFFFFFF0000000010430072006500610074
      006500200045002D0049006E0076006F0069006300650000000000FFFFFFFFFF
      FFFFFF00000000FFFFFFFF000000001D43007200650061007400650020004300
      6F006E0073006F006C00690064006100740065006400200045002D0049006E00
      76006F00690063006500}
    ReadOnly = True
    Style.Color = clHighlightText
    Style.TextColor = clForestgreen
    TabOrder = 0
    ViewStyle = vsTile
    OnDblClick = lvSelectDblClick
  end
end
