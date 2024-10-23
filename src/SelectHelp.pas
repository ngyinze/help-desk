unit SelectHelp;

interface

uses
  HelpScreen, Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, cxGraphics, cxControls,
  cxContainer, cxEdit, cxListView,
  Vcl.Menus, Vcl.StdCtrls, cxLookAndFeels, cxLookAndFeelPainters;

type
  TAdornerManagerToEnable = (null, amManager1, amManager2);      //NOTE: Null reference to no adorner to enable, thus opening the help screen
  TDataEntrySelectedEvent = reference to procedure(Sender: TObject; ManagerToEnable: TAdornerManagerToEnable);   //NOTE: Anonymous type used for called back at Main Form
  TCloseBadgeEvent = procedure of object;
  TForm4 = class(TForm)
    listView: TcxListView;
    StaticText1: TStaticText;
    procedure listViewDblClick(Sender: TObject);
    procedure StaticText1DblClick(Sender: TObject);
  private
    FOnDataEntrySelected: TDataEntrySelectedEvent;
    FOnCloseBadgeEvent: TCloseBadgeEvent;
  public
    property OnDataEntrySelected: TDataEntrySelectedEvent read FOnDataEntrySelected write FOnDataEntrySelected;
    property OnCloseBadgeEvent: TCloseBadgeEvent read FOnCloseBadgeEvent write FOnCloseBadgeEvent;
  end;

var
  HelpScreen: TForm2;

implementation

{$R *.dfm}

procedure TForm4.listViewDblClick(Sender: TObject);
var
  Item: TListItem;
  P: TPoint;
  ManagerToEnable: TAdornerManagerToEnable;
begin
  ManagerToEnable := null;
  GetCursorPos(P);
  P := listView.ScreenToClient(P);
  Item := listView.GetItemAt(P.X, P.Y);

  if Assigned(Item) then
  begin
    if Item.Caption = 'Create Invoice' then ManagerToEnable := amManager1          //TODO: USE NUMERIC TO COMPARE
    else if Item.Caption = 'E-Invoice Cancellation' then ManagerToEnable := amManager2
    else if Item.Caption = 'Common Usage' then      //CASE: No badge to be displayed
    begin
      HelpScreen := TForm2.Create(nil, 2);
      HelpScreen.BadgeValue := 0;
      HelpScreen.Show;
    end
    else
      Exit;
    if Assigned(FOnDataEntrySelected) then begin
      FOnDataEntrySelected(Self, ManagerToEnable);  //Execute the procedure
      Close;                                        //Close the form after making selection
    end;

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
