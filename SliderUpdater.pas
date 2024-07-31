unit SliderUpdater;

interface

uses
  dxImageSlider, cxGraphics, cxListView, Vcl.StdCtrls, dxGDIPlusClasses, dxCore, dxListView,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes;

type
  TSliderUpdater = class
    private
      FSlider: TdxImageSlider;
      FImageCollection: TcxImageCollection;
      FListView: TcxListView;
      FStaticText: TStaticText;
      FStepDescriptions: TArray<String>;
      procedure SetSlider(aIndex: Integer);
      function GetSlider(): Integer;
      procedure AnimateImage;
    public
      constructor Create(ASlider: TdxImageSlider; AImageCollection: TcxImageCollection; AStaticText: TStaticText; AStepDescription: TArray<string>);
      property BadgeValue: Integer read GetSlider write SetSlider;
      procedure Next;
      procedure Previous;
      procedure UpdateSlider(aIndex: Integer);
    end;

implementation

constructor TSliderUpdater.Create(ASlider: TdxImageSlider;
  AImageCollection: TcxImageCollection; AStaticText: TStaticText;
    AStepDescription: TArray<string>);
begin
  FSlider := ASlider;
  FImageCollection := AImageCollection;
  FStaticText := AStaticText;
  FStepDescriptions := AStepDescription;
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
