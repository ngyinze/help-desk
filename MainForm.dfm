object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 583
  ClientWidth = 1182
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  DesignSize = (
    1182
    583)
  TextHeight = 15
  object Label1: TLabel
    Left = 8
    Top = 27
    Width = 52
    Height = 15
    Caption = 'Customer'
  end
  object cxGrid1: TcxGrid
    AlignWithMargins = True
    Left = -8
    Top = 248
    Width = 1182
    Height = 342
    Cursor = crArrow
    Anchors = [akLeft, akTop, akRight, akBottom]
    BevelKind = bkFlat
    BevelWidth = 3
    TabOrder = 0
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataSource = DataSource2
      DataController.DetailKeyFieldNames = 'sdsDocDetail'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1DTLKEY: TcxGridDBColumn
        DataBinding.FieldName = 'DTLKEY'
        Visible = False
      end
      object cxGrid1DBTableView1DOCKEY: TcxGridDBColumn
        DataBinding.FieldName = 'DOCKEY'
        Visible = False
      end
      object cxGrid1DBTableView1SEQ: TcxGridDBColumn
        DataBinding.FieldName = 'SEQ'
        Visible = False
      end
      object cxGrid1DBTableView1STYLEID: TcxGridDBColumn
        DataBinding.FieldName = 'STYLEID'
        Visible = False
      end
      object cxGrid1DBTableView1NUMBER: TcxGridDBColumn
        DataBinding.FieldName = 'NUMBER'
        Visible = False
      end
      object cxGrid1DBTableView1ITEMCODE: TcxGridDBColumn
        DataBinding.FieldName = 'ITEMCODE'
      end
      object cxGrid1DBTableView1LOCATION: TcxGridDBColumn
        DataBinding.FieldName = 'LOCATION'
        Visible = False
      end
      object cxGrid1DBTableView1BATCH: TcxGridDBColumn
        DataBinding.FieldName = 'BATCH'
        Visible = False
      end
      object cxGrid1DBTableView1DESCRIPTION: TcxGridDBColumn
        DataBinding.FieldName = 'DESCRIPTION'
        Width = 426
      end
      object cxGrid1DBTableView1PROJECT: TcxGridDBColumn
        DataBinding.FieldName = 'PROJECT'
        Visible = False
      end
      object cxGrid1DBTableView1DESCRIPTION2: TcxGridDBColumn
        DataBinding.FieldName = 'DESCRIPTION2'
        Visible = False
      end
      object cxGrid1DBTableView1DESCRIPTION3: TcxGridDBColumn
        DataBinding.FieldName = 'DESCRIPTION3'
        Visible = False
      end
      object cxGrid1DBTableView1PERMITNO: TcxGridDBColumn
        DataBinding.FieldName = 'PERMITNO'
        Visible = False
      end
      object cxGrid1DBTableView1QTY: TcxGridDBColumn
        DataBinding.FieldName = 'QTY'
      end
      object cxGrid1DBTableView1UOM: TcxGridDBColumn
        DataBinding.FieldName = 'UOM'
        Visible = False
      end
      object cxGrid1DBTableView1RATE: TcxGridDBColumn
        DataBinding.FieldName = 'RATE'
        Visible = False
      end
      object cxGrid1DBTableView1SQTY: TcxGridDBColumn
        DataBinding.FieldName = 'SQTY'
        Visible = False
      end
      object cxGrid1DBTableView1SUOMQTY: TcxGridDBColumn
        DataBinding.FieldName = 'SUOMQTY'
        Visible = False
      end
      object cxGrid1DBTableView1UNITPRICE: TcxGridDBColumn
        DataBinding.FieldName = 'UNITPRICE'
        Visible = False
      end
      object cxGrid1DBTableView1DELIVERYDATE: TcxGridDBColumn
        DataBinding.FieldName = 'DELIVERYDATE'
        Visible = False
      end
      object cxGrid1DBTableView1DISC: TcxGridDBColumn
        DataBinding.FieldName = 'DISC'
        Visible = False
      end
      object cxGrid1DBTableView1TAX: TcxGridDBColumn
        DataBinding.FieldName = 'TAX'
      end
      object cxGrid1DBTableView1TARIFF: TcxGridDBColumn
        DataBinding.FieldName = 'TARIFF'
        Visible = False
      end
      object cxGrid1DBTableView1TAXRATE: TcxGridDBColumn
        DataBinding.FieldName = 'TAXRATE'
      end
      object cxGrid1DBTableView1TAXAMT: TcxGridDBColumn
        DataBinding.FieldName = 'TAXAMT'
      end
      object cxGrid1DBTableView1LOCALTAXAMT: TcxGridDBColumn
        DataBinding.FieldName = 'LOCALTAXAMT'
      end
      object cxGrid1DBTableView1TAXINCLUSIVE: TcxGridDBColumn
        DataBinding.FieldName = 'TAXINCLUSIVE'
        Visible = False
      end
      object cxGrid1DBTableView1AMOUNT: TcxGridDBColumn
        DataBinding.FieldName = 'AMOUNT'
        Visible = False
      end
      object cxGrid1DBTableView1LOCALAMOUNT: TcxGridDBColumn
        DataBinding.FieldName = 'LOCALAMOUNT'
        Visible = False
      end
      object cxGrid1DBTableView1TAXABLEAMT: TcxGridDBColumn
        DataBinding.FieldName = 'TAXABLEAMT'
        Visible = False
      end
      object cxGrid1DBTableView1ACCOUNT: TcxGridDBColumn
        DataBinding.FieldName = 'ACCOUNT'
        Visible = False
      end
      object cxGrid1DBTableView1PRINTABLE: TcxGridDBColumn
        DataBinding.FieldName = 'PRINTABLE'
        Visible = False
      end
      object cxGrid1DBTableView1FROMDOCTYPE: TcxGridDBColumn
        DataBinding.FieldName = 'FROMDOCTYPE'
        Visible = False
      end
      object cxGrid1DBTableView1FROMDOCKEY: TcxGridDBColumn
        DataBinding.FieldName = 'FROMDOCKEY'
        Visible = False
      end
      object cxGrid1DBTableView1FROMDTLKEY: TcxGridDBColumn
        DataBinding.FieldName = 'FROMDTLKEY'
        Visible = False
      end
      object cxGrid1DBTableView1TRANSFERABLE: TcxGridDBColumn
        DataBinding.FieldName = 'TRANSFERABLE'
        Visible = False
      end
      object cxGrid1DBTableView1REMARK1: TcxGridDBColumn
        DataBinding.FieldName = 'REMARK1'
        Visible = False
      end
      object cxGrid1DBTableView1REMARK2: TcxGridDBColumn
        DataBinding.FieldName = 'REMARK2'
        Visible = False
      end
      object cxGrid1DBTableView1INITIALPURCHASECOST: TcxGridDBColumn
        DataBinding.FieldName = 'INITIALPURCHASECOST'
        Visible = False
      end
      object cxGrid1DBTableView1CHANGED: TcxGridDBColumn
        DataBinding.FieldName = 'CHANGED'
        Visible = False
      end
      object cxGrid1DBTableView1CompanyItemCode: TcxGridDBColumn
        DataBinding.FieldName = 'CompanyItemCode'
        Visible = False
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object Address: TDBLabeledEdit
    Left = 80
    Top = 82
    Width = 853
    Height = 23
    BorderStyle = bsNone
    Color = clPowderblue
    DataField = 'ADDRESS1'
    DataSource = DataSource1
    TabOrder = 1
    EditLabel.Width = 55
    EditLabel.Height = 23
    EditLabel.Layout = tlTop
    LabelPosition = lpLeft
    LabelSpacing = 16
  end
  object DBEdit1: TDBEdit
    Left = 80
    Top = 53
    Width = 853
    Height = 23
    BorderStyle = bsNone
    Color = clPowderblue
    DataField = 'COMPANYNAME'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBLabeledEdit1: TDBLabeledEdit
    Left = 80
    Top = 175
    Width = 853
    Height = 23
    BevelEdges = [beBottom]
    DataField = 'DESCRIPTION'
    DataSource = DataSource1
    TabOrder = 3
    EditLabel.Width = 60
    EditLabel.Height = 23
    EditLabel.Caption = 'Description'
    LabelPosition = lpLeft
    LabelSpacing = 8
  end
  object cxDBComboBox1: TcxDBComboBox
    Left = 80
    Top = 24
    DataBinding.DataField = 'CODE'
    DataBinding.DataSource = DataSource1
    ParentShowHint = False
    ShowHint = False
    Style.Color = clBtnHighlight
    StyleReadOnly.BorderColor = clMenuHighlight
    StyleReadOnly.BorderStyle = ebsSingle
    StyleReadOnly.Color = clMenuText
    TabOrder = 4
    Width = 117
  end
  object LabeledEdit1: TDBLabeledEdit
    Left = 1024
    Top = 34
    Width = 125
    Height = 15
    BevelEdges = [beBottom]
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'DOCNO'
    DataSource = DataSource1
    TabOrder = 5
    EditLabel.Width = 43
    EditLabel.Height = 15
    EditLabel.Caption = 'Inv No :'
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clBlack
    EditLabel.Font.Height = -12
    EditLabel.Font.Name = 'Segoe UI'
    EditLabel.Font.Style = [fsBold]
    EditLabel.ParentFont = False
    LabelPosition = lpLeft
    LabelSpacing = 20
  end
  object LabeledEdit2: TDBLabeledEdit
    Left = 1024
    Top = 55
    Width = 125
    Height = 21
    BevelEdges = [beBottom]
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'DOCDATE'
    DataSource = DataSource1
    TabOrder = 6
    EditLabel.Width = 44
    EditLabel.Height = 21
    EditLabel.Caption = 'Date :-  '
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clBlue
    EditLabel.Font.Height = -12
    EditLabel.Font.Name = 'Segoe UI'
    EditLabel.Font.Style = [fsBold]
    EditLabel.ParentFont = False
    LabelPosition = lpLeft
    LabelSpacing = 20
  end
  object LabeledEdit3: TDBLabeledEdit
    Left = 1024
    Top = 82
    Width = 125
    Height = 23
    BevelEdges = [beBottom]
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'AGENT'
    DataSource = DataSource1
    TabOrder = 7
    EditLabel.Width = 45
    EditLabel.Height = 23
    EditLabel.Caption = 'Agent :-'
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clBlue
    EditLabel.Font.Height = -12
    EditLabel.Font.Name = 'Segoe UI'
    EditLabel.Font.Style = [fsBold]
    EditLabel.ParentFont = False
    LabelPosition = lpLeft
    LabelSpacing = 20
  end
  object LabeledEdit4: TDBLabeledEdit
    Left = 1024
    Top = 111
    Width = 125
    Height = 23
    BevelEdges = [beBottom]
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'DELIVERYTERM'
    DataSource = DataSource1
    TabOrder = 8
    EditLabel.Width = 45
    EditLabel.Height = 23
    EditLabel.Caption = 'Terms :-'
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clBlue
    EditLabel.Font.Height = -12
    EditLabel.Font.Name = 'Segoe UI'
    EditLabel.Font.Style = [fsBold]
    EditLabel.ParentFont = False
    LabelPosition = lpLeft
    LabelSpacing = 20
  end
  object LabeledEdit5: TDBLabeledEdit
    Left = 1024
    Top = 140
    Width = 125
    Height = 23
    BevelEdges = [beBottom]
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'DOCREF1'
    DataSource = DataSource1
    TabOrder = 9
    EditLabel.Width = 44
    EditLabel.Height = 23
    EditLabel.Caption = 'Ref 1.:- '
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clBlue
    EditLabel.Font.Height = -12
    EditLabel.Font.Name = 'Segoe UI'
    EditLabel.Font.Style = [fsBold]
    EditLabel.ParentFont = False
    LabelPosition = lpLeft
    LabelSpacing = 20
  end
  object LabeledEdit6: TDBLabeledEdit
    Left = 1024
    Top = 169
    Width = 125
    Height = 16
    BevelEdges = [beBottom]
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'TAXEXEMPTNO'
    DataSource = DataSource1
    TabOrder = 10
    EditLabel.Width = 51
    EditLabel.Height = 16
    EditLabel.Caption = 'Ext. No :-'
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clBlue
    EditLabel.Font.Height = -12
    EditLabel.Font.Name = 'Segoe UI'
    EditLabel.Font.Style = [fsBold]
    EditLabel.ParentFont = False
    LabelPosition = lpLeft
    LabelSpacing = 14
  end
  object Edit1: TDBEdit
    Left = 80
    Top = 105
    Width = 853
    Height = 23
    BorderStyle = bsNone
    Color = clPowderblue
    DataField = 'ADDRESS2'
    DataSource = DataSource1
    TabOrder = 11
  end
  object DBEdit2: TDBEdit
    Left = 80
    Top = 126
    Width = 853
    Height = 23
    BorderStyle = bsNone
    Color = clPowderblue
    DataField = 'ADDRESS3'
    DataSource = DataSource1
    TabOrder = 12
  end
  object DBEdit3: TDBEdit
    Left = 80
    Top = 148
    Width = 853
    Height = 23
    BorderStyle = bsNone
    Color = clPowderblue
    DataField = 'ADDRESS4'
    DataSource = DataSource1
    TabOrder = 13
  end
  object cxButton1: TcxButton
    Left = 1046
    Top = 3
    Width = 103
    Height = 25
    Caption = 'Need help?'
    DropDownMenu = PopupMenu1
    Kind = cxbkOfficeDropDown
    TabOrder = 14
  end
  object cxButton2: TcxButton
    Left = 8
    Top = 203
    Width = 25
    Height = 25
    Caption = #10133
    TabOrder = 15
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object dxUIAdornerManager1: TdxUIAdornerManager
    Badges.Font.Charset = DEFAULT_CHARSET
    Badges.Font.Color = clWindowText
    Badges.Font.Height = -12
    Badges.Font.Name = 'Segoe UI'
    Badges.Font.Style = []
    Badges.ParentFont = False
    Left = 536
    Top = 360
    object dxUIAdornerManager1Badge1: TdxBadge
      TargetElement.Control = cxDBComboBox1
      OnClick = dxUIAdornerManager1Badge1Click
      Background.Color = clTomato
      Background.FitMode = ifmFit
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = 23
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      Offset.X = 17
      Offset.Y = 13
      ParentFont = False
      Size.Height = 30
      Size.Width = 30
      Text = '1'
      TextMargins.All = 3
    end
    object dxUIAdornerManager1Badge2: TdxBadge
      TargetElement.Control = LabeledEdit1
      OnClick = dxUIAdornerManager1Badge2Click
      Alignment.Horz = taLeftJustify
      Background.Color = clTomato
      Background.FitMode = ifmFit
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = 22
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      Offset.X = -80
      Offset.Y = 3
      ParentFont = False
      Size.Height = 30
      Size.Width = 30
      Text = '2'
      TextMargins.All = 3
    end
    object dxUIAdornerManager1Badge3: TdxBadge
      TargetElement.Control = DBLabeledEdit1
      OnClick = dxUIAdornerManager1Badge3Click
      Alignment.Horz = taLeftJustify
      Background.Color = clTomato
      Background.FitMode = ifmFit
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = 22
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      Offset.X = -63
      Offset.Y = -12
      ParentFont = False
      Size.Height = 30
      Size.Width = 30
      Text = '3'
      TextMargins.All = 3
    end
    object dxUIAdornerManager1Badge4: TdxBadge
      TargetElement.Control = cxButton2
      OnClick = dxUIAdornerManager1Badge4Click
      Alignment.Horz = taLeftJustify
      Background.Color = clTomato
      Background.FitMode = ifmFit
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = 22
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      Offset.X = 30
      Offset.Y = -3
      ParentFont = False
      Size.Height = 30
      Size.Width = 30
      Text = '4'
      TextMargins.All = 3
    end
    object dxUIAdornerManager1Guide1: TdxGuide
      TargetElement.Control = cxDBComboBox1
      BorderColor = clRed
    end
  end
  object ClientDataSet1: TClientDataSet
    PersistDataPacket.Data = {
      2C1500009619E0BD0200000018000000620001000000030000008D1106444F43
      4B4559040001001000000005444F434E4F01004A001000020007535542545950
      45020049000A004669786564436861720005574944544802000200500007444F
      434E4F455801004A00100002000753554254595045020049000A004669786564
      436861720005574944544802000200500007444F434441544504000600100000
      0008504F53544441544504000600100000000754415844415445040006001000
      000004434F444501004A00100002000753554254595045020049000A00466978
      656443686172000557494454480200020014000B434F4D50414E594E414D4501
      004A00100002000753554254595045020049000A004669786564436861720005
      574944544802000200C80008414444524553533101004A001000020007535542
      54595045020049000A0046697865644368617200055749445448020002007800
      08414444524553533201004A00100002000753554254595045020049000A0046
      6978656443686172000557494454480200020078000841444452455353330100
      4A00100002000753554254595045020049000A00466978656443686172000557
      4944544802000200780008414444524553533401004A00100002000753554254
      595045020049000A004669786564436861720005574944544802000200780006
      50484F4E453102004A00100002000753554254595045020049000A0046697865
      644368617200055749445448020002009001064D4F42494C4502004A00100002
      000753554254595045020049000A004669786564436861720005574944544802
      0002009001044641583102004A00100002000753554254595045020049000A00
      4669786564436861720005574944544802000200900109415454454E54494F4E
      01004A00100002000753554254595045020049000A0046697865644368617200
      055749445448020002008C00044152454101004A001000020007535542545950
      45020049000A0046697865644368617200055749445448020002001400054147
      454E5401004A00100002000753554254595045020049000A0046697865644368
      6172000557494454480200020014000750524F4A45435401004A001000020007
      53554254595045020049000A0046697865644368617200055749445448020002
      002800055445524D5301004A00100002000753554254595045020049000A0046
      6978656443686172000557494454480200020014000C43555252454E4359434F
      444501004A00100002000753554254595045020049000A004669786564436861
      7200055749445448020002000C000C43555252454E4359524154450B00120010
      00020008444543494D414C530200020008000557494454480200020012000753
      48495050455201004A00100002000753554254595045020049000A0046697865
      644368617200055749445448020002003C000B4445534352495054494F4E0200
      4A00100002000753554254595045020049000A00466978656443686172000557
      4944544802000200580207434F554E54525901004A0010000200075355425459
      5045020049000A00466978656443686172000557494454480200020064000943
      414E43454C4C454401004A00100002000753554254595045020049000A004669
      786564436861720005574944544802000200020006444F43414D540B00120010
      00020008444543494D414C530200020002000557494454480200020012000B4C
      4F43414C444F43414D540B0012001000020008444543494D414C530200020002
      0005574944544802000200120008445F414D4F554E540B001200100002000844
      4543494D414C530200020002000557494454480200020012000856414C494449
      545902004A00100002000753554254595045020049000A004669786564436861
      72000557494454480200020058020C44454C49564552595445524D02004A0010
      0002000753554254595045020049000A00466978656443686172000557494454
      4802000200580202434302004A00100002000753554254595045020049000A00
      4669786564436861720005574944544802000200580207444F43524546310100
      4A00100002000753554254595045020049000A00466978656443686172000557
      4944544802000200500007444F435245463201004A0010000200075355425459
      5045020049000A00466978656443686172000557494454480200020050000744
      4F435245463301004A00100002000753554254595045020049000A0046697865
      64436861720005574944544802000200500007444F435245463401004A001000
      02000753554254595045020049000A0046697865644368617200055749445448
      0200020050000A4252414E43484E414D4501004A001000020007535542545950
      45020049000A004669786564436861720005574944544802000200C800094441
      4444524553533101004A00100002000753554254595045020049000A00466978
      656443686172000557494454480200020078000944414444524553533201004A
      00100002000753554254595045020049000A0046697865644368617200055749
      4454480200020078000944414444524553533301004A00100002000753554254
      595045020049000A004669786564436861720005574944544802000200780009
      44414444524553533401004A00100002000753554254595045020049000A0046
      6978656443686172000557494454480200020078000A44415454454E54494F4E
      01004A00100002000753554254595045020049000A0046697865644368617200
      055749445448020002008C00074450484F4E453102004A001000020007535542
      54595045020049000A0046697865644368617200055749445448020002009001
      07444D4F42494C4502004A00100002000753554254595045020049000A004669
      786564436861720005574944544802000200900105444641583102004A001000
      02000753554254595045020049000A0046697865644368617200055749445448
      0200020090010B5441584558454D50544E4F01004A0010000200075355425459
      5045020049000A00466978656443686172000557494454480200020064000B41
      54544143484D454E545304004B00100002000753554254595045020049000700
      42696E61727900055749445448020002000800044E4F544504004B0010000200
      075355425459504502004900070042696E617279000557494454480200020008
      000C5452414E5346455241424C4501004A001000020007535542545950450200
      49000A00466978656443686172000557494454480200020002000B5550444154
      45434F554E5404000100100000000A5052494E54434F554E5404000100100000
      000B444F434E4F5345544B45590800010010000000094E455854444F434E4F01
      004A00100002000753554254595045020049000A004669786564436861720005
      5749445448020002005000074348414E47454401004A00100002000753554254
      595045020049000A00466978656443686172000557494454480200020002000C
      736473446F6344657461696C2B000E05100000000644544C4B45590400010014
      00000006444F434B455904000100140000000353455104000100100000000753
      54594C45494401004A00100002000753554254595045020049000A0046697865
      644368617200055749445448020002000A00064E554D42455201004A00100002
      000753554254595045020049000A004669786564436861720005574944544802
      0002000A00084954454D434F444501004A001000020007535542545950450200
      49000A0046697865644368617200055749445448020002003C00084C4F434154
      494F4E01004A00100002000753554254595045020049000A0046697865644368
      61720005574944544802000200280005424154434801004A0010000200075355
      4254595045020049000A0046697865644368617200055749445448020002003C
      000750524F4A45435401004A00100002000753554254595045020049000A0046
      6978656443686172000557494454480200020028000B4445534352495054494F
      4E02004A00100002000753554254595045020049000A00466978656443686172
      000557494454480200020090010C4445534352495054494F4E3202004A001000
      02000753554254595045020049000A0046697865644368617200055749445448
      0200020090010C4445534352495054494F4E3304004B00100002000753554254
      59504502004900070042696E6172790005574944544802000200080008504552
      4D49544E4F01004A00100002000753554254595045020049000A004669786564
      4368617200055749445448020002002800035154590B00120010000200084445
      43494D414C5302000200040005574944544802000200120003554F4D01004A00
      100002000753554254595045020049000A004669786564436861720005574944
      544802000200140004524154450B0012001000020008444543494D414C530200
      0200040005574944544802000200120004535154590B00120010000200084445
      43494D414C530200020004000557494454480200020012000753554F4D515459
      0B0012001000020008444543494D414C53020002000400055749445448020002
      00120009554E495450524943450B0012001000020008444543494D414C530200
      020008000557494454480200020012000C44454C495645525944415445040006
      0010000000044449534301004A00100002000753554254595045020049000A00
      466978656443686172000557494454480200020028000354415801004A001000
      02000753554254595045020049000A0046697865644368617200055749445448
      0200020014000654415249464601004A00100002000753554254595045020049
      000A004669786564436861720005574944544802000200280007544158524154
      4501004A00100002000753554254595045020049000A00466978656443686172
      0005574944544802000200280006544158414D540B0012001000020008444543
      494D414C530200020002000557494454480200020012000B4C4F43414C544158
      414D540B0012001000020008444543494D414C53020002000200055749445448
      0200020012000C544158494E434C5553495645020001001000000006414D4F55
      4E540B0012001000020008444543494D414C5302000200020005574944544802
      00020012000B4C4F43414C414D4F554E540B0012001000020008444543494D41
      4C530200020002000557494454480200020012000A54415841424C45414D540B
      0012001000020008444543494D414C5302000200020005574944544802000200
      1200074143434F554E5401004A00100002000753554254595045020049000A00
      46697865644368617200055749445448020002001400095052494E5441424C45
      01004A00100002000753554254595045020049000A0046697865644368617200
      0557494454480200020002000B46524F4D444F435459504501004A0010000200
      0753554254595045020049000A00466978656443686172000557494454480200
      020004000A46524F4D444F434B455904000100100000000A46524F4D44544C4B
      455904000100100000000C5452414E5346455241424C4501004A001000020007
      53554254595045020049000A0046697865644368617200055749445448020002
      0002000752454D41524B3102004A00100002000753554254595045020049000A
      00466978656443686172000557494454480200020090010752454D41524B3202
      004A00100002000753554254595045020049000A004669786564436861720005
      574944544802000200900113494E495449414C5055524348415345434F53540B
      0012001000020008444543494D414C5302000200020005574944544802000200
      1200074348414E47454401004A00140002000753554254595045020049000A00
      466978656443686172000557494454480200020002000F436F6D70616E794974
      656D436F646501004A0010000100055749445448020002003C000F7364735365
      7269616C4E756D62657201000E05100000000C53455249414C4E554D42455201
      004A00140002000753554254595045020049000A004669786564436861720005
      5749445448020002006400000000000000001000501400000154554041550401
      1200000010490056002D0030003000300030003500FA460B00FA460B00FA460B
      00123300300030002D0043003000300030003100284300200041005200540020
      0054004500430048004E004F004C004F004700590020004800550042002A3100
      380039002C00200045006100730074002000460065006E006300650020005200
      6F00610064002C0012350032003000300030002C0020004B004C001600300033
      002D0036003200340031003200310031003200104D0073002E0020004B006100
      74006500044B004C000E4700610062007200690065006C00082D002D002D002D
      000E3300300020004400610079007300082D002D002D002D0012080000000001
      0000000000000000000000082D002D002D002D000A00530061006C0065007300
      0246001202000000000000120000000000000000001202000000000000120000
      000000000000001202000000000000000000000000000000000E420049004C00
      4C0049004E0047002A3100380039002C00200045006100730074002000460065
      006E0063006500200052006F00610064002C0012350032003000300030002C00
      20004B004C00104D0073002E0020004B006100740065001600300033002D0036
      0032003400310032003100310032000254000000000000000000000000000246
      00010000000040015001005100000005051300000012000000E8030000184F00
      4C002F004C00450044002F0042006500690067006500082D002D002D002D0000
      082D002D002D002D006A0053006F006C00760069006E0020004C004500440020
      0073006F006C00610072002D0070006F00770065007200650064002000700065
      006E00640061006E00740020006C0061006D0070002C0020006F007500740064
      006F006F00720028004200650069006700650029001204000000000000100000
      000000000000000855004E004900540012040000000000000100000000000000
      0000120400000000000010000000000000000000120400000000000000000000
      000000000000120800000001200000000000000000000000FA460B0000120200
      0000000000000000000000000000001202000000000000000000000000000000
      0000001202000000000000120000000000000000001202000000000000120000
      000000000000001202000000000000120000000000000000000E350030003000
      2D003300300030000254000444004F0005000000060000000254001202000000
      00000000000000000000000000024600}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 520
    object ClientDataSet1DOCKEY: TIntegerField
      FieldName = 'DOCKEY'
    end
    object ClientDataSet1DOCNO: TWideStringField
      FieldName = 'DOCNO'
      FixedChar = True
      Size = 40
    end
    object ClientDataSet1DOCDATE: TDateField
      FieldName = 'DOCDATE'
    end
    object ClientDataSet1DOCNOEX: TWideStringField
      FieldName = 'DOCNOEX'
      FixedChar = True
      Size = 40
    end
    object ClientDataSet1POSTDATE: TDateField
      FieldName = 'POSTDATE'
    end
    object ClientDataSet1TAXDATE: TDateField
      FieldName = 'TAXDATE'
    end
    object ClientDataSet1CODE: TWideStringField
      FieldName = 'CODE'
      FixedChar = True
      Size = 10
    end
    object ClientDataSet1COMPANYNAME: TWideStringField
      FieldName = 'COMPANYNAME'
      FixedChar = True
      Size = 100
    end
    object ClientDataSet1ADDRESS1: TWideStringField
      FieldName = 'ADDRESS1'
      FixedChar = True
      Size = 60
    end
    object ClientDataSet1ADDRESS2: TWideStringField
      FieldName = 'ADDRESS2'
      FixedChar = True
      Size = 60
    end
    object ClientDataSet1ADDRESS3: TWideStringField
      FieldName = 'ADDRESS3'
      FixedChar = True
      Size = 60
    end
    object ClientDataSet1ADDRESS4: TWideStringField
      FieldName = 'ADDRESS4'
      FixedChar = True
      Size = 60
    end
    object ClientDataSet1PHONE1: TWideStringField
      FieldName = 'PHONE1'
      FixedChar = True
      Size = 200
    end
    object ClientDataSet1MOBILE: TWideStringField
      FieldName = 'MOBILE'
      FixedChar = True
      Size = 200
    end
    object ClientDataSet1FAX1: TWideStringField
      FieldName = 'FAX1'
      FixedChar = True
      Size = 200
    end
    object ClientDataSet1ATTENTION: TWideStringField
      FieldName = 'ATTENTION'
      FixedChar = True
      Size = 70
    end
    object ClientDataSet1AREA: TWideStringField
      FieldName = 'AREA'
      FixedChar = True
      Size = 10
    end
    object ClientDataSet1AGENT: TWideStringField
      FieldName = 'AGENT'
      FixedChar = True
      Size = 10
    end
    object ClientDataSet1PROJECT: TWideStringField
      FieldName = 'PROJECT'
      FixedChar = True
    end
    object ClientDataSet1TERMS: TWideStringField
      FieldName = 'TERMS'
      FixedChar = True
      Size = 10
    end
    object ClientDataSet1CURRENCYCODE: TWideStringField
      FieldName = 'CURRENCYCODE'
      FixedChar = True
      Size = 6
    end
    object ClientDataSet1CURRENCYRATE: TFMTBCDField
      FieldName = 'CURRENCYRATE'
      Precision = 18
    end
    object ClientDataSet1SHIPPER: TWideStringField
      FieldName = 'SHIPPER'
      FixedChar = True
      Size = 30
    end
    object ClientDataSet1DESCRIPTION: TWideStringField
      FieldName = 'DESCRIPTION'
      FixedChar = True
      Size = 300
    end
    object ClientDataSet1COUNTRY: TWideStringField
      FieldName = 'COUNTRY'
      FixedChar = True
      Size = 50
    end
    object ClientDataSet1CANCELLED: TWideStringField
      FieldName = 'CANCELLED'
      FixedChar = True
      Size = 1
    end
    object ClientDataSet1DOCAMT: TFMTBCDField
      FieldName = 'DOCAMT'
      Precision = 18
      Size = 2
    end
    object ClientDataSet1LOCALDOCAMT: TFMTBCDField
      FieldName = 'LOCALDOCAMT'
      Precision = 18
      Size = 2
    end
    object ClientDataSet1D_AMOUNT: TFMTBCDField
      FieldName = 'D_AMOUNT'
      Precision = 18
      Size = 2
    end
    object ClientDataSet1VALIDITY: TWideStringField
      FieldName = 'VALIDITY'
      FixedChar = True
      Size = 300
    end
    object ClientDataSet1DELIVERYTERM: TWideStringField
      FieldName = 'DELIVERYTERM'
      FixedChar = True
      Size = 300
    end
    object ClientDataSet1CC: TWideStringField
      FieldName = 'CC'
      FixedChar = True
      Size = 300
    end
    object ClientDataSet1DOCREF1: TWideStringField
      FieldName = 'DOCREF1'
      FixedChar = True
      Size = 40
    end
    object ClientDataSet1DOCREF2: TWideStringField
      FieldName = 'DOCREF2'
      FixedChar = True
      Size = 40
    end
    object ClientDataSet1DOCREF3: TWideStringField
      FieldName = 'DOCREF3'
      FixedChar = True
      Size = 40
    end
    object ClientDataSet1DOCREF4: TWideStringField
      FieldName = 'DOCREF4'
      FixedChar = True
      Size = 40
    end
    object ClientDataSet1BRANCHNAME: TWideStringField
      FieldName = 'BRANCHNAME'
      FixedChar = True
      Size = 100
    end
    object ClientDataSet1DADDRESS1: TWideStringField
      FieldName = 'DADDRESS1'
      FixedChar = True
      Size = 60
    end
    object ClientDataSet1DADDRESS2: TWideStringField
      FieldName = 'DADDRESS2'
      FixedChar = True
      Size = 60
    end
    object ClientDataSet1DADDRESS3: TWideStringField
      FieldName = 'DADDRESS3'
      FixedChar = True
      Size = 60
    end
    object ClientDataSet1DADDRESS4: TWideStringField
      FieldName = 'DADDRESS4'
      FixedChar = True
      Size = 60
    end
    object ClientDataSet1DATTENTION: TWideStringField
      FieldName = 'DATTENTION'
      FixedChar = True
      Size = 70
    end
    object ClientDataSet1DPHONE1: TWideStringField
      FieldName = 'DPHONE1'
      FixedChar = True
      Size = 200
    end
    object ClientDataSet1DMOBILE: TWideStringField
      FieldName = 'DMOBILE'
      FixedChar = True
      Size = 200
    end
    object ClientDataSet1DFAX1: TWideStringField
      FieldName = 'DFAX1'
      FixedChar = True
      Size = 200
    end
    object ClientDataSet1TAXEXEMPTNO: TWideStringField
      FieldName = 'TAXEXEMPTNO'
      FixedChar = True
      Size = 50
    end
    object ClientDataSet1ATTACHMENTS: TBlobField
      FieldName = 'ATTACHMENTS'
      Size = 8
    end
    object ClientDataSet1NOTE: TBlobField
      FieldName = 'NOTE'
      Size = 8
    end
    object ClientDataSet1TRANSFERABLE: TWideStringField
      FieldName = 'TRANSFERABLE'
      FixedChar = True
      Size = 1
    end
    object ClientDataSet1UPDATECOUNT: TIntegerField
      FieldName = 'UPDATECOUNT'
    end
    object ClientDataSet1PRINTCOUNT: TIntegerField
      FieldName = 'PRINTCOUNT'
    end
    object ClientDataSet1DOCNOSETKEY: TLargeintField
      FieldName = 'DOCNOSETKEY'
    end
    object ClientDataSet1NEXTDOCNO: TWideStringField
      FieldName = 'NEXTDOCNO'
      FixedChar = True
      Size = 40
    end
    object ClientDataSet1CHANGED: TWideStringField
      FieldName = 'CHANGED'
      FixedChar = True
      Size = 1
    end
    object ClientDataSet1sdsDocDetail: TDataSetField
      FieldName = 'sdsDocDetail'
      UnNamed = True
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 424
    Top = 1
  end
  object ClientDataSet2: TClientDataSet
    PersistDataPacket.Data = {
      CB0800009619E0BD02000000180000002900010000000300000020070644544C
      4B4559040001001400000006444F434B45590400010014000000035345510400
      010010000000075354594C45494401004A001000020007535542545950450200
      49000A0046697865644368617200055749445448020002000A00064E554D4245
      5201004A00100002000753554254595045020049000A00466978656443686172
      00055749445448020002000A00084954454D434F444501004A00100002000753
      554254595045020049000A004669786564436861720005574944544802000200
      3C00084C4F434154494F4E01004A00100002000753554254595045020049000A
      004669786564436861720005574944544802000200280005424154434801004A
      00100002000753554254595045020049000A0046697865644368617200055749
      445448020002003C000750524F4A45435401004A001000020007535542545950
      45020049000A00466978656443686172000557494454480200020028000B4445
      534352495054494F4E02004A00100002000753554254595045020049000A0046
      6978656443686172000557494454480200020090010C4445534352495054494F
      4E3202004A00100002000753554254595045020049000A004669786564436861
      72000557494454480200020090010C4445534352495054494F4E3304004B0010
      000200075355425459504502004900070042696E617279000557494454480200
      02000800085045524D49544E4F01004A00100002000753554254595045020049
      000A0046697865644368617200055749445448020002002800035154590B0012
      001000020008444543494D414C53020002000400055749445448020002001200
      03554F4D01004A00100002000753554254595045020049000A00466978656443
      6861720005574944544802000200140004524154450B00120010000200084445
      43494D414C5302000200040005574944544802000200120004535154590B0012
      001000020008444543494D414C53020002000400055749445448020002001200
      0753554F4D5154590B0012001000020008444543494D414C5302000200040005
      574944544802000200120009554E495450524943450B00120010000200084445
      43494D414C530200020008000557494454480200020012000C44454C49564552
      59444154450400060010000000044449534301004A0010000200075355425459
      5045020049000A00466978656443686172000557494454480200020028000354
      415801004A00100002000753554254595045020049000A004669786564436861
      72000557494454480200020014000654415249464601004A0010000200075355
      4254595045020049000A00466978656443686172000557494454480200020028
      00075441585241544501004A00100002000753554254595045020049000A0046
      69786564436861720005574944544802000200280006544158414D540B001200
      1000020008444543494D414C530200020002000557494454480200020012000B
      4C4F43414C544158414D540B0012001000020008444543494D414C5302000200
      02000557494454480200020012000C544158494E434C55534956450200010010
      00000006414D4F554E540B0012001000020008444543494D414C530200020002
      000557494454480200020012000B4C4F43414C414D4F554E540B001200100002
      0008444543494D414C530200020002000557494454480200020012000A544158
      41424C45414D540B0012001000020008444543494D414C530200020002000557
      49445448020002001200074143434F554E5401004A0010000200075355425459
      5045020049000A00466978656443686172000557494454480200020014000950
      52494E5441424C4501004A00100002000753554254595045020049000A004669
      78656443686172000557494454480200020002000B46524F4D444F4354595045
      01004A00100002000753554254595045020049000A0046697865644368617200
      0557494454480200020004000A46524F4D444F434B455904000100100000000A
      46524F4D44544C4B455904000100100000000C5452414E5346455241424C4501
      004A00100002000753554254595045020049000A004669786564436861720005
      57494454480200020002000752454D41524B3102004A00100002000753554254
      595045020049000A004669786564436861720005574944544802000200900107
      52454D41524B3202004A00100002000753554254595045020049000A00466978
      6564436861720005574944544802000200900113494E495449414C5055524348
      415345434F53540B0012001000020008444543494D414C530200020002000557
      49445448020002001200074348414E47454401004A0014000200075355425459
      5045020049000A00466978656443686172000557494454480200020002000F43
      6F6D70616E794974656D436F646501004A001000010005574944544802000200
      3C0000000040015001005100000005011300000012000000E8030000184F004C
      002F004C00450044002F0042006500690067006500082D002D002D002D000008
      2D002D002D002D006A0053006F006C00760069006E0020004C00450044002000
      73006F006C00610072002D0070006F0077006500720065006400200070006500
      6E00640061006E00740020006C0061006D0070002C0020006F00750074006400
      6F006F0072002800420065006900670065002900120400000000000010000000
      0000000000000855004E00490054001204000000000000010000000000000000
      0012040000000000001000000000000000000012040000000000000000000000
      0000000000120800000001200000000000000000000000FA460B000012020000
      0000000000000000000000000000120200000000000000000000000000000000
      0000120200000000000012000000000000000000120200000000000012000000
      0000000000001202000000000000120000000000000000000E3500300030002D
      003300300030000254000444004F000500000006000000025400120200000000
      000000000000000000000000024600}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 320
    Top = 360
  end
  object DataSource2: TDataSource
    DataSet = ClientDataSet2
    Left = 416
    Top = 361
  end
  object PopupMenu1: TPopupMenu
    Left = 608
    object Guides1: TMenuItem
      Caption = 'Guide'
      OnClick = Guide1Click
    end
    object Video1: TMenuItem
      Caption = 'Video'
      OnClick = Video1Click
    end
  end
end
