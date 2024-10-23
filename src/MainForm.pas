unit MainForm;

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
  TMainForm = class(TForm)
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
    dxUIAdornerManager1Badge1: TdxBadge;
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
    dxUIAdornerManager1Badge5: TdxBadge;
    procedure FormCreate(Sender: TObject);
    procedure Guide1Click(Sender: TObject);
    procedure EnableAdornerManager(aIdx: Integer);
    procedure createNewForm(aBadge: Integer; aFormIdx: Integer);
    procedure dxUIAdornerManager2BadgeClick(AManager: TdxUIAdornerManager; AAdorner:
        TdxCustomAdorner);
    procedure dxUIAdornerManager1BadgeClick(AManager: TdxUIAdornerManager; AAdorner: TdxCustomAdorner);
    procedure dxBarButton1Click(Sender: TObject);
    procedure Video1Click(Sender: TObject);
    procedure HideBadges;
    private
    procedure ApplyAdornerConfig(ConfigArray: TJSONArray);
  end;

var
  Form1: TMainForm;
  Form2: TForm2;
  Form3: TForm3;
  Form4: TForm4;

implementation

{$R *.dfm}

uses
  Adorner;

var
  IAdorner: TArray<TdxUIAdornerManager>;

procedure TMainForm.FormCreate(Sender: TObject);
var
  ConfigArray: TJSONArray;
begin
//  ConfigArray := TAdorner.FetchAdornerConfig('https://yourserver.com/adornerConfig.json');
//  if Assigned(ConfigArray) then
//    ApplyAdornerConfig(ConfigArray)
//  else
//    ShowMessage('Failed to load UI configurations.');
end;

procedure TMainForm.createNewForm(aBadge: Integer; aFormIdx: Integer);
begin
  Form2 := TForm2.Create(nil, aFormIdx);
  try
    Form2.BadgeValue := aBadge;
    Form2.ShowModal;   //The form will be freed at onClose Event of Form2
  finally
    Form2.Free;
  end;
end;

procedure TMainForm.ApplyAdornerConfig(ConfigArray: TJSONArray);
var
  Adorner: TdxBadge;
  Config: TJSONObject;
  Component: TComponent;
  I: Integer;
begin
  for I := 0 to ConfigArray.Count - 1 do
  begin
    Config := ConfigArray.Items[I] as TJSONObject;
    Component := FindComponent(Config.GetValue('componentName').Value);
    if Assigned(Component) and (Component is TWinControl) then
    begin
      dxUIAdornerManager1.Badges.Add;

      Adorner := TdxBadge.Create(Self);
//      Adorner.TargetElement.Control := TWinControl(Component);
      Adorner.Text := Config.GetValue('badgeText').Value;
      Adorner.Offset.X := StrToInt(Config.GetValue('x_position').value);
      Adorner.Offset.Y := StrToInt(Config.GetValue('y_position').value);
      Adorner.Visible := StrToBool(Config.GetValue('visible').Value);

      dxUIAdornerManager1.Badges.Items[i] := Adorner;


    end;
  end;
end;

procedure TMainForm.Guide1Click(Sender: TObject);
var
  IState: boolean;
  IBadges: TdxBadges;
begin
  IState := dxUIAdornerManager1.Badges.Active;
  IBadges := dxUIAdornerManager1.Badges;
//  badge := dxUIAdornerManager1.Badges.Add;
//  (badge.TargetElement as TdxAdornerTargetElementControl).Control := labelededit3;
  if IState = True then IBadges.Active := False else IBadges.Active := True;
end;

procedure TMainForm.dxBarButton1Click(Sender: TObject);
begin
  Form4 := TForm4.Create(nil);
  try
    Form4.OnDataEntrySelected := procedure(Sender: TObject; ManagerToEnable: TAdornerManagerToEnable) //pass the anonymous method to form 4
    begin
      case ManagerToEnable of
        amManager1: EnableAdornerManager(0);
        amManager2: EnableAdornerManager(1);
      end;
    end;
    Form4.OnCloseBadgeEvent := HideBadges;
    Form4.ShowModal;
  finally
    Form4.Free;
  end;
end;

procedure TMainForm.dxUIAdornerManager1BadgeClick(AManager: TdxUIAdornerManager;
    AAdorner: TdxCustomAdorner);
begin
  //Determine which badge is clicked
  case AAdorner.ID of
    0: createNewForm(0, 0);
    1: createNewForm(1, 0);
    2: createNewForm(2, 0);
    3: createNewForm(3, 0);
  end;
end;

procedure TMainForm.dxUIAdornerManager2BadgeClick(AManager: TdxUIAdornerManager;
    AAdorner: TdxCustomAdorner);
begin
  case AAdorner.ID of
    0: createNewForm(0, 1);
    1: createNewForm(1, 1);
    2: createNewForm(2, 1);
  end;
end;

procedure TMainForm.EnableAdornerManager(aIdx: Integer);
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

procedure TMainForm.HideBadges;
begin
  for var Adorner in IAdorner do Adorner.Badges.Active := False;
end;

procedure TMainForm.Video1Click(Sender: TObject);
begin
  Form3 := TForm3.Create(nil);
  try
    Form3.ShowModal;
  finally
    Form3.Free;
  end;
end;


end.