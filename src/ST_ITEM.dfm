object ST_ITEM: TST_ITEM
  Left = 0
  Top = 0
  Caption = 'ST_ITEM'
  ClientHeight = 441
  ClientWidth = 1097
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnDestroy = FormDestroy
  TextHeight = 15
  object Label3: TLabel
    Left = 8
    Top = 197
    Width = 60
    Height = 15
    Caption = 'Item Group'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 8
    Top = 223
    Width = 50
    Height = 15
    Caption = 'REFPRICE'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 559
    Top = 231
    Width = 58
    Height = 15
    Caption = 'Output Tax'
    FocusControl = DBEdit5
  end
  object Label6: TLabel
    Left = 559
    Top = 264
    Width = 48
    Height = 15
    Caption = 'Input Tax'
    FocusControl = DBEdit6
  end
  object Label7: TLabel
    Left = 559
    Top = 199
    Width = 70
    Height = 15
    Caption = 'Classification'
    FocusControl = DBEdit7
  end
  object Label1: TLabel
    Left = 8
    Top = 96
    Width = 31
    Height = 15
    Caption = 'CODE'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 8
    Top = 127
    Width = 72
    Height = 15
    Caption = 'DESCRIPTION'
    FocusControl = DBEdit2
  end
  object cxHeader1: TcxHeader
    Left = 86
    Top = 72
    Width = 691
    Height = 111
    Color = clBisque
    ParentColor = False
    Sections = <>
  end
  object DBEdit1: TDBEdit
    Left = 94
    Top = 95
    Width = 454
    Height = 23
    DataField = 'CODE'
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 94
    Top = 124
    Width = 300
    Height = 23
    DataField = 'DESCRIPTION'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 86
    Top = 194
    Width = 300
    Height = 23
    Color = clBisque
    DataField = 'STOCKGROUP'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 86
    Top = 223
    Width = 300
    Height = 23
    Color = clBisque
    DataField = 'REFPRICE'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBEdit5: TDBEdit
    Left = 623
    Top = 228
    Width = 154
    Height = 23
    Color = clBisque
    DataField = 'SLTAX'
    DataSource = DataSource1
    TabOrder = 4
  end
  object DBEdit6: TDBEdit
    Left = 623
    Top = 261
    Width = 154
    Height = 23
    Color = clBisque
    DataField = 'PHTAX'
    DataSource = DataSource1
    TabOrder = 5
  end
  object DBEdit7: TDBEdit
    Left = 656
    Top = 196
    Width = 121
    Height = 23
    Color = clBisque
    DataField = 'IRBM_CLASSIFICATION'
    DataSource = DataSource1
    TabOrder = 6
  end
  object dxBarDockControl1: TdxBarDockControl
    Left = 0
    Top = 0
    Width = 1097
    Align = dalTop
    AllowDocking = False
  end
  object ClientDataSet1: TClientDataSet
    PersistDataPacket.Data = {
      291800009619E0BD020000001800000088000100000003000000C61606444F43
      4B4559040001001000000004434F444501004A00100002000753554254595045
      020049000A0046697865644368617200055749445448020002003C000B444553
      4352495054494F4E02004A00100002000753554254595045020049000A004669
      78656443686172000557494454480200020090010C4445534352495054494F4E
      3202004A00100002000753554254595045020049000A00466978656443686172
      000557494454480200020090010C4445534352495054494F4E3304004B001000
      0200075355425459504502004900070042696E61727900055749445448020002
      0008000A53544F434B47524F555001004A001000020007535542545950450200
      49000A00466978656443686172000557494454480200020028000C53544F434B
      434F4E54524F4C01004A00100002000753554254595045020049000A00466978
      656443686172000557494454480200020002000D434F5354494E474D4554484F
      4402000100100000000C53455249414C4E554D42455201004A00100002000753
      554254595045020049000A004669786564436861720005574944544802000200
      02000752454D41524B3102004A00100002000753554254595045020049000A00
      466978656443686172000557494454480200020090010752454D41524B320200
      4A00100002000753554254595045020049000A00466978656443686172000557
      49445448020002009001064D494E5154590B0012001000020008444543494D41
      4C53020002000400055749445448020002001200064D41585154590B00120010
      00020008444543494D414C530200020004000557494454480200020012000C52
      454F524445524C4556454C0B0012001000020008444543494D414C5302000200
      04000557494454480200020012000A52454F524445525154590B001200100002
      0008444543494D414C5302000200040005574944544802000200120005534845
      4C4601004A00100002000753554254595045020049000A004669786564436861
      72000557494454480200020050000453554F4D01004A00100002000753554254
      595045020049000A004669786564436861720005574944544802000200140008
      4954454D5459504501004A00100002000753554254595045020049000A004669
      7865644368617200055749445448020002000200084C45414454494D45040001
      00100000000C424F4D5F4C45414454494D4504000100100000000B424F4D5F41
      534D434F53540B0012001000020008444543494D414C53020002000800055749
      44544802000200120005534C54415801004A0010000200075355425459504502
      0049000A00466978656443686172000557494454480200020014000550485441
      5801004A00100002000753554254595045020049000A00466978656443686172
      000557494454480200020014000654415249464601004A001000020007535542
      54595045020049000A0046697865644368617200055749445448020002002800
      134952424D5F434C415353494649434154494F4E010049001000020007535542
      54595045020049000A0046697865644368617200055749445448020002000300
      0B53544F434B4D415452495801004A0010000200075355425459504502004900
      0A0046697865644368617200055749445448020002001E0009444546554F4D5F
      535401004A00100002000753554254595045020049000A004669786564436861
      720005574944544802000200140009444546554F4D5F534C01004A0010000200
      0753554254595045020049000A00466978656443686172000557494454480200
      0200140009444546554F4D5F504801004A001000020007535542545950450200
      49000A00466978656443686172000557494454480200020014000A5343524950
      54434F444501004A00100002000753554254595045020049000A004669786564
      4368617200055749445448020002001E0008495341435449564501004A001000
      02000753554254595045020049000A0046697865644368617200055749445448
      0200020002000742414C535154590B0012001000020008444543494D414C5302
      00020004000557494454480200020012000A42414C53554F4D5154590B001200
      1000020008444543494D414C530200020004000557494454480200020012000C
      4352454154494F4E444154450400060010000000075049435455524504004B00
      10000200075355425459504502004900070042696E6172790005574944544802
      00020008000C50494354555245434C41535301004A0010000200075355425459
      5045020049000A00466978656443686172000557494454480200020014000B41
      54544143484D454E545304004B00100002000753554254595045020049000700
      42696E61727900055749445448020002000800044E4F544504004B0010000200
      075355425459504502004900070042696E617279000557494454480200020008
      000C4C4153544D4F44494649454408000100100000000852454650524943450B
      0012001000020008444543494D414C5302000200080005574944544802000200
      120007524546434F53540B0012001000020008444543494D414C530200020008
      0005574944544802000200120007424152434F444501004A0010000200075355
      4254595045020049000A00466978656443686172000557494454480200020064
      0005444952545902000300100000000A736473426172636F646504000E051000
      0000074155544F4B4559040001001400000007424152434F444501004A001400
      02000753554254595045020049000A0046697865644368617200055749445448
      02000200640004434F444501004A00140002000753554254595045020049000A
      0046697865644368617200055749445448020002003C0003554F4D01004A0010
      0002000753554254595045020049000A00466978656443686172000557494454
      4802000200140000000F736473537570706C6965724974656D05000E05100000
      0004434F444501004A00140002000753554254595045020049000A0046697865
      644368617200055749445448020002003C0007434F4D50414E5901004A001400
      02000753554254595045020049000A0046697865644368617200055749445448
      02000200140005435459504501004A0010000200075355425459504502004900
      0A00466978656443686172000557494454480200020002000F434F4D50414E59
      4954454D434F444501004A00100002000753554254595045020049000A004669
      7865644368617200055749445448020002003C000B4445534352495054494F4E
      02004A00100002000753554254595045020049000A0046697865644368617200
      05574944544802000200900100000F736473437573746F6D65724974656D0500
      0E051000000004434F444501004A00140002000753554254595045020049000A
      0046697865644368617200055749445448020002003C0007434F4D50414E5901
      004A00140002000753554254595045020049000A004669786564436861720005
      574944544802000200140005435459504501004A001000020007535542545950
      45020049000A00466978656443686172000557494454480200020002000F434F
      4D50414E594954454D434F444501004A00100002000753554254595045020049
      000A0046697865644368617200055749445448020002003C000B444553435249
      5054494F4E02004A00100002000753554254595045020049000A004669786564
      436861720005574944544802000200900100000F736473416C7453746F636B49
      74656D03000E051000000004434F444501004A00140002000753554254595045
      020049000A0046697865644368617200055749445448020002003C0007414C54
      434F444501004A00140002000753554254595045020049000A00466978656443
      6861720005574944544802000200460003554F4D01004A001000020007535542
      54595045020049000A0046697865644368617200055749445448020002001400
      000006736473424F4D12000E0510000000074155544F4B455904000100140000
      0004434F444501004A00140002000753554254595045020049000A0046697865
      644368617200055749445448020002003C0007535542434F444501004A001400
      02000753554254595045020049000A0046697865644368617200055749445448
      020002003C00035345510400010014000000084C4F434154494F4E01004A0010
      0002000753554254595045020049000A00466978656443686172000557494454
      4802000200280005424154434801004A00100002000753554254595045020049
      000A0046697865644368617200055749445448020002003C000A424F4D504143
      4B41474501004A00100002000753554254595045020049000A00466978656443
      68617200055749445448020002003C00035154590B0012001000020008444543
      494D414C5302000200040005574944544802000200120003554F4D01004A0010
      0002000753554254595045020049000A00466978656443686172000557494454
      480200020014000C4F56455248454144434F53540B0012001000020008444543
      494D414C53020002000800055749445448020002001200094953574153544147
      4501004A00100002000753554254595045020049000A00466978656443686172
      00055749445448020002000200064E554D42455201004A001000020007535542
      54595045020049000A0046697865644368617200055749445448020002000A00
      0C4445534352495054494F4E3202004A00100002000753554254595045020049
      000A00466978656443686172000557494454480200020090010C444553435249
      5054494F4E3304004B0010000200075355425459504502004900070042696E61
      7279000557494454480200020008000752454D41524B3102004A001000020007
      53554254595045020049000A0046697865644368617200055749445448020002
      0090010752454D41524B3202004A00100002000753554254595045020049000A
      004669786564436861720005574944544802000200900107524546434F53540B
      0012001000020008444543494D414C5302000200080005574944544802000200
      120009495344454641554C5401004A0014000200075355425459504502004900
      0A004669786564436861720005574944544802000200020000000B7364734361
      7465676F727902000E051000000004434F444501004A00140002000753554254
      595045020049000A0046697865644368617200055749445448020002003C0008
      43415445474F525901004A00140002000753554254595045020049000A004669
      7865644368617200055749445448020002001E000000117364734F70656E696E
      6742616C616E63650A000E051000000006444F434B4559040001001400000008
      4954454D434F444501004A00100002000753554254595045020049000A004669
      7865644368617200055749445448020002003C00084C4F434154494F4E01004A
      00100002000753554254595045020049000A0046697865644368617200055749
      44544802000200280005424154434801004A0010000200075355425459504502
      0049000A0046697865644368617200055749445448020002003C000750524F4A
      45435401004A00100002000753554254595045020049000A0046697865644368
      617200055749445448020002002800035345510400010010000000035154590B
      0012001000020008444543494D414C5302000200040005574944544802000200
      12000753554F4D5154590B0012001000020008444543494D414C530200020004
      0005574944544802000200120004434F53540B0012001000020008444543494D
      414C5302000200080005574944544802000200120007555444434F53540B0012
      001000020008444543494D414C53020002000800055749445448020002001200
      000010736473537570706C69657250726963650D000E05100000000644544C4B
      4559040001001400000004434F444501004A0014000200075355425459504502
      0049000A0046697865644368617200055749445448020002003C000754414754
      59504501004A00140002000753554254595045020049000A0046697865644368
      61720005574944544802000200020007434F4D50414E5901004A001000020007
      53554254595045020049000A0046697865644368617200055749445448020002
      00140003534551040001001400000008505249434554414701004A0010000200
      0753554254595045020049000A00466978656443686172000557494454480200
      0200140003554F4D01004A00140002000753554254595045020049000A004669
      7865644368617200055749445448020002001400035154590B00120010000200
      08444543494D414C530200020004000557494454480200020012000A53544F43
      4B56414C55450B0012001000020008444543494D414C53020002000800055749
      44544802000200120008444953434F554E5401004A0010000200075355425459
      5045020049000A00466978656443686172000557494454480200020028000844
      41544546524F4D04000600100000000644415445544F0400060010000000044E
      4F544504004B0010000200075355425459504502004900070042696E61727900
      055749445448020002000800000010736473437573746F6D657250726963650D
      000E05100000000644544C4B4559040001001400000004434F444501004A0014
      0002000753554254595045020049000A00466978656443686172000557494454
      48020002003C00075441475459504501004A0014000200075355425459504502
      0049000A004669786564436861720005574944544802000200020007434F4D50
      414E5901004A00100002000753554254595045020049000A0046697865644368
      6172000557494454480200020014000353455104000100140000000850524943
      4554414701004A00100002000753554254595045020049000A00466978656443
      6861720005574944544802000200140003554F4D01004A001400020007535542
      54595045020049000A0046697865644368617200055749445448020002001400
      035154590B0012001000020008444543494D414C530200020004000557494454
      480200020012000A53544F434B56414C55450B0012001000020008444543494D
      414C5302000200080005574944544802000200120008444953434F554E540100
      4A00100002000753554254595045020049000A00466978656443686172000557
      49445448020002002800084441544546524F4D04000600100000000644415445
      544F0400060010000000044E4F544504004B0010000200075355425459504502
      004900070042696E61727900055749445448020002000800000006736473554F
      4D0A000E051000000004434F444501004A001400020007535542545950450200
      49000A0046697865644368617200055749445448020002003C0003554F4D0100
      4A00140002000753554254595045020049000A00466978656443686172000557
      4944544802000200140004524154450B0012001000020008444543494D414C53
      02000200040005574944544802000200120007524546434F53540B0012001000
      020008444543494D414C53020002000800055749445448020002001200085245
      4650524943450B0012001000020008444543494D414C53020002000800055749
      445448020002001200074D494E434F53540B0012001000020008444543494D41
      4C53020002000800055749445448020002001200074D4158434F53540B001200
      1000020008444543494D414C5302000200080005574944544802000200120008
      4D494E50524943450B0012001000020008444543494D414C5302000200080005
      5749445448020002001200084D415850524943450B0012001000020008444543
      494D414C53020002000800055749445448020002001200064953424153450200
      01001400000000000000005001144001545405501544555500FFFFFFFF0E3C00
      3C004E00650077003E003E0026420045004400440049004E0047002000410043
      0043004500530053004F00520049004500530002540001000246001204000000
      0000000000000000000000000012040000000000000000000000000000000012
      0400000000000000000000000000000000120400000000000001000000000000
      000000022D000000000000000000120800000000000000000000000000000000
      0330323202540012040000000000000000000000000000000012040000000000
      000000000000000000000078470B001208000000000000000000000000000000
      00120800000000000000000000000000000000000001000000000054010E3C00
      3C004E00650077003E003E000855004E00490054001204000000000000010000
      0000000000000012080000000000000000000000000000000012080000000000
      00000000000000000000000100}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 856
    Top = 88
    object ClientDataSet1DOCKEY: TIntegerField
      FieldName = 'DOCKEY'
    end
    object ClientDataSet1CODE: TWideStringField
      FieldName = 'CODE'
      FixedChar = True
      Size = 30
    end
    object ClientDataSet1DESCRIPTION: TWideStringField
      FieldName = 'DESCRIPTION'
      FixedChar = True
      Size = 200
    end
    object ClientDataSet1DESCRIPTION2: TWideStringField
      FieldName = 'DESCRIPTION2'
      FixedChar = True
      Size = 200
    end
    object ClientDataSet1DESCRIPTION3: TBlobField
      FieldName = 'DESCRIPTION3'
      Size = 8
    end
    object ClientDataSet1STOCKGROUP: TWideStringField
      FieldName = 'STOCKGROUP'
      FixedChar = True
    end
    object ClientDataSet1STOCKCONTROL: TWideStringField
      FieldName = 'STOCKCONTROL'
      FixedChar = True
      Size = 1
    end
    object ClientDataSet1COSTINGMETHOD: TSmallintField
      FieldName = 'COSTINGMETHOD'
    end
    object ClientDataSet1SERIALNUMBER: TWideStringField
      FieldName = 'SERIALNUMBER'
      FixedChar = True
      Size = 1
    end
    object ClientDataSet1REMARK1: TWideStringField
      FieldName = 'REMARK1'
      FixedChar = True
      Size = 200
    end
    object ClientDataSet1REMARK2: TWideStringField
      FieldName = 'REMARK2'
      FixedChar = True
      Size = 200
    end
    object ClientDataSet1MINQTY: TFMTBCDField
      FieldName = 'MINQTY'
      Precision = 18
      Size = 4
    end
    object ClientDataSet1MAXQTY: TFMTBCDField
      FieldName = 'MAXQTY'
      Precision = 18
      Size = 4
    end
    object ClientDataSet1REORDERLEVEL: TFMTBCDField
      FieldName = 'REORDERLEVEL'
      Precision = 18
      Size = 4
    end
    object ClientDataSet1REORDERQTY: TFMTBCDField
      FieldName = 'REORDERQTY'
      Precision = 18
      Size = 4
    end
    object ClientDataSet1SHELF: TWideStringField
      FieldName = 'SHELF'
      FixedChar = True
      Size = 40
    end
    object ClientDataSet1SUOM: TWideStringField
      FieldName = 'SUOM'
      FixedChar = True
      Size = 10
    end
    object ClientDataSet1ITEMTYPE: TWideStringField
      FieldName = 'ITEMTYPE'
      FixedChar = True
      Size = 1
    end
    object ClientDataSet1LEADTIME: TIntegerField
      FieldName = 'LEADTIME'
    end
    object ClientDataSet1BOM_LEADTIME: TIntegerField
      FieldName = 'BOM_LEADTIME'
    end
    object ClientDataSet1BOM_ASMCOST: TFMTBCDField
      FieldName = 'BOM_ASMCOST'
      Precision = 18
    end
    object ClientDataSet1SLTAX: TWideStringField
      FieldName = 'SLTAX'
      FixedChar = True
      Size = 10
    end
    object ClientDataSet1PHTAX: TWideStringField
      FieldName = 'PHTAX'
      FixedChar = True
      Size = 10
    end
    object ClientDataSet1TARIFF: TWideStringField
      FieldName = 'TARIFF'
      FixedChar = True
    end
    object ClientDataSet1IRBM_CLASSIFICATION: TStringField
      FieldName = 'IRBM_CLASSIFICATION'
      FixedChar = True
      Size = 3
    end
    object ClientDataSet1STOCKMATRIX: TWideStringField
      FieldName = 'STOCKMATRIX'
      FixedChar = True
      Size = 15
    end
    object ClientDataSet1DEFUOM_ST: TWideStringField
      FieldName = 'DEFUOM_ST'
      FixedChar = True
      Size = 10
    end
    object ClientDataSet1DEFUOM_SL: TWideStringField
      FieldName = 'DEFUOM_SL'
      FixedChar = True
      Size = 10
    end
    object ClientDataSet1DEFUOM_PH: TWideStringField
      FieldName = 'DEFUOM_PH'
      FixedChar = True
      Size = 10
    end
    object ClientDataSet1SCRIPTCODE: TWideStringField
      FieldName = 'SCRIPTCODE'
      FixedChar = True
      Size = 15
    end
    object ClientDataSet1ISACTIVE: TWideStringField
      FieldName = 'ISACTIVE'
      FixedChar = True
      Size = 1
    end
    object ClientDataSet1BALSQTY: TFMTBCDField
      FieldName = 'BALSQTY'
      Precision = 18
      Size = 4
    end
    object ClientDataSet1BALSUOMQTY: TFMTBCDField
      FieldName = 'BALSUOMQTY'
      Precision = 18
      Size = 4
    end
    object ClientDataSet1CREATIONDATE: TDateField
      FieldName = 'CREATIONDATE'
    end
    object ClientDataSet1PICTURE: TBlobField
      FieldName = 'PICTURE'
      Size = 8
    end
    object ClientDataSet1PICTURECLASS: TWideStringField
      FieldName = 'PICTURECLASS'
      FixedChar = True
      Size = 10
    end
    object ClientDataSet1ATTACHMENTS: TBlobField
      FieldName = 'ATTACHMENTS'
      Size = 8
    end
    object ClientDataSet1NOTE: TBlobField
      FieldName = 'NOTE'
      Size = 8
    end
    object ClientDataSet1LASTMODIFIED: TLargeintField
      FieldName = 'LASTMODIFIED'
    end
    object ClientDataSet1REFPRICE: TFMTBCDField
      FieldName = 'REFPRICE'
      Precision = 18
    end
    object ClientDataSet1REFCOST: TFMTBCDField
      FieldName = 'REFCOST'
      Precision = 18
    end
    object ClientDataSet1BARCODE: TWideStringField
      FieldName = 'BARCODE'
      FixedChar = True
      Size = 50
    end
    object ClientDataSet1DIRTY: TBooleanField
      FieldName = 'DIRTY'
    end
    object ClientDataSet1sdsBarcode: TDataSetField
      FieldName = 'sdsBarcode'
      UnNamed = True
    end
    object ClientDataSet1sdsSupplierItem: TDataSetField
      FieldName = 'sdsSupplierItem'
      UnNamed = True
    end
    object ClientDataSet1sdsCustomerItem: TDataSetField
      FieldName = 'sdsCustomerItem'
      UnNamed = True
    end
    object ClientDataSet1sdsAltStockItem: TDataSetField
      FieldName = 'sdsAltStockItem'
      UnNamed = True
    end
    object ClientDataSet1sdsBOM: TDataSetField
      FieldName = 'sdsBOM'
      UnNamed = True
    end
    object ClientDataSet1sdsCategory: TDataSetField
      FieldName = 'sdsCategory'
      UnNamed = True
    end
    object ClientDataSet1sdsOpeningBalance: TDataSetField
      FieldName = 'sdsOpeningBalance'
      UnNamed = True
    end
    object ClientDataSet1sdsSupplierPrice: TDataSetField
      FieldName = 'sdsSupplierPrice'
      UnNamed = True
    end
    object ClientDataSet1sdsCustomerPrice: TDataSetField
      FieldName = 'sdsCustomerPrice'
      UnNamed = True
    end
    object ClientDataSet1sdsUOM: TDataSetField
      FieldName = 'sdsUOM'
      UnNamed = True
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 856
    Top = 152
  end
  object dxBarManager1: TdxBarManager
    AllowReset = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    CanCustomize = False
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    HideFloatingBarsWhenInactive = False
    ImageOptions.CacheGlyphs = False
    ImageOptions.LargeIcons = True
    MenuAnimations = maFade
    MenusShowRecentItemsFirst = False
    PopupMenuLinks = <
      item
      end>
    ShowHint = False
    UseBarHintWindow = False
    UseF10ForMenu = False
    UseSystemFont = False
    Left = 976
    Top = 88
    PixelsPerInch = 96
    DockControlHeights = (
      0
      0
      40
      0)
    object dxBarManager1Bar1: TdxBar
      AllowQuickCustomizing = False
      BorderStyle = bbsNone
      Caption = 'Standard'
      CaptionButtons = <>
      Color = clWhite
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 1210
      FloatTop = 2
      FloatClientWidth = 51
      FloatClientHeight = 40
      ItemLinks = <
        item
          UserDefine = [udPaintStyle]
          Visible = True
          ItemName = 'dxBarButton1'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarButton1: TdxBarButton
      Caption = 'Help'
      Category = 0
      Hint = 'Help'
      Visible = ivAlways
      DropDownEnabled = False
      LargeImageIndex = 0
      ShortCut = 16449
      OnClick = dxBarButton1Click
    end
    object dxBarGroup1: TdxBarGroup
      Items = (
        'dxBarButton1')
    end
  end
  object AdornerMng: TdxUIAdornerManager
    Badges.Font.Charset = DEFAULT_CHARSET
    Badges.Font.Color = clWindowText
    Badges.Font.Height = -12
    Badges.Font.Name = 'Segoe UI'
    Badges.Font.Style = []
    Badges.ParentFont = False
    Left = 976
    Top = 152
    object AdornerMngBadge1: TdxBadge
    end
    object dxUIAdornerManager1Guide1: TdxGuide
      BorderColor = clRed
    end
  end
end