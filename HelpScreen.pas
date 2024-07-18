unit HelpScreen;

interface

uses
  cxLookAndFeelPainters, Browser, YTembed, MediaConst, dxImageSlider, Data.DB, dxGDIPlusClasses, cxClasses,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  Vcl.Menus, Vcl.StdCtrls, cxButtons,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  System.ImageList, Vcl.ImgList, cxImageList, cxContainer, cxEdit, cxLabel,
  Vcl.ExtCtrls, SliderUpdater, ImageRetriever, System.IOUtils, cxImage,
  cxTextEdit, cxHyperLinkEdit, cxDBLabel, Winapi.WebView2, Winapi.ActiveX,
  Vcl.Edge, cxCheckBox, cxCustomListBox, cxListBox, Vcl.ComCtrls, cxListView, dxListView;

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
    EdgeBrowser: TEdgeBrowser;
    ChkBox: TcxCheckBox;
    lsView: TcxListView;
    procedure btnLeftClick(Sender: TObject);
    procedure btnRightClick(Sender: TObject);
    procedure btnRetryClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure ChkBoxClick(Sender: TObject);
    procedure lsViewSelectItem(Sender: TObject; Item: TListItem; Selected: Boolean);
  private
    FImageRetriever: TImageRetriever;
    FSliderUpdater: TSliderUpdater;
    FBadgeValue: Integer;
    FImagesLoaded: Boolean;
    FBrowser: TBrowser;
    FDescription, FImageURL: TArray<string>;
    FVideo: TArray<TVideoEntry>;
    procedure InitializeComponents;
    procedure GetRelevantMedia(Form: Integer);
    procedure RetrieveImages;
    procedure SetBadgeValue(Value: Integer);
    procedure ShowVideo;
    procedure ShowNoInternetWarning;
    procedure HideNoInternetWarning;
    procedure UpdateUIState;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    property BadgeValue: Integer read FBadgeValue write SetBadgeValue;
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

constructor TForm2.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FImagesLoaded := False;
  GetRelevantMedia(0);
  InitializeComponents;
  RetrieveImages;
end;

destructor TForm2.Destroy;
begin
  FSliderUpdater.Free;
  FImageRetriever.Free;
  FBrowser.Free;
  inherited Destroy;
end;

procedure TForm2.GetRelevantMedia(Form: Integer);
begin
  case Form of
    0: begin
      FImageURL := c_ImageURL1;
      FDescription := c_Description1;
      FVideo := c_Vid1;
    end;
  end;
end;

procedure TForm2.cxButton1Click(Sender: TObject);
begin
  Form3 := TForm3.Create(Application);
  try
    Form3.ShowModal;
  finally
    Form3.Free;
  end;
end;

procedure TForm2.ChkBoxClick(Sender: TObject);
begin
  if ChkBox.Checked then begin
    EdgeBrowser.Visible := True;
    ShowVideo;
  end
  else begin
    EdgeBrowser.Visible := False;
    EdgeBrowser.Refresh;
    FSliderUpdater.UpdateSlider(0); // Restart the animation
  end;
end;

procedure TForm2.InitializeComponents;
var
  CachePath: string;
begin
  FSliderUpdater := TSliderUpdater.Create(imgSlider, imgCollection, lsView, txtSteps, FDescription);
  CachePath := TPath.Combine(TPath.GetHomePath, 'SQL', 'ImageCache');
  FImageRetriever := TImageRetriever.Create(CachePath);
  FBrowser := TBrowser.Create(EdgeBrowser);
  EdgeBrowser.Visible := False;
end;

procedure TForm2.RetrieveImages;
var
  I: Integer;
  AllImagesLoaded: Boolean;
begin
  AllImagesLoaded := True;
  for I := Low(FImageURL) to High(FImageURL) do
  begin
    try
      FImageRetriever.RetrieveImage(FImageURL[I], imgCollection, I);
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
    FSliderUpdater.BadgeValue := 0;
    for var I := 1 to length(FImageUrl) do  //Initialize the list view based on the number of badges
      lsView.AddItem(I.ToString, nil);
  end
  else
  begin
    ShowNoInternetWarning;
  end;
end;

procedure TForm2.ShowNoInternetWarning;
begin
  imgNoInternet.Visible := True;
  btnRetry.Visible := True;
  imgSlider.Visible := False;
  btnLeft.Enabled := False;
  btnRight.Enabled := False;
  txtSteps.Caption := 'No internet connection. Please connect and retry.';
end;

procedure TForm2.ShowVideo;
begin
  if ChkBox.Checked then begin
//    case FSliderUpdater.BadgeValue of     //change to loop..if for general badgevalue
//      0: FBrowser.LoadVideoId(c_Vid1_0);
//      1: FBrowser.LoadVideoId(c_Vid1_1);
//      2: FBrowser.LoadVideoId(c_Vid1_2);
//      3: FBrowser.LoadVideoId(c_Vid1_3);
//    end;
    FBrowser.LoadVideoId(FVideo[FSliderUpdater.BadgeValue]);

    FBrowser.Navigate;
    end;
end;

procedure TForm2.HideNoInternetWarning;
begin
  imgNoInternet.Visible := False;
  btnRetry.Visible := False;
  imgSlider.Visible := True;
  btnLeft.Enabled := True;
  btnRight.Enabled := True;
end;

procedure TForm2.btnRetryClick(Sender: TObject);
begin
  RetrieveImages;
end;

procedure TForm2.btnLeftClick(Sender: TObject);
begin
  FSliderUpdater.Previous;
  ShowVideo;
end;

procedure TForm2.btnRightClick(Sender: TObject);
begin
  FSliderUpdater.Next;
  ShowVideo;
end;

procedure TForm2.lsViewSelectItem(Sender: TObject; Item: TListItem;
    Selected: Boolean);
begin
  if Selected then begin
    FSliderUpdater.BadgeValue := Item.Caption.ToInteger - 1;
    ShowVideo;
  end;
end;

procedure TForm2.SetBadgeValue(Value: Integer);
begin
  FBadgeValue := Value;
  if FImagesLoaded then
    FSliderUpdater.UpdateSlider(Value);
end;

end.
