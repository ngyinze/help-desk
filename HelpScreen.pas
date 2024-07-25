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
  Vcl.Edge, cxCheckBox, cxCustomListBox, cxListBox, Vcl.ComCtrls, cxListView, dxListView,
  cxTreeView, cxGeometry, dxFramedControl, dxPanel, dxTreeView;

type
  TForm2 = class(TForm)
    imgCollection: TcxImageCollection;
    imgCollectionItem1: TcxImageCollectionItem;
    imgCollectionItem2: TcxImageCollectionItem;
    imgCollectionItem3: TcxImageCollectionItem;
    imgCollectionItem4: TcxImageCollectionItem;
    imgSlider: TdxImageSlider;
    EdgeBrowser: TEdgeBrowser;
    dxPanel1: TdxPanel;
    btnRight: TcxButton;
    btnLeft: TcxButton;
    txtSteps: TStaticText;
    txtDesc: TStaticText;
    chkBox: TcxCheckBox;
    imgNoInternet: TcxImage;
    btnRetry: TcxButton;
    dxTreeViewControl1: TdxTreeViewControl;
    procedure btnLeftClick(Sender: TObject);
    procedure btnRightClick(Sender: TObject);
    procedure btnRetryClick(Sender: TObject);
    procedure ChkBoxClick(Sender: TObject);
    procedure dxTreeViewControl1DblClick(Sender: TObject);
  private
    FImageRetriever: TImageRetriever;
    FSliderUpdater: TSliderUpdater;
    FBadgeValue: Integer;
    FImagesLoaded: Boolean;
    FBrowser: TBrowser;
    FDescription, FImageURL: TArray<string>;
    FVideo: TArray<TVideoEntry>;
    FNodeCaption: String;
    procedure InitializeComponents;
    procedure GetRelevantMedia(Form: Integer);
    procedure RetrieveImages;
    procedure SetNodeCaption(ACaption: string);
    procedure SetBadgeValue(Value: Integer);
    procedure ShowVideo;
    procedure ShowNoInternetWarning;
    procedure HideNoInternetWarning;
    procedure UpdateUIState;
  public
    constructor Create(AOwner: TComponent; aFormIdx: Integer); overload;
    destructor Destroy; override;
    property BadgeValue: Integer read FBadgeValue write SetBadgeValue;
    property NodeCaption: String read FNodeCaption write SetNodeCaption;
  end;

var
  I : Integer;
  INode: TdxTreeViewNode;

implementation

{$R *.dfm}
constructor TForm2.Create(AOwner: TComponent; aFormIdx: Integer);
begin
  inherited Create(AOwner);
  FImagesLoaded := False;
  GetRelevantMedia(aFormIdx);
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
  case Form of   //tbc
    0: begin
      FImageURL := c_ImageURL1;
      FDescription := c_Description1;
      FVideo := c_Vid1;
    end;
    1: begin
      FImageURL := c_ImageURL3;
      FDescription := c_Description1;
      FVideo := c_Vid1;
    end;
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
    FSliderUpdater.UpdateSlider(0); //Restart the animation
  end;
end;

procedure TForm2.InitializeComponents;
var
  ICachePath: string;
begin
  FSliderUpdater := TSliderUpdater.Create(imgSlider, imgCollection, txtSteps, FDescription);
  ICachePath := TPath.Combine(TPath.GetHomePath, 'SQL', 'ImageCache');
  FImageRetriever := TImageRetriever.Create(ICachePath);
  FBrowser := TBrowser.Create(EdgeBrowser);
  EdgeBrowser.Visible := False;
end;

procedure TForm2.RetrieveImages;
var
  I: Integer;
  IAllImagesLoaded: Boolean;
begin
  IAllImagesLoaded := True;
  for I := Low(FImageURL) to High(FImageURL) do
  begin
    try
      FImageRetriever.RetrieveImage(FImageURL[I], imgCollection, I);
    except
      on E: ENoInternetConnection do
      begin
        IAllImagesLoaded := False;
        Break;
      end;
      on E: Exception do
      begin
        IAllImagesLoaded := False;
        Break;
      end;
    end;
  end;
  FImagesLoaded := IAllImagesLoaded;
end;

procedure TForm2.UpdateUIState;
var
  INodes: TdxTreeViewNodes;
  INode: TdxTreeViewNode;
begin
  if FImagesLoaded then
  begin
    HideNoInternetWarning;
    FSliderUpdater.BadgeValue := 0;     //restart the animation from frame zero
    dxTreeViewControl1.FullCollapse;

    INodes := dxTreeViewControl1.Items;
    dxTreeViewControl1.select(INodes[1], True);
    for INode in dxTreeViewControl1.Items do begin
      if FNodeCaption = INode.Caption then
        INode.Expand(true);
    end;
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
  UpdateUiState;
end;

procedure TForm2.btnLeftClick(Sender: TObject);
begin
  FSliderUpdater.Previous;
  if Assigned(Inode.Prev) then
    begin
      INode := INode.Prev;
      INode.Focused := true;
    end;
  ShowVideo;
end;

procedure TForm2.btnRightClick(Sender: TObject);
begin
  FSliderUpdater.Next;
  if Assigned(Inode.Next) then
    begin
      INode := INode.Next;
      INode.Focused := true;
    end;
  ShowVideo;
end;

procedure TForm2.dxTreeViewControl1DblClick(Sender: TObject);
var
  P: TPoint;
  N: TdxTreeViewNode;
begin
  GetCursorPos(P);
  P := dxTreeViewControl1.ScreenToClient(P);
  dxTreeViewControl1.GetNodeAtPos(P, N);   //get the node
  FSliderUpdater.BadgeValue := N.Index;
end;

procedure TForm2.SetBadgeValue(Value: Integer);
begin
  FBadgeValue := Value;
  if FImagesLoaded then
    FSliderUpdater.UpdateSlider(Value);

  I := FBadgeValue;
  showMessage(inttostr(I));
  INode := dxTreeViewControl1.Items[5].Items[I]; //the first items indicate the parent node in absolute, 0 or 5
  INode.Focused := true;
end;

procedure TForm2.SetNodeCaption(ACaption: string);
begin
  FNodeCaption := ACaption;
  updateUiState;
end;

end.
