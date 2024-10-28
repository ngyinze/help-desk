unit SelectHelp;

interface

uses
  HelpScreen, Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, cxGraphics, cxControls,
  cxContainer, cxEdit, cxListView, System.JSON,
  Vcl.Menus, Vcl.StdCtrls, cxLookAndFeels, cxLookAndFeelPainters, dxListView,
  cxCustomListBox, cxListBox, dxImageSlider, dxUIAdorners;

type
  TAdornerManagerToEnable = (null, amManager1, amManager2);      //NOTE: Null reference to no adorner to enable, thus opening the help screen
  TDataEntrySelectedEvent = reference to procedure(Sender: TObject; ManagerToEnable: TAdornerManagerToEnable);   //NOTE: Anonymous type used for called back at Main Form
  TCloseBadgeEvent = procedure of object;
  TForm4 = class(TForm)
    StaticText1: TStaticText;
    listView: TdxListViewControl;
    procedure FormShow(Sender: TObject);
    procedure listViewDblClick(Sender: TObject);
    procedure StaticText1DblClick(Sender: TObject);
    procedure initListView(ConfigArray: TJSONArray);
  private
    FOnDataEntrySelected: TDataEntrySelectedEvent;
    FOnCloseBadgeEvent: TCloseBadgeEvent;
    FConfig: TJSONArray;
    FAdornerManager: TdxUIAdornerManager;
  public
    constructor Create(AOwner: TComponent); override;
    property OnDataEntrySelected: TDataEntrySelectedEvent read FOnDataEntrySelected write FOnDataEntrySelected;
    property OnCloseBadgeEvent: TCloseBadgeEvent read FOnCloseBadgeEvent write FOnCloseBadgeEvent;
    property ConfigArray: TJsonArray read FConfig write FConfig;
    property AdornerManager: TdxUIAdornerManager read FAdornerManager write FAdornerManager;
  end;

var
  HelpScreen: TForm2;

implementation

uses SL_IV;

var FMainForm: TSL_IV;

{$R *.dfm}

constructor TForm4.Create(AOwner: TComponent);
begin
  inherited;
  if AOwner is TSL_IV then
    FMainForm := TSL_IV(AOwner)
  else
    FMainForm := TSL_IV(Application.MainForm);
end;

procedure TForm4.FormShow(Sender: TObject);
begin
  initListView(FConfig);
end;

procedure TForm4.initListView(ConfigArray: TJSONArray);
var
  TopicObj, AdornerObj: TJSONObject;
  TopicsArray: TJSONArray;
  Component: TComponent;
  I, J: Integer;
  Myobj: TObject;
begin
  Myobj := TObject.Create;
  listView.Clear;
  for I := 0 to ConfigArray.Count - 1 do
  begin
    TopicObj := ConfigArray.Items[I] as TJSONObject;
    listView.AddItem(TopicObj.GetValue<string>('topic'),Myobj);
  end;
  MyObj.Free;
end;

procedure TForm4.listViewDblClick(Sender: TObject);
var
  Item: TdxListItem;
  P: TPoint;
  ManagerToEnable: TAdornerManagerToEnable;
begin
  ManagerToEnable := null;
  GetCursorPos(P);
  P := listView.ScreenToClient(P);
  Item := listView.GetItemAt(P.X, P.Y);

  if Assigned(Item) and Assigned(FMainForm) then
  begin
    //Load the desire json item based on the item index
    FMainForm.ApplyAdornerConfig(Item.Index, FConfig);
    if Assigned(FAdornerManager) then FAdornerManager.Badges.Active := True;
    Close;
  end;
end;

procedure TForm4.StaticText1DblClick(Sender: TObject);
begin
  if Assigned(FOnCloseBadgeEvent) then begin
    FOnCloseBadgeEvent;
    Close;
  end;
end;

end.
