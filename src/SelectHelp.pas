unit SelectHelp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, cxGraphics, cxControls,
  cxContainer, cxEdit, cxListView, System.JSON, System.Generics.Collections,
  Vcl.Menus, Vcl.StdCtrls, cxLookAndFeels, cxLookAndFeelPainters, dxListView,
  cxCustomListBox, cxListBox, dxImageSlider, dxUIAdorners;

type
  TForm4 = class(TForm)
    StaticTxt: TStaticText;
    listView: TdxListViewControl;
    procedure FormShow(Sender: TObject);
    procedure listViewDblClick(Sender: TObject);
    procedure StaticTxtDblClick(Sender: TObject);
    procedure initListView(ConfigArray: TJSONArray);
  private
    FConfig: TJSONArray;
    FAdornerManager: TdxUIAdornerManager;
  public
    constructor Create(AOwner: TComponent); override;
    property ConfigArray: TJsonArray read FConfig write FConfig;
    property AdornerManager: TdxUIAdornerManager read FAdornerManager write FAdornerManager;
  end;

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
  TopicObj: TJSONObject;
  O: TObject;
begin
  O := TObject.Create;
  listView.Clear;
  for var I := 0 to ConfigArray.Count - 1 do
  begin
    TopicObj := ConfigArray.Items[I] as TJSONObject;
    listView.AddItem(TopicObj.GetValue<string>('topic'),O);
  end;
  O.Free;
end;

procedure TForm4.listViewDblClick(Sender: TObject);
var
  Item: TdxListItem;
  P: TPoint;
begin
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

procedure TForm4.StaticTxtDblClick(Sender: TObject);
begin
  FMainForm.HideBadges;
  Close;
end;

end.
