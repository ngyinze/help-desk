unit SelectHelp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, cxGraphics, cxControls,
  cxContainer, cxEdit, cxListView, System.JSON, System.Generics.Collections,
  Vcl.Menus, Vcl.StdCtrls, cxLookAndFeels, cxLookAndFeelPainters, dxListView,
  cxCustomListBox, cxListBox, dxImageSlider, dxUIAdorners,
  Adorner;

type
  TFormSelectHelp = class(TForm)
    StaticTxt: TStaticText;
    listView: TdxListViewControl;
    procedure FormShow(Sender: TObject);
    procedure listViewDblClick(Sender: TObject);
    procedure StaticTxtDblClick(Sender: TObject);
  private
    FAdornerManager: TAdornerManager;
    procedure initListView;
  public
    constructor Create(AOwner: TComponent; AAdorner: TAdornerManager); reintroduce;
  end;

implementation

uses SL_IV;

var FMainForm: TSL_IV;

{$R *.dfm}

constructor TFormSelectHelp.Create(AOwner: TComponent; AAdorner: TAdornerManager);
begin
  inherited Create(AOwner);
  FMainForm := TSL_IV(AOwner);
  FAdornerManager := AAdorner;
end;

procedure TFormSelectHelp.FormShow(Sender: TObject);
begin
  initListView;
end;

procedure TFormSelectHelp.initListView;
var
  TopicObj: TJSONObject;
  O: TObject;
begin
  O := TObject.Create;
  try
    listView.Clear;
    for var I := 0 to FAdornerManager.Config.Count - 1 do
    begin
      TopicObj := FAdornerManager.Config.Items[I] as TJSONObject;
      listView.AddItem(TopicObj.GetValue<string>('topic'),O);
    end;
  finally
    O.Free;
  end;
end;

procedure TFormSelectHelp.listViewDblClick(Sender: TObject);
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
    FMainForm.ApplyAdornerConfig(Item.Index, FAdornerManager.Config);
    if Assigned(FAdornerManager) then FAdornerManager.Show;
  end;
  Close;
end;

procedure TFormSelectHelp.StaticTxtDblClick(Sender: TObject);
begin
  FAdornerManager.Hide;
  Close;
end;

end.
