unit SliderUpdater;

interface

uses
  dxImageSlider, cxGraphics, Vcl.StdCtrls, dxGDIPlusClasses,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes;

type
  TSliderUpdater = class
    private
      FSlider: TdxImageSlider;
      FImageCollection: TcxImageCollection;
      FStaticText: TStaticText;
      FStepDescriptions: TArray<String>;
      procedure UpdateSlider(aIndex: Integer);
    public
      constructor Create(ASlider: TdxImageSlider; AImageCollection: TcxImageCollection; AStaticText: TStaticText);
      procedure SetBadgeValue(Value: Integer);
      procedure Next;
      procedure Previous;
    end;

implementation

constructor TSliderUpdater.Create(ASlider: TdxImageSlider; AImageCollection: TcxImageCollection; AStaticText: TStaticText);
begin
  FSlider := ASlider;
  FImageCollection := AImageCollection;
  FStaticText := AStaticText;
  FStepDescriptions := [
    'Step 1: Select Customer',
    'Step 2: Enter relevant details',
    'Step 3: Write description for this invoice',
    'Step 4: Click to add a new item record'
  ];
end;

procedure TSliderUpdater.UpdateSlider(aIndex: Integer);
begin
  FSlider.ItemIndex := FSlider.ItemIndex + aIndex;
  TdxSmartImage(FImageCollection.Items[FSlider.ItemIndex].Picture.Graphic).ActiveFrame := 0;
  TdxSmartImage(FImageCollection.Items[FSlider.ItemIndex].Picture.Graphic).StartAnimation;
  FStaticText.Caption := FStepDescriptions[FSlider.ItemIndex];
end;

procedure TSliderUpdater.SetBadgeValue(Value: Integer);
begin
  UpdateSlider(Value);
end;

procedure TSliderUpdater.Next;
begin
  UpdateSlider(1);
end;

procedure TSliderUpdater.Previous;
begin
  UpdateSlider(-1);
end;


end.
