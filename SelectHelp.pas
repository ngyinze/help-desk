unit SelectHelp;

interface

uses
  MediaConst, HelpScreen, FeatureScreen, Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxListView,
  Vcl.Menus, Vcl.StdCtrls, cxButtons;

type
  TAdornerManagerToEnable = (amManager1, amManager2);
  TDataEntrySelectedEvent = reference to procedure(Sender: TObject; ManagerToEnable: TAdornerManagerToEnable);
  TForm4 = class(TForm)
    lvSelect: TcxListView;
    procedure lvSelectDblClick(Sender: TObject);
  private
    FOnDataEntrySelected: TDataEntrySelectedEvent;
  public
    property OnDataEntrySelected: TDataEntrySelectedEvent read FOnDataEntrySelected write FOnDataEntrySelected;
  end;

var
  HelpScreen: TForm2;
//  Form4: TForm4;
//  FeatureScreen: TForm5;

implementation

{$R *.dfm}


procedure TForm4.lvSelectDblClick(Sender: TObject);
var
  Item: TListItem;
  P: TPoint;
  ManagerToEnable: TAdornerManagerToEnable;
begin
  GetCursorPos(P);
  P := lvSelect.ScreenToClient(P);
  Item := lvSelect.GetItemAt(P.X, P.Y);

  if Assigned(Item) then
  begin
    if Item.Caption = 'Create Invoice' then
      ManagerToEnable := amManager1
    else if Item.Caption = 'Create E-Invoice' then
      begin
        ManagerToEnable := amManager2
//        HelpScreen := TForm2.Create(Self);
//        try
//          HelpScreen.NodeCaption := 'Create E-Invoice';
//          HelpScreen.BadgeValue := 1;
//          HelpScreen.ShowModal;
//        finally
//          HelpScreen.Free;
//        end;
      end
    else
      Exit;
    if Assigned(FOnDataEntrySelected) then begin
      FOnDataEntrySelected(Self, ManagerToEnable);// execute the procedure
      Close;
    end;
//    Close;
  end;
end;


end.
