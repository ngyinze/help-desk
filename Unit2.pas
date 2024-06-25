unit Unit2;

interface

uses
  cxLookAndFeelPainters, dxImageSlider, Data.DB, dxGDIPlusClasses, cxClasses,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  Vcl.Menus, Vcl.StdCtrls, cxButtons,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics;

type
  TForm2 = class(TForm)
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxImageCollection1: TcxImageCollection;
    cxImageCollection1Item1: TcxImageCollectionItem;
    cxImageCollection1Item2: TcxImageCollectionItem;
    cxImageCollection1Item3: TcxImageCollectionItem;
    cxImageCollection1Item4: TcxImageCollectionItem;
    dxImageSlider2: TdxImageSlider;
    StaticText1: TStaticText;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
  private
    FaBadge: Integer;
    procedure SetFaBadge(Value: Integer);
  public
    property BadgeValue: Integer read FaBadge write SetFaBadge;
    
  end;


implementation

{$R *.dfm}

const
  MyArray: TArray<String> = [
    'Step 1: Select Customer',
    'Step 2: Enter relevant details',
    'Step 3: Write description for this invoice',
    'Step 4: Click to add a new item record'
  ];

procedure TForm2.cxButton1Click(Sender: TObject);
begin
  dxImageSlider2.ItemIndex := dxImageSlider2.ItemIndex - 1;
  StaticText1.Caption := MyArray[dxImageSlider2.ItemIndex];
end;

procedure TForm2.cxButton2Click(Sender: TObject);
begin
  dxImageSlider2.ItemIndex := dxImageSlider2.ItemIndex + 1;
  StaticText1.Caption := MyArray[dxImageSlider2.ItemIndex];
end;

procedure TForm2.SetFaBadge(Value: Integer);
begin
  FaBadge := Value;
  dxImageSlider2.ItemIndex := FaBadge;
  StaticText1.Caption := MyArray[FaBadge];
end;

end.
