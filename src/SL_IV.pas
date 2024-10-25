unit SL_IV;

interface

uses
  cxButtons, SelectHelp, HelpScreen, YTEmbed, Vcl.ComCtrls, dxCoreGraphics,
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
  dxDateRanges, dxScrollbarAnnotations, cxDBData, System.JSON;

type
  TSL_IV = class(TForm)
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
    cxGrid1DBTableView1ACCOUNT: TcxGridDBColumn;
    cxGrid1DBTableView1AMOUNT: TcxGridDBColumn;
    cxGrid1DBTableView1BATCH: TcxGridDBColumn;
    cxGrid1DBTableView1CHANGED: TcxGridDBColumn;
    cxGrid1DBTableView1CompanyItemCode: TcxGridDBColumn;
    cxGrid1DBTableView1DELIVERYDATE: TcxGridDBColumn;
    cxGrid1DBTableView1DESCRIPTION: TcxGridDBColumn;
    cxGrid1DBTableView1DESCRIPTION2: TcxGridDBColumn;
    cxGrid1DBTableView1DESCRIPTION3: TcxGridDBColumn;
    cxGrid1DBTableView1DISC: TcxGridDBColumn;
    cxGrid1DBTableView1DOCKEY: TcxGridDBColumn;
    cxGrid1DBTableView1DTLKEY: TcxGridDBColumn;
    cxGrid1DBTableView1FROMDOCKEY: TcxGridDBColumn;
    cxGrid1DBTableView1FROMDOCTYPE: TcxGridDBColumn;
    cxGrid1DBTableView1FROMDTLKEY: TcxGridDBColumn;
    cxGrid1DBTableView1INITIALPURCHASECOST: TcxGridDBColumn;
    cxGrid1DBTableView1ITEMCODE: TcxGridDBColumn;
    cxGrid1DBTableView1LOCALAMOUNT: TcxGridDBColumn;
    cxGrid1DBTableView1LOCALTAXAMT: TcxGridDBColumn;
    cxGrid1DBTableView1LOCATION: TcxGridDBColumn;
    cxGrid1DBTableView1NUMBER: TcxGridDBColumn;
    cxGrid1DBTableView1PERMITNO: TcxGridDBColumn;
    cxGrid1DBTableView1PRINTABLE: TcxGridDBColumn;
    cxGrid1DBTableView1PROJECT: TcxGridDBColumn;
    cxGrid1DBTableView1QTY: TcxGridDBColumn;
    cxGrid1DBTableView1RATE: TcxGridDBColumn;
    cxGrid1DBTableView1REMARK1: TcxGridDBColumn;
    cxGrid1DBTableView1REMARK2: TcxGridDBColumn;
    cxGrid1DBTableView1SEQ: TcxGridDBColumn;
    cxGrid1DBTableView1SQTY: TcxGridDBColumn;
    cxGrid1DBTableView1STYLEID: TcxGridDBColumn;
    cxGrid1DBTableView1SUOMQTY: TcxGridDBColumn;
    cxGrid1DBTableView1TARIFF: TcxGridDBColumn;
    cxGrid1DBTableView1TAX: TcxGridDBColumn;
    cxGrid1DBTableView1TAXABLEAMT: TcxGridDBColumn;
    cxGrid1DBTableView1TAXAMT: TcxGridDBColumn;
    cxGrid1DBTableView1TAXINCLUSIVE: TcxGridDBColumn;
    cxGrid1DBTableView1TAXRATE: TcxGridDBColumn;
    cxGrid1DBTableView1TRANSFERABLE: TcxGridDBColumn;
    cxGrid1DBTableView1UNITPRICE: TcxGridDBColumn;
    cxGrid1DBTableView1UOM: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBLabeledEdit1: TDBLabeledEdit;
    dxUIAdornerManager1: TdxUIAdornerManager;
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
    dxUIAdornerManager2: TdxUIAdornerManager;
    dxUIAdornerManager2Badge1: TdxBadge;
    dxUIAdornerManager2Badge2: TdxBadge;
    dxUIAdornerManager2Badge3: TdxBadge;
    dxGuide1: TdxGuide;
    dxUIAdornerManager3: TdxUIAdornerManager;
    dxBadge1: TdxBadge;
    dxBadge2: TdxBadge;
    dxBadge3: TdxBadge;
    dxBadge4: TdxBadge;
    dxBadge5: TdxBadge;
    dxGuide2: TdxGuide;
    procedure Guide1Click(Sender: TObject);
    procedure EnableAdornerManager(aIdx: Integer);
    procedure createNewForm(AUrl: string);
    procedure dxUIAdornerManager1BadgeClick(AManager: TdxUIAdornerManager; AAdorner: TdxCustomAdorner);
    procedure dxBarButton1Click(Sender: TObject);
    procedure Video1Click(Sender: TObject);
    procedure HideBadges;
  public
    procedure ApplyAdornerConfig(AItem: Integer; ConfigArray: TJSONArray);
  end;

var
  Form1: TSL_IV;
  Form2: TForm2;
  Form3: TForm3;
  Form4: TForm4;
  SubtopicsArray: TJSONArray; //not sure want to put it in class or not

implementation

{$R *.dfm}

uses
  Adorner, System.Net.HttpClient;

var
  IAdorner: TArray<TdxUIAdornerManager>;

procedure TSL_IV.createNewForm(AUrl: string);
begin
  Form3 := TForm3.Create(nil, AUrl);
  try
    Form3.ShowModal;
  finally
    Form3.Free;
  end;
end;


procedure TSL_IV.Guide1Click(Sender: TObject);
var
  IState: boolean;
  IBadges: TdxBadges;
begin
  IState := dxUIAdornerManager1.Badges.Active;
  IBadges := dxUIAdornerManager1.Badges;
  if IState = True then IBadges.Active := False else IBadges.Active := True;
end;

procedure TSL_IV.dxBarButton1Click(Sender: TObject);
var
  ConfigArray: TJSONArray;
begin
  Form4 := TForm4.Create(Self);
  try
    ConfigArray := TAdorner.FetchAdornerConfig('https://raw.githubusercontent.com/ngyinze/help-desk/refs/heads/yinze/badges/json/invoice.json');
//    Form4.OnDataEntrySelected := procedure(Sender: TObject; ManagerToEnable: TAdornerManagerToEnable) //pass the anonymous method to form 4
//    begin
//      case ManagerToEnable of
//        amManager1: EnableAdornerManager(0);
//        amManager2: EnableAdornerManager(1);
//      end;
//    end;
//    Form4.OnCloseBadgeEvent := HideBadges;
    Form4.AdornerManager := dxUIAdornerManager1;
    Form4.ConfigArray := ConfigArray;
    Form4.ShowModal;
  finally
    Form4.Free;
  end;
end;

procedure TSL_IV.ApplyAdornerConfig(AItem: Integer; ConfigArray: TJSONArray);
var
  TopicObj, AdornerObj: TJSONObject;
  Adorner: TdxBadge;
  Component: TComponent;
  I, J: Integer;
  TargetElementName, Text, Title: string;
begin
  begin
    dxUIAdornerManager1.Badges.Clear;
    TopicObj := ConfigArray.Items[AItem] as TJSONObject;
    if TopicObj.TryGetValue<TJSONArray>('subtopic', SubtopicsArray) then
    begin
      for J := 0 to SubtopicsArray.Count - 1 do
      begin
        AdornerObj := SubtopicsArray.Items[J] as TJSONObject;
        TargetElementName := AdornerObj.GetValue<string>('targetElement');
        Component := FindComponent(TargetElementName);
        if Assigned(Component) and (Component is TWinControl) then
        begin
          Adorner := TdxBadge.Create(Self);
          Adorner := dxUIAdornerManager1.Badges.Add;
          (Adorner.TargetElement as TdxAdornerTargetElementControl).Control := TWinControl(Component);
          Adorner.Text := AdornerObj.GetValue<string>('text', Text);
          Adorner.OnClick := dxUIAdornerManager1BadgeClick;
        end
      end
    end;
  end;
end;

procedure TSL_IV.dxUIAdornerManager1BadgeClick(AManager: TdxUIAdornerManager;
    AAdorner: TdxCustomAdorner);
var
  A: TJsonObject;
  IUrl: string;
begin
  A := SubtopicsArray.Items[AAdorner.ID] as TJSONObject;
  IUrl := A.GetValue<string>('url');
  createNewForm(IURL);
end;

procedure TSL_IV.EnableAdornerManager(aIdx: Integer);
var
  Adorner: TdxUIAdornerManager;
begin
  Setlength(IAdorner, 3);

  IAdorner := [
    dxUIAdornerManager1,
    dxUIAdornerManager2
  ];

  for Adorner in IAdorner do Adorner.Badges.Active := False;

  IAdorner[aIdx].Badges.Active := True;
end;

procedure TSL_IV.HideBadges;
begin
  for var Adorner in IAdorner do Adorner.Badges.Active := False;
end;

procedure TSL_IV.Video1Click(Sender: TObject);
begin
//  Form3 := TForm3.Create(nil);
//  try
//    Form3.ShowModal;
//  finally
//    Form3.Free;
//  end;
end;


end.
