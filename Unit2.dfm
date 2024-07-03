object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 524
  ClientWidth = 853
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesigned
  DesignSize = (
    853
    524)
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 443
    Width = 853
    Height = 81
    Align = alBottom
    Caption = 'Panel1'
    TabOrder = 4
  end
  object dxImageSlider2: TdxImageSlider
    Left = 0
    Top = 0
    Width = 853
    Height = 443
    Align = alClient
    AnimationTime = 8000
    Images = cxImageCollection1
    ItemIndex = 0
  end
  object cxButton1: TcxButton
    Left = 24
    Top = 472
    Width = 57
    Height = 25
    Anchors = [akBottom]
    Caption = '<'
    TabOrder = 0
    OnClick = cxButton1Click
  end
  object cxButton2: TcxButton
    Left = 772
    Top = 472
    Width = 57
    Height = 25
    Anchors = [akBottom]
    Caption = '>'
    TabOrder = 1
    OnClick = cxButton2Click
  end
  object StaticText1: TStaticText
    Left = 280
    Top = 468
    Width = 285
    Height = 29
    Anchors = [akBottom]
    Caption = 'Step 1: Enter your payment target'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object cxImageCollection1: TcxImageCollection
    Left = 656
    Top = 8
    object cxImageCollection1Item1: TcxImageCollectionItem
    end
    object cxImageCollection1Item2: TcxImageCollectionItem
    end
    object cxImageCollection1Item3: TcxImageCollectionItem
    end
    object cxImageCollection1Item4: TcxImageCollectionItem
    end
  end
end
