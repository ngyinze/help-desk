unit SelectHelp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ComCtrls, cxGraphics, cxControls,cxContainer, cxEdit, cxListView,
  System.JSON, System.Generics.Collections, Vcl.Menus, Vcl.StdCtrls,
  cxLookAndFeels, cxLookAndFeelPainters, dxListView,
  cxCustomListBox, cxListBox, dxImageSlider, dxUIAdorners,
  Adorner, cxButtons;

type
  TConfig = procedure(AInterface, AItem: Integer) of object;

  TFormSelectHelp = class(TForm)
    listView: TdxListViewControl;
    cxButton1: TcxButton;
    procedure FormShow(Sender: TObject);
    procedure listViewDblClick(Sender: TObject);
    procedure StaticTxtDblClick(Sender: TObject);
  private
    FApplyAdorner: TConfig;
    FAdornerManager: TAdornerManager;
    FName: string;
  public
    constructor Create(AOwner: TComponent; AAdorner: TAdornerManager;
                        AFormName: string); reintroduce;
    property Config: TConfig read FApplyAdorner write FApplyAdorner;
  end;

implementation

{$R *.dfm}

var FormIDX: Integer;

constructor TFormSelectHelp.Create(AOwner: TComponent;
              AAdorner: TAdornerManager; AFormName: string);
begin
  inherited Create(AOwner);
  FAdornerManager := AAdorner;
  FName := AFormName;
end;

procedure TFormSelectHelp.FormShow(Sender: TObject);
var
  O: TObject;
begin
  var D := FAdornerManager.Config.Dataset;
  O := TObject.Create;
  try
    listView.Clear;
    for var I := 0 to High(D) do
    begin
      if D[i].interface_ = FName then
      begin
        for var J := 0 to High(D[I].Topic) do
        begin
          FormIdx := I;
          listView.AddItem(D[I].Topic[J].Name, O);
        end;
        Exit;
      end;
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

  if Assigned(Item) then
  begin
    FApplyAdorner(FormIdx, Item.Index);
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
