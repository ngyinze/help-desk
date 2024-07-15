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
      procedure UpdateSlider(aIndex: Integer);
      procedure AnimateImage;
    public
      constructor Create(ASlider: TdxImageSlider; AImageCollection: TcxImageCollection;
                      AListView: TcxListView; AStaticText: TStaticText);
      property BadgeValue: Integer write SetSlider;
      procedure Next;
      procedure Previous;
    end;

implementation

constructor TSliderUpdater.Create(ASlider: TdxImageSlider; AImageCollection: TcxImageCollection;
              AListView: TcxListView; AStaticText: TStaticText);
begin
  FSlider := ASlider;
  FImageCollection := AImageCollection;
  FListView := AListView;
  FStaticText := AStaticText;
  FStepDescriptions := [
    'Step 1: Select Customer',
    'Step 2: Enter relevant details',
    'Step 3: Write description for this invoice',
    'Step 4: Click to add a new item record'
  ];
end;

procedure TSliderUpdater.AnimateImage;
begin
  TdxSmartImage(FImageCollection.Items[FSlider.ItemIndex].Picture.Graphic).AnimationLoop := bFalse;
  TdxSmartImage(FImageCollection.Items[FSlider.ItemIndex].Picture.Graphic).ActiveFrame := 0;
  TdxSmartImage(FImageCollection.Items[FSlider.ItemIndex].Picture.Graphic).StartAnimation;
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
  FListView.Selected := FlistView.Items[FSlider.ItemIndex];
  AnimateImage;
end;
end.
