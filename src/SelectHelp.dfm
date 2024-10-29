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
  OnShow = FormShow
  TextHeight = 15
  object StaticTxt: TStaticText
    Left = 8
    Top = 8
    Width = 68
    Height = 19
    Caption = 'Hide Guides'
    TabOrder = 0
    OnDblClick = StaticTxtDblClick
  end
  object listView: TdxListViewControl
    Left = 8
    Top = 33
    Width = 369
    Height = 224
    Fonts.AssignedValues = [Item]
    Fonts.Item.Charset = DEFAULT_CHARSET
    Fonts.Item.Color = clDefault
    Fonts.Item.Height = -12
    Fonts.Item.Name = 'Segoe UI'
    Fonts.Item.Style = []
    ReadOnly = True
    TabOrder = 1
    ViewStyle = List
    OnDblClick = listViewDblClick
  end
end
