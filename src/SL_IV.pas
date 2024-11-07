unit SL_IV;

interface

uses
  cxButtons, SelectHelp, Vcl.ComCtrls, dxCoreGraphics,
  cxClasses, dxUIAdorners, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxEdit,
  cxGridTableView, cxGridDBTableView, cxGrid, Vcl.Buttons,
  Data.DB, cxContainer, cxMaskEdit, cxDropDownEdit, cxTextEdit,
  Datasnap.DBClient, cxDBEdit, Vcl.Menus,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls,
  Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask, Vcl.ExtCtrls,
  Winapi.Windows, Winapi.Messages, System.SysUtils,System.Variants, dxBar,
  System.ImageList, Vcl.ImgList, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  dxDateRanges, dxScrollbarAnnotations, cxDBData, System.JSON, System.Generics.Collections,
  Adorner, YTEmbed;

type
  TFormSL_IV = class(TForm)
    Address: TDBLabeledEdit;
    ClientDataSet1: TClientDataSet;
    ClientDataSet1ADDRESS1: TWideStringField;
    ClientDataSet1ADDRESS2: TWideStringField;
    ClientDataSet1ADDRESS3: TWideStringField;
    ClientDataSet1ADDRESS4: TWideStringField;
    ClientDataSet1AGENT: TWideStringField;
    ClientDataSet1AREA: TWideStringField;
    ClientDataSet1ATTACHMENTS: TBlobField;
    ClientDataSet1ATTENTION: TWideStringField;
    ClientDataSet1BRANCHNAME: TWideStringField;
    ClientDataSet1CANCELLED: TWideStringField;
    ClientDataSet1CC: TWideStringField;
    ClientDataSet1CHANGED: TWideStringField;
    ClientDataSet1CODE: TWideStringField;
    ClientDataSet1COMPANYNAME: TWideStringField;
    ClientDataSet1COUNTRY: TWideStringField;
    ClientDataSet1CURRENCYCODE: TWideStringField;
    ClientDataSet1CURRENCYRATE: TFMTBCDField;
    ClientDataSet1D_AMOUNT: TFMTBCDField;
    ClientDataSet1DADDRESS1: TWideStringField;
    ClientDataSet1DADDRESS2: TWideStringField;
    ClientDataSet1DADDRESS3: TWideStringField;
    ClientDataSet1DADDRESS4: TWideStringField;
    ClientDataSet1DATTENTION: TWideStringField;
    ClientDataSet1DELIVERYTERM: TWideStringField;
    ClientDataSet1DESCRIPTION: TWideStringField;
    ClientDataSet1DFAX1: TWideStringField;
    ClientDataSet1DMOBILE: TWideStringField;
    ClientDataSet1DOCAMT: TFMTBCDField;
    ClientDataSet1DOCDATE: TDateField;
    ClientDataSet1DOCKEY: TIntegerField;
    ClientDataSet1DOCNO: TWideStringField;
    ClientDataSet1DOCNOEX: TWideStringField;
    ClientDataSet1DOCNOSETKEY: TLargeintField;
    ClientDataSet1DOCREF1: TWideStringField;
    ClientDataSet1DOCREF2: TWideStringField;
    ClientDataSet1DOCREF3: TWideStringField;
    ClientDataSet1DOCREF4: TWideStringField;
    ClientDataSet1DPHONE1: TWideStringField;
    ClientDataSet1FAX1: TWideStringField;
    ClientDataSet1LOCALDOCAMT: TFMTBCDField;
    ClientDataSet1MOBILE: TWideStringField;
    ClientDataSet1NEXTDOCNO: TWideStringField;
    ClientDataSet1NOTE: TBlobField;
    ClientDataSet1PHONE1: TWideStringField;
    ClientDataSet1POSTDATE: TDateField;
    ClientDataSet1PRINTCOUNT: TIntegerField;
    ClientDataSet1PROJECT: TWideStringField;
    ClientDataSet1sdsDocDetail: TDataSetField;
    ClientDataSet1SHIPPER: TWideStringField;
    ClientDataSet1TAXDATE: TDateField;
    ClientDataSet1TAXEXEMPTNO: TWideStringField;
    ClientDataSet1TERMS: TWideStringField;
    ClientDataSet1TRANSFERABLE: TWideStringField;
    ClientDataSet1UPDATECOUNT: TIntegerField;
    ClientDataSet1VALIDITY: TWideStringField;
    ClientDataSet2: TClientDataSet;
    cxButton1: TcxButton;
    cxDBComboBox1: TcxDBComboBox;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBLabeledEdit1: TDBLabeledEdit;
    AdornerMng: TdxUIAdornerManager;
    dxUIAdornerManager1Guide1: TdxGuide;
    Edit1: TDBEdit;
    Label1: TLabel;
    LabeledEdit1: TDBLabeledEdit;
    LabeledEdit2: TDBLabeledEdit;
    LabeledEdit3: TDBLabeledEdit;
    LabeledEdit4: TDBLabeledEdit;
    LabeledEdit5: TDBLabeledEdit;
    LabeledEdit6: TDBLabeledEdit;
    PopupMenu1: TPopupMenu;
    Video1: TMenuItem;
    Guides1: TMenuItem;
    dxBarManager1: TdxBarManager;
    dxBarGroup1: TdxBarGroup;
    dxBarDockControl1: TdxBarDockControl;
    dxBarDockControl2: TdxBarDockControl;
    ImageList1: TImageList;
    dxBarManager1Bar1: TdxBar;
    dxBarButton1: TdxBarButton;
    cxButton2: TcxButton;
    AdornerMngBadge1: TdxBadge;
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
    cxGrid1DBTableView1DTLKEY1: TcxGridDBColumn;
    cxGrid1DBTableView1DOCKEY1: TcxGridDBColumn;
    cxGrid1DBTableView1SEQ1: TcxGridDBColumn;
    cxGrid1DBTableView1STYLEID1: TcxGridDBColumn;
    cxGrid1DBTableView1NUMBER1: TcxGridDBColumn;
    cxGrid1DBTableView1ITEMCODE1: TcxGridDBColumn;
    cxGrid1DBTableView1LOCATION1: TcxGridDBColumn;
    cxGrid1DBTableView1BATCH1: TcxGridDBColumn;
    cxGrid1DBTableView1PROJECT1: TcxGridDBColumn;
    cxGrid1DBTableView1DESCRIPTION1: TcxGridDBColumn;
    cxGrid1DBTableView1DESCRIPTION21: TcxGridDBColumn;
    cxGrid1DBTableView1DESCRIPTION31: TcxGridDBColumn;
    cxGrid1DBTableView1PERMITNO1: TcxGridDBColumn;
    cxGrid1DBTableView1QTY1: TcxGridDBColumn;
    cxGrid1DBTableView1UOM1: TcxGridDBColumn;
    cxGrid1DBTableView1RATE1: TcxGridDBColumn;
    cxGrid1DBTableView1SQTY1: TcxGridDBColumn;
    cxGrid1DBTableView1SUOMQTY1: TcxGridDBColumn;
    cxGrid1DBTableView1UNITPRICE1: TcxGridDBColumn;
    cxGrid1DBTableView1DELIVERYDATE1: TcxGridDBColumn;
    cxGrid1DBTableView1DISC1: TcxGridDBColumn;
    cxGrid1DBTableView1TAX1: TcxGridDBColumn;
    cxGrid1DBTableView1TARIFF1: TcxGridDBColumn;
    cxGrid1DBTableView1TAXRATE1: TcxGridDBColumn;
    cxGrid1DBTableView1TAXAMT1: TcxGridDBColumn;
    cxGrid1DBTableView1LOCALTAXAMT1: TcxGridDBColumn;
    cxGrid1DBTableView1TAXINCLUSIVE1: TcxGridDBColumn;
    cxGrid1DBTableView1AMOUNT1: TcxGridDBColumn;
    cxGrid1DBTableView1LOCALAMOUNT1: TcxGridDBColumn;
    cxGrid1DBTableView1TAXABLEAMT1: TcxGridDBColumn;
    cxGrid1DBTableView1ACCOUNT1: TcxGridDBColumn;
    cxGrid1DBTableView1PRINTABLE1: TcxGridDBColumn;
    cxGrid1DBTableView1FROMDOCTYPE1: TcxGridDBColumn;
    cxGrid1DBTableView1FROMDOCKEY1: TcxGridDBColumn;
    cxGrid1DBTableView1FROMDTLKEY1: TcxGridDBColumn;
    cxGrid1DBTableView1TRANSFERABLE1: TcxGridDBColumn;
    cxGrid1DBTableView1REMARK11: TcxGridDBColumn;
    cxGrid1DBTableView1REMARK21: TcxGridDBColumn;
    cxGrid1DBTableView1INITIALPURCHASECOST1: TcxGridDBColumn;
    cxGrid1DBTableView1CHANGED1: TcxGridDBColumn;
    cxGrid1DBTableView1CompanyItemCode1: TcxGridDBColumn;
    cxButton3: TcxButton;
    procedure FormDestroy(Sender: TObject);
    procedure Guide1Click(Sender: TObject);
    procedure AdornerMngBadgeClick(AManager: TdxUIAdornerManager; AAdorner: TdxCustomAdorner);
    procedure dxBarButton1Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
  private
  var
    FAdornerConfig: TAdornerConfiguration;
    FAdorner: TAdornerManager;
    FBuiltJson: TJsonArray; //TODO: CHANGE BETTER NAME
  public
    procedure ApplyAdornerConfig(AItem: Integer; ATopic: string);
  end;

  var
    FormSL_IV: TFormSL_IV;

implementation

{$R *.dfm}

uses
  System.Net.HttpClient, St_item;

procedure TFormSL_IV.FormDestroy(Sender: TObject);
begin
  FAdorner.Free;
  FBuiltJson.Free;
end;

procedure TFormSL_IV.Guide1Click(Sender: TObject);
var
  IState: boolean;
  IBadges: TdxBadges;
begin
  IState := AdornerMng.Badges.Active;
  IBadges := AdornerMng.Badges;
  if IState = True then IBadges.Active := False else IBadges.Active := True;
end;

procedure TFormSL_IV.dxBarButton1Click(Sender: TObject);
var
  FormSelectHelp: TFormSelectHelp;
begin
  if not Assigned(FAdorner) then
  begin
    FAdornerConfig := TAdornerConfiguration.Create;
    FAdorner := TAdornerManager.Create(AdornerMng, FAdornerConfig);
    FAdorner.FetchAdornerConfig(Self.Name);
  end;

  FormSelectHelp := TFormSelectHelp.Create(Self, FAdorner);
  FormSelectHelp.Config := ApplyAdornerConfig;
  try
    FormSelectHelp.ShowModal;
  finally
    FormSelectHelp.Free;
  end;
end;

procedure TFormSL_IV.ApplyAdornerConfig(AItem: Integer; ATopic: string);
var
  AdornerObj: TJSONObject;
  Adorner: TdxBadge;
  Component: TComponent;
  TargetElementName, Text: string;
begin
  AdornerMng.Badges.Clear;
  if Assigned(FBuiltJson) then FBuiltJson.Free;    //When user changing guide
  FBuiltJson := FAdorner.BuildJsonArray(Self.Name, ATopic);

  for var I := 0 to FBuiltJson.Count - 1 do
  begin
    AdornerObj := FBuiltJson.Items[I] as TJSONObject;
    TargetElementName := AdornerObj.GetValue<string>('targetElement');
    Component := FindComponent(TargetElementName);
    if Assigned(Component) and (Component is TWinControl) then
    begin
      Adorner := AdornerMng.Badges.Add;
      (Adorner.TargetElement as TdxAdornerTargetElementControl).Control := TWinControl(Component);
      Adorner.Text := AdornerObj.GetValue<string>('text', Text);
      Adorner.Tag := I;
      Adorner.OnClick := AdornerMngBadgeClick;
    end;
  end;
end;

procedure TFormSL_IV.cxButton3Click(Sender: TObject);
var
  MyClass: TST_Item;
begin
  MyClass := TSt_item.Create(Self);
  try
    MyClass.ShowModal;
  finally
    MyClass.Free;
  end;
end;

procedure TFormSL_IV.AdornerMngBadgeClick(AManager: TdxUIAdornerManager;
    AAdorner: TdxCustomAdorner);
var
  A: TJsonObject;
  IURL, ITitle: string;
begin
  A := FBuiltJson.Items[AAdorner.Tag] as TJSONObject;
  IURL := A.GetValue<string>('url');
  ITitle := A.GetValue<string>('title');
  TFormBrowser.Create(Application, IURl, ITitle).Show;
end;

end.
