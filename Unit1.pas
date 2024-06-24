unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, dxDateRanges, dxScrollbarAnnotations,
  Data.DB, cxDBData, cxContainer, cxMaskEdit, cxDropDownEdit, cxTextEdit,
  cxClasses, dxUIAdorners, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, dxLayoutContainer, Vcl.Buttons,
  Vcl.StdCtrls, dxLayoutControl, Vcl.DBCtrls, Vcl.Mask, Vcl.ExtCtrls,
  Datasnap.DBClient, cxDBEdit;

type
  TForm1 = class(TForm)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxUIAdornerManager1: TdxUIAdornerManager;
    dxUIAdornerManager1Badge1: TdxBadge;
    Label1: TLabel;
    Address: TDBLabeledEdit;
    DBEdit1: TDBEdit;
    DBLabeledEdit1: TDBLabeledEdit;
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    cxDBComboBox1: TcxDBComboBox;
    LabeledEdit1: TDBLabeledEdit;
    LabeledEdit2: TDBLabeledEdit;
    LabeledEdit3: TDBLabeledEdit;
    LabeledEdit4: TDBLabeledEdit;
    LabeledEdit5: TDBLabeledEdit;
    LabeledEdit6: TDBLabeledEdit;
    ClientDataSet2: TClientDataSet;
    DataSource2: TDataSource;
    dxUIAdornerManager1Guide1: TdxGuide;
    cxGrid1DBTableView1DTLKEY: TcxGridDBColumn;
    cxGrid1DBTableView1DOCKEY: TcxGridDBColumn;
    cxGrid1DBTableView1SEQ: TcxGridDBColumn;
    cxGrid1DBTableView1STYLEID: TcxGridDBColumn;
    cxGrid1DBTableView1NUMBER: TcxGridDBColumn;
    cxGrid1DBTableView1ITEMCODE: TcxGridDBColumn;
    cxGrid1DBTableView1LOCATION: TcxGridDBColumn;
    cxGrid1DBTableView1BATCH: TcxGridDBColumn;
    cxGrid1DBTableView1PROJECT: TcxGridDBColumn;
    cxGrid1DBTableView1DESCRIPTION: TcxGridDBColumn;
    cxGrid1DBTableView1DESCRIPTION2: TcxGridDBColumn;
    cxGrid1DBTableView1DESCRIPTION3: TcxGridDBColumn;
    cxGrid1DBTableView1PERMITNO: TcxGridDBColumn;
    cxGrid1DBTableView1QTY: TcxGridDBColumn;
    cxGrid1DBTableView1UOM: TcxGridDBColumn;
    cxGrid1DBTableView1RATE: TcxGridDBColumn;
    cxGrid1DBTableView1SQTY: TcxGridDBColumn;
    cxGrid1DBTableView1SUOMQTY: TcxGridDBColumn;
    cxGrid1DBTableView1UNITPRICE: TcxGridDBColumn;
    cxGrid1DBTableView1DELIVERYDATE: TcxGridDBColumn;
    cxGrid1DBTableView1DISC: TcxGridDBColumn;
    cxGrid1DBTableView1TAX: TcxGridDBColumn;
    cxGrid1DBTableView1TARIFF: TcxGridDBColumn;
    cxGrid1DBTableView1TAXRATE: TcxGridDBColumn;
    cxGrid1DBTableView1TAXAMT: TcxGridDBColumn;
    cxGrid1DBTableView1LOCALTAXAMT: TcxGridDBColumn;
    cxGrid1DBTableView1TAXINCLUSIVE: TcxGridDBColumn;
    cxGrid1DBTableView1AMOUNT: TcxGridDBColumn;
    cxGrid1DBTableView1LOCALAMOUNT: TcxGridDBColumn;
    cxGrid1DBTableView1TAXABLEAMT: TcxGridDBColumn;
    cxGrid1DBTableView1ACCOUNT: TcxGridDBColumn;
    cxGrid1DBTableView1PRINTABLE: TcxGridDBColumn;
    cxGrid1DBTableView1FROMDOCTYPE: TcxGridDBColumn;
    cxGrid1DBTableView1FROMDOCKEY: TcxGridDBColumn;
    cxGrid1DBTableView1FROMDTLKEY: TcxGridDBColumn;
    cxGrid1DBTableView1TRANSFERABLE: TcxGridDBColumn;
    cxGrid1DBTableView1REMARK1: TcxGridDBColumn;
    cxGrid1DBTableView1REMARK2: TcxGridDBColumn;
    cxGrid1DBTableView1INITIALPURCHASECOST: TcxGridDBColumn;
    cxGrid1DBTableView1CHANGED: TcxGridDBColumn;
    cxGrid1DBTableView1CompanyItemCode: TcxGridDBColumn;
    Edit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    ClientDataSet1DOCKEY: TIntegerField;
    ClientDataSet1DOCNO: TWideStringField;
    ClientDataSet1DOCNOEX: TWideStringField;
    ClientDataSet1DOCDATE: TDateField;
    ClientDataSet1POSTDATE: TDateField;
    ClientDataSet1TAXDATE: TDateField;
    ClientDataSet1CODE: TWideStringField;
    ClientDataSet1COMPANYNAME: TWideStringField;
    ClientDataSet1ADDRESS1: TWideStringField;
    ClientDataSet1ADDRESS2: TWideStringField;
    ClientDataSet1ADDRESS3: TWideStringField;
    ClientDataSet1ADDRESS4: TWideStringField;
    ClientDataSet1PHONE1: TWideStringField;
    ClientDataSet1MOBILE: TWideStringField;
    ClientDataSet1FAX1: TWideStringField;
    ClientDataSet1ATTENTION: TWideStringField;
    ClientDataSet1AREA: TWideStringField;
    ClientDataSet1AGENT: TWideStringField;
    ClientDataSet1PROJECT: TWideStringField;
    ClientDataSet1TERMS: TWideStringField;
    ClientDataSet1CURRENCYCODE: TWideStringField;
    ClientDataSet1CURRENCYRATE: TFMTBCDField;
    ClientDataSet1SHIPPER: TWideStringField;
    ClientDataSet1DESCRIPTION: TWideStringField;
    ClientDataSet1COUNTRY: TWideStringField;
    ClientDataSet1CANCELLED: TWideStringField;
    ClientDataSet1DOCAMT: TFMTBCDField;
    ClientDataSet1LOCALDOCAMT: TFMTBCDField;
    ClientDataSet1D_AMOUNT: TFMTBCDField;
    ClientDataSet1VALIDITY: TWideStringField;
    ClientDataSet1DELIVERYTERM: TWideStringField;
    ClientDataSet1CC: TWideStringField;
    ClientDataSet1DOCREF1: TWideStringField;
    ClientDataSet1DOCREF2: TWideStringField;
    ClientDataSet1DOCREF3: TWideStringField;
    ClientDataSet1DOCREF4: TWideStringField;
    ClientDataSet1BRANCHNAME: TWideStringField;
    ClientDataSet1DADDRESS1: TWideStringField;
    ClientDataSet1DADDRESS2: TWideStringField;
    ClientDataSet1DADDRESS3: TWideStringField;
    ClientDataSet1DADDRESS4: TWideStringField;
    ClientDataSet1DATTENTION: TWideStringField;
    ClientDataSet1DPHONE1: TWideStringField;
    ClientDataSet1DMOBILE: TWideStringField;
    ClientDataSet1DFAX1: TWideStringField;
    ClientDataSet1TAXEXEMPTNO: TWideStringField;
    ClientDataSet1ATTACHMENTS: TBlobField;
    ClientDataSet1NOTE: TBlobField;
    ClientDataSet1TRANSFERABLE: TWideStringField;
    ClientDataSet1UPDATECOUNT: TIntegerField;
    ClientDataSet1PRINTCOUNT: TIntegerField;
    ClientDataSet1DOCNOSETKEY: TLargeintField;
    ClientDataSet1NEXTDOCNO: TWideStringField;
    ClientDataSet1CHANGED: TWideStringField;
    ClientDataSet1sdsDocDetail: TDataSetField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
