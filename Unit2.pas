unit Unit2;

interface

uses
  cxLookAndFeelPainters, dxImageSlider, Data.DB, dxGDIPlusClasses, cxClasses,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  Vcl.Menus, Vcl.StdCtrls, cxButtons,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  System.ImageList, Vcl.ImgList, cxImageList, cxContainer, cxEdit, cxLabel,
  Vcl.ExtCtrls, SliderUpdater, ImageRetriever, System.IOUtils;

type
  TForm2 = class(TForm)
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxImageCollection1: TcxImageCollection;
    cxImageCollection1Item1: TcxImageCollectionItem;
    cxImageCollection1Item2: TcxImageCollectionItem;
    cxImageCollection1Item3: TcxImageCollectionItem;
    cxImageCollection1Item4: TcxImageCollectionItem;
    dxImageSlider2: TdxImageSlider;
    StaticText1: TStaticText;
    Panel1: TPanel;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
  private
    FImageRetriever: TImageRetriever;
    FSliderUpdater: TSliderUpdater;
    FBadgeValue: Integer;
    procedure RetrieveImages;
    procedure SetBadgeValue(Value: Integer);
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    property BadgeValue: Integer read FBadgeValue write SetBadgeValue;
  end;


implementation

{$R *.dfm}

const
  ImageURL: TArray<string> =
  ['https://pub-acbba587389e48438cf45bd374515a86.r2.dev/1.gif',
  'https://pub-acbba587389e48438cf45bd374515a86.r2.dev/2.gif',
  'https://pub-acbba587389e48438cf45bd374515a86.r2.dev/3.gif',
  'https://pub-acbba587389e48438cf45bd374515a86.r2.dev/4.gif'];

constructor TForm2.Create(AOwner: TComponent);
var
  CachePath: string;
begin
  inherited Create(AOwner);
  FSliderUpdater := TSliderUpdater.Create(dxImageSlider2, cxImageCollection1, StaticText1);   //overwritten create
  CachePath := TPath.Combine(TPath.GetHomePath, 'SQL', 'ImageCache');
  FImageRetriever := TImageRetriever.Create(CachePath);  //default create
  RetrieveImages;
end;

destructor TForm2.Destroy;
begin
  FSliderUpdater.Free;
  inherited Destroy;
end;

procedure TForm2.RetrieveImages;
begin
  for var i := Low(ImageURL) to High(ImageURL) do
    FImageRetriever.RetrieveImage(ImageURL[i], cxImageCollection1, i);
end;

procedure TForm2.cxButton1Click(Sender: TObject);
begin
  FSliderUpdater.Previous;
end;

procedure TForm2.cxButton2Click(Sender: TObject);
begin
  FSliderUpdater.Next;
end;

procedure TForm2.SetBadgeValue(Value: Integer);
begin
  FSliderUpdater.BadgeValue := Value;
end;


end.
