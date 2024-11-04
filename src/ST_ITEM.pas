unit ST_ITEM;

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
  Adorner, cxHeader;

type
  TST_ITEM = class(TForm)
    ClientDataSet1: TClientDataSet;
    ClientDataSet1DOCKEY: TIntegerField;
    ClientDataSet1CODE: TWideStringField;
    ClientDataSet1DESCRIPTION: TWideStringField;
    ClientDataSet1DESCRIPTION2: TWideStringField;
    ClientDataSet1DESCRIPTION3: TBlobField;
    ClientDataSet1STOCKGROUP: TWideStringField;
    ClientDataSet1STOCKCONTROL: TWideStringField;
    ClientDataSet1COSTINGMETHOD: TSmallintField;
    ClientDataSet1SERIALNUMBER: TWideStringField;
    ClientDataSet1REMARK1: TWideStringField;
    ClientDataSet1REMARK2: TWideStringField;
    ClientDataSet1MINQTY: TFMTBCDField;
    ClientDataSet1MAXQTY: TFMTBCDField;
    ClientDataSet1REORDERLEVEL: TFMTBCDField;
    ClientDataSet1REORDERQTY: TFMTBCDField;
    ClientDataSet1SHELF: TWideStringField;
    ClientDataSet1SUOM: TWideStringField;
    ClientDataSet1ITEMTYPE: TWideStringField;
    ClientDataSet1LEADTIME: TIntegerField;
    ClientDataSet1BOM_LEADTIME: TIntegerField;
    ClientDataSet1BOM_ASMCOST: TFMTBCDField;
    ClientDataSet1SLTAX: TWideStringField;
    ClientDataSet1PHTAX: TWideStringField;
    ClientDataSet1TARIFF: TWideStringField;
    ClientDataSet1IRBM_CLASSIFICATION: TStringField;
    ClientDataSet1STOCKMATRIX: TWideStringField;
    ClientDataSet1DEFUOM_ST: TWideStringField;
    ClientDataSet1DEFUOM_SL: TWideStringField;
    ClientDataSet1DEFUOM_PH: TWideStringField;
    ClientDataSet1SCRIPTCODE: TWideStringField;
    ClientDataSet1ISACTIVE: TWideStringField;
    ClientDataSet1BALSQTY: TFMTBCDField;
    ClientDataSet1BALSUOMQTY: TFMTBCDField;
    ClientDataSet1CREATIONDATE: TDateField;
    ClientDataSet1PICTURE: TBlobField;
    ClientDataSet1PICTURECLASS: TWideStringField;
    ClientDataSet1ATTACHMENTS: TBlobField;
    ClientDataSet1NOTE: TBlobField;
    ClientDataSet1LASTMODIFIED: TLargeintField;
    ClientDataSet1REFPRICE: TFMTBCDField;
    ClientDataSet1REFCOST: TFMTBCDField;
    ClientDataSet1BARCODE: TWideStringField;
    ClientDataSet1DIRTY: TBooleanField;
    ClientDataSet1sdsBarcode: TDataSetField;
    ClientDataSet1sdsSupplierItem: TDataSetField;
    ClientDataSet1sdsCustomerItem: TDataSetField;
    ClientDataSet1sdsAltStockItem: TDataSetField;
    ClientDataSet1sdsBOM: TDataSetField;
    ClientDataSet1sdsCategory: TDataSetField;
    ClientDataSet1sdsOpeningBalance: TDataSetField;
    ClientDataSet1sdsSupplierPrice: TDataSetField;
    ClientDataSet1sdsCustomerPrice: TDataSetField;
    ClientDataSet1sdsUOM: TDataSetField;
    DataSource1: TDataSource;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    cxHeader1: TcxHeader;
    Label2: TLabel;
    dxBarDockControl1: TdxBarDockControl;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarButton1: TdxBarButton;
    dxBarGroup1: TdxBarGroup;
    AdornerMng: TdxUIAdornerManager;
    AdornerMngBadge1: TdxBadge;
    dxUIAdornerManager1Guide1: TdxGuide;
    procedure FormDestroy(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure AdornerMngBadgeClick(AManager: TdxUIAdornerManager; AAdorner: TdxCustomAdorner);
  private
    FAdornerConfig: TAdornerConfiguration;
    FAdorner: TAdornerManager;
  public
    procedure ApplyAdornerConfig(AItem: Integer; ConfigArray: TJSONArray);
  end;

var
  FormST_ITEM: TST_ITEM;

implementation

{$R *.dfm}

uses MediaConst;

procedure TST_ITEM.FormDestroy(Sender: TObject);
begin
  FAdorner.Free;
  FAdornerConfig.Free;
end;

procedure TST_ITEM.dxBarButton1Click(Sender: TObject);
var
  FormSelectHelp: TFormSelectHelp;
begin
  if not Assigned(FAdornerConfig) then
  begin
    FAdornerConfig := TAdornerConfiguration.Create;
    FAdorner := TAdornerManager.Create(AdornerMng, FAdornerConfig);
    FAdorner.FetchAdornerConfig(c_STITEM_cfg);
  end;

  FormSelectHelp := TFormSelectHelp.Create(Self, FAdorner);
  FormSelectHelp.Config := ApplyAdornerConfig;
  try
    FormSelectHelp.ShowModal;
  finally
    FormSelectHelp.Free;
  end;
end;

procedure TST_ITEM.ApplyAdornerConfig(AItem: Integer; ConfigArray: TJSONArray);
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
    if Assigned(Component) and (Component is TWinControl) then   //Adorner's guide
    begin
      Adorner := AdornerMng.Badges.Add;
      (Adorner.TargetElement as TdxAdornerTargetElementControl).Control := TWinControl(Component);
      Adorner.Text := AdornerObj.GetValue<string>('text', Text);
      Adorner.Tag := I;
      Adorner.OnClick := AdornerMngBadgeClick;
    end;
  end;
end;

procedure TST_ITEM.AdornerMngBadgeClick(AManager: TdxUIAdornerManager;
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
  if Pos('http', v) > 0 then   //URL in json is http
    IURL := v
  else
    IURL := c_Url + v;  //URL in json is path
  TFormBrowser.Create(Self, IURl, ITitle).Show;
end;

end.
