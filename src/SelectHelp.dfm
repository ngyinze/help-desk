object FormSelectHelp: TFormSelectHelp
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
  DesignSize = (
    385
    294)
  TextHeight = 15
  object listView: TdxListViewControl
    Left = 8
    Top = 33
    Width = 369
    Height = 253
    Anchors = [akLeft, akTop, akRight, akBottom]
    Fonts.AssignedValues = [Item]
    Fonts.Item.Charset = DEFAULT_CHARSET
    Fonts.Item.Color = clDefault
    Fonts.Item.Height = -12
    Fonts.Item.Name = 'Segoe UI'
    Fonts.Item.Style = []
    ReadOnly = True
    TabOrder = 0
    ViewStyle = List
    OnDblClick = listViewDblClick
  end
  object cxButton1: TcxButton
    Left = 302
    Top = 8
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Hide'
    TabOrder = 1
    OnClick = StaticTxtDblClick
  end
end
