unit Unit2;

interface

uses
  cxLookAndFeelPainters, dxImageSlider, Data.DB, dxGDIPlusClasses, cxClasses,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  Vcl.Menus, Vcl.StdCtrls, cxButtons,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  System.ImageList, Vcl.ImgList, cxImageList, cxContainer, cxEdit, cxLabel,
  Vcl.ExtCtrls, SliderUpdater, ImageRetriever, System.IOUtils, cxImage;

type
  TForm2 = class(TForm)
    btnLeft: TcxButton;
    btnRight: TcxButton;
    imgCollection: TcxImageCollection;
    imgCollectionItem1: TcxImageCollectionItem;
    imgCollectionItem2: TcxImageCollectionItem;
    imgCollectionItem3: TcxImageCollectionItem;
    imgCollectionItem4: TcxImageCollectionItem;
    imgSlider: TdxImageSlider;
    txtSteps: TStaticText;
    Panel1: TPanel;
    imgNoInternet: TcxImage;
    btnRetry: TcxButton;
    procedure btnLeftClick(Sender: TObject);
    procedure btnRightClick(Sender: TObject);
    procedure btnRetryClick(Sender: TObject);
  private
    FImageRetriever: TImageRetriever;
    FSliderUpdater: TSliderUpdater;
    FBadgeValue: Integer;
    FImagesLoaded: Boolean;
    procedure InitializeComponents;
    procedure RetrieveImages;
    procedure SetBadgeValue(Value: Integer);
    procedure ShowNoInternetWarning;
    procedure HideNoInternetWarning;
    procedure UpdateUIState;
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
begin
  inherited Create(AOwner);
  FImagesLoaded := False;
  InitializeComponents;
  RetrieveImages;
end;

destructor TForm2.Destroy;
begin
  FSliderUpdater.Free;
  FImageRetriever.Free;
  inherited Destroy;
end;

procedure TForm2.InitializeComponents;
var
  CachePath: string;
begin
  FSliderUpdater := TSliderUpdater.Create(imgSlider, imgCollection, txtSteps);
  CachePath := TPath.Combine(TPath.GetHomePath, 'SQL', 'ImageCache');
  FImageRetriever := TImageRetriever.Create(CachePath);
  imgNoInternet.Visible := False;
  btnRetry.Visible := False;
end;

procedure TForm2.RetrieveImages;
var
  I: Integer;
  AllImagesLoaded: Boolean;
begin
  AllImagesLoaded := True;
  for I := Low(ImageURL) to High(ImageURL) do
  begin
    try
      FImageRetriever.RetrieveImage(ImageURL[I], imgCollection, I);
    except
      on E: ENoInternetConnection do
      begin
        AllImagesLoaded := False;
        Break;
      end;
      on E: Exception do
      begin
        AllImagesLoaded := False;
        Break;
      end;
    end;
  end;

  FImagesLoaded := AllImagesLoaded;
  UpdateUIState;
end;

procedure TForm2.UpdateUIState;
begin
  if FImagesLoaded then
  begin
    HideNoInternetWarning;
    imgSlider.Visible := True;
    btnLeft.Enabled := True;
    btnRight.Enabled := True;
    FSliderUpdater.BadgeValue := 0;
  end
  else
  begin
    ShowNoInternetWarning;
    imgSlider.Visible := False;
    btnLeft.Enabled := False;
    btnRight.Enabled := False;
  end;
end;

procedure TForm2.ShowNoInternetWarning;
begin
  imgNoInternet.Visible := True;
  btnRetry.Visible := True;
  imgSlider.Visible := False;
  txtSteps.Caption := 'No internet connection. Please connect and retry.';
end;

procedure TForm2.HideNoInternetWarning;
begin
  imgNoInternet.Visible := False;
  btnRetry.Visible := False;
  imgSlider.Visible := True;
end;

procedure TForm2.btnRetryClick(Sender: TObject);
begin
  RetrieveImages;
end;

procedure TForm2.btnLeftClick(Sender: TObject);
begin
  FSliderUpdater.Previous;
end;

procedure TForm2.btnRightClick(Sender: TObject);
begin
  FSliderUpdater.Next;
end;

procedure TForm2.SetBadgeValue(Value: Integer);
begin
  FBadgeValue := Value;
  if FImagesLoaded then
    FSliderUpdater.BadgeValue := Value;
end;

end.
