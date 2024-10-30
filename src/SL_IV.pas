unit SL_IV;

interface

uses
  cxButtons, SelectHelp, YTEmbed, Vcl.ComCtrls, dxCoreGraphics,
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
  Adorner;

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
    procedure FormDestroy(Sender: TObject);
    procedure Guide1Click(Sender: TObject);
    procedure AdornerMngBadgeClick(AManager: TdxUIAdornerManager; AAdorner: TdxCustomAdorner);
    procedure dxBarButton1Click(Sender: TObject);
  private
  var
    FAdornerConfig: TAdornerConfiguration;
    FAdorner: TAdornerManager;
  public
    procedure ApplyAdornerConfig(AItem: Integer; ConfigArray: TJSONArray);
  end;

  var
    FormSL_IV: TSL_IV;

implementation

{$R *.dfm}

uses
  System.Net.HttpClient, MediaConst;

procedure TSL_IV.FormDestroy(Sender: TObject);
begin
  FAdorner.Free;
  FAdornerConfig.Free;
end;

procedure TSL_IV.Guide1Click(Sender: TObject);
var
  IState: boolean;
  IBadges: TdxBadges;
begin
  IState := AdornerMng.Badges.Active;
  IBadges := AdornerMng.Badges;
  if IState = True then IBadges.Active := False else IBadges.Active := True;
end;

procedure TSL_IV.dxBarButton1Click(Sender: TObject);
var
  FormSelectHelp: TFormSelectHelp;
begin
  if not Assigned(FAdornerConfig) then
  begin
    FAdornerConfig := TAdornerConfiguration.Create;
    FAdorner := TAdornerManager.Create(AdornerMng, FAdornerConfig);
    FAdorner.FetchAdornerConfig(c_Config);
  end;

  FormSelectHelp := TFormSelectHelp.Create(Self, FAdorner);
  try
    FormSelectHelp.ShowModal;
  finally
    FormSelectHelp.Free;
  end;
end;

procedure TSL_IV.ApplyAdornerConfig(AItem: Integer; ConfigArray: TJSONArray);
var
  AdornerObj: TJSONObject;
  ISubtopicArr: TJSONArray;
  Adorner: TdxBadge;
  Component: TComponent;
  TargetElementName, Text: string;
begin
  AdornerMng.Badges.Clear;
  FAdorner.Topic := ConfigArray.Items[AItem] as TJSONObject;
  ISubtopicArr := FAdorner.GetJsonArray('subtopic');
  for var I := 0 to ISubtopicArr.Count - 1 do
  begin
    AdornerObj := ISubtopicArr.Items[I] as TJSONObject;
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

procedure TSL_IV.AdornerMngBadgeClick(AManager: TdxUIAdornerManager;
    AAdorner: TdxCustomAdorner);
var
  ITopic, A: TJsonObject;
  ISubtopicArr: TJSONArray;
  IURL, ITitle, v: string;
begin
  ISubtopicArr := FAdorner.GetJsonArray('subtopic');
  A := ISubtopicArr.Items[AAdorner.Tag] as TJSONObject;
  v := A.GetValue<string>('url');
  ITitle := A.GetValue<string>('title');
  if Pos('http', v) > 0 then
    IURL := v
  else
    IURL := c_Url + v;
  TFormBrowser.Create(Application, IURl, ITitle).Show;
end;

end.
