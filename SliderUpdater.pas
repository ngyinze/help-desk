unit SliderUpdater;

interface

uses
  cxHyperLinkEdit, dxImageSlider, cxGraphics, cxListView, Vcl.StdCtrls, dxGDIPlusClasses, dxCore, dxListView,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes;

type
  TSliderUpdater = class
    private
      FSlider: TdxImageSlider;
      FImageCollection: TcxImageCollection;
      FStaticText: TStaticText;
      FStepDescriptions, FLink: TArray<String>;
      procedure SetSlider(aIndex: Integer);
      function GetSlider(): Integer;
      procedure AnimateImage;
    public
      constructor Create(ASlider: TdxImageSlider; AImageCollection: TcxImageCollection; AStaticText: TStaticText; AStepDescription, Alink: TArray<string>);
      property BadgeValue: Integer read GetSlider write SetSlider;
      procedure Next;
      procedure Previous;
      procedure UpdateSlider(aIndex: Integer);
      function GetLink(): string;
    end;

implementation

constructor TSliderUpdater.Create(ASlider: TdxImageSlider;
  AImageCollection: TcxImageCollection; AStaticText: TStaticText;
    AStepDescription, ALink: TArray<string>);
begin
  FSlider := ASlider;
  FImageCollection := AImageCollection;
  FStaticText := AStaticText;
  FStepDescriptions := AStepDescription;
  FLink := ALink;
end;

function TSliderUpdater.GetLink: string;
begin
  Result := FLink[FSlider.ItemIndex];
end;

function TSliderUpdater.GetSlider;
begin
  Result := FSlider.ItemIndex;
end;

procedure TSliderUpdater.AnimateImage;
var
  IImage: TdxSmartImage;
begin
  IImage := (FImageCollection.Items[FSlider.ItemIndex].Picture.Graphic) as TdxSmartImage;
  IImage.AnimationLoop := bFalse;
  IImage.ActiveFrame := 0;
  IImage.StartAnimation;
  FStaticText.Caption := FStepDescriptions[FSlider.ItemIndex];
end;

procedure TSliderUpdater.Next;
begin
  UpdateSlider(1);
end;

procedure TSliderUpdater.Previous;
begin
  UpdateSlider(-1);
end;

procedure TSliderUpdater.SetSlider(aIndex: Integer);
begin
  FSlider.ItemIndex := aIndex;
  AnimateImage;
end;

procedure TSliderUpdater.UpdateSlider(aIndex: Integer);
begin
  FSlider.ItemIndex := FSlider.ItemIndex + aIndex;
  if FSlider.ItemIndex < Length(FStepDescriptions) then AnimateImage;
end;

end.
