unit HelpScreen;

interface

uses
  shellapi, Browser, MediaConst, dxImageSlider, Data.DB, dxGDIPlusClasses, cxClasses,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls,
  Vcl.Menus, Vcl.StdCtrls, cxButtons,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  cxContainer, cxEdit,
  Vcl.ExtCtrls, SliderUpdater, ImageRetriever, System.IOUtils, cxImage,
  cxTextEdit, cxHyperLinkEdit,
  Vcl.Edge, cxCheckBox, Vcl.ComCtrls,
  dxFramedControl, dxPanel, dxTreeView, dxCustomTree, cxLookAndFeels,
  cxLookAndFeelPainters, cxGeometry, Winapi.WebView2, Winapi.ActiveX;

type
  TForm2 = class(TForm)
    imgCollection: TcxImageCollection;
    imgSlider: TdxImageSlider;
    EdgeBrowser: TEdgeBrowser;
    dxPanel1: TdxPanel;
    btnRight: TcxButton;
    btnLeft: TcxButton;
    txtSteps: TStaticText;
    chkBox: TcxCheckBox;
    imgNoInternet: TcxImage;
    btnRetry: TcxButton;
    treeView: TdxTreeViewControl;
    hyperLink: TcxHyperLinkEdit;
    procedure btnLeftClick(Sender: TObject);
    procedure btnRightClick(Sender: TObject);
    procedure btnRetryClick(Sender: TObject);
    procedure chkBoxAutoPlayClick(Sender: TObject);
    procedure chkBoxClick(Sender: TObject);
    procedure hyperLinkClick(Sender: TObject);
    procedure treeViewClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ShellOpen(const Url: string; const Params: string = '');
  private
    FImageRetriever: TImageRetriever;
    FSliderUpdater: TSliderUpdater;
    FBadgeValue: Integer;
    FImagesLoaded: Boolean;
    FBrowser: TBrowser;
    FDescription, FImageURL, FLink: TArray<string>;
    FVideo: TArray<TVideoEntry>;
    procedure InitializeComponents;
    procedure FindParentNode;
    procedure GetRelevantMedia(Form: Integer);
    procedure RetrieveImages;
    procedure SetBadgeValue(Value: Integer);
    procedure ShowVideo;
    procedure ShowNoInternetWarning;
    procedure HideNoInternetWarning;
    procedure UpdateUIState;
  public
    constructor Create(AOwner: TObject; aFormIdx: Integer); overload;
    destructor Destroy; override;
    property BadgeValue: Integer read FBadgeValue write SetBadgeValue;
  end;

var
  FNode: TdxTreeViewNode;
  FParentNode: TArray<TdxTreeViewNode>;
  FIndex: Integer;

implementation

{$R *.dfm}
constructor TForm2.Create(AOwner: TObject; aFormIdx: Integer);
begin
  FImagesLoaded := False;
  FindParentNode;
  GetRelevantMedia(aFormIdx);
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
  FIndex := Form;
  case FIndex of   //TODO
    0:
    begin
      FImageURL := c_ImageURL1;
      FDescription := c_Description1;
      FVideo := c_Vid1;
      FLink := c_Link1;
    end;
    1:
    begin
      FImageURL := c_ImageURL2;
      FDescription := c_Description2;
      FVideo := c_Vid2;
      FLink := c_Link2;
    end;
    2:
    begin
      FImageURL := c_ImageURL3;
      FDescription := c_Description3;
      FVideo := nil;
    end;
  end;
  InitializeComponents;
  RetrieveImages;
end;


procedure TForm2.chkBoxClick(Sender: TObject);
begin
  if ChkBox.Checked then
  begin
    EdgeBrowser.Visible := True;
    ShowVideo;
  end
  else
  begin
    EdgeBrowser.Visible := False;
    EdgeBrowser.Refresh;
    FSliderUpdater.UpdateSlider(0);         //RESTART THE ANIMATION
  end;
end;

procedure TForm2.InitializeComponents;       //TODO: OPTIMISE THIS PART
var
  ICachePath: String;
begin
  if Assigned(FSliderUpdater) then          //Free up the object when changing node
  begin
    FSliderUpdater.Free;
    imgCollection.Items.Clear;
  end
  else
  begin
    ICachePath := TPath.Combine(TPath.GetHomePath, 'SQL', 'ImageCache');
    FImageRetriever := TImageRetriever.Create(ICachePath);
    FBrowser := TBrowser.Create(EdgeBrowser);
    EdgeBrowser.Visible := False;
  end;

  if not Assigned(FVideo) then chkBox.Visible := False else chkBox.Visible := True;

  //loop to add items needed to the collection
  for var I := Low(FImageURL) to High(FImageURL) do imgCollection.Items.Add;
  FSliderUpdater := TSliderUpdater.Create(imgSlider, imgCollection, txtSteps, FDescription, Flink);
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
begin
  if FImagesLoaded then
  begin
    HideNoInternetWarning;
    FSliderUpdater.BadgeValue := 0;     //Restart the animation from frame zero
    treeView.FullCollapse;    //Optional
  end
  else
    ShowNoInternetWarning;
end;

procedure TForm2.ShellOpen(const Url, Params: string);
begin
  ShellAPI.ShellExecute(0, 'Open', PChar(Url), PChar(Params), nil, SW_SHOWNORMAL);
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
  if ChkBox.Checked then
  begin
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
  if Assigned(Fnode.Prev) then
  begin
    FNode := FNode.Prev;
    FNode.Focused := True;
  end;
  ShowVideo;
end;

procedure TForm2.btnRightClick(Sender: TObject);
begin
  FSliderUpdater.Next;
  if Assigned(Fnode.Next) then
  begin
    FNode := FNode.Next;
    FNode.Focused := True;
  end;
  ShowVideo;
end;

procedure TForm2.chkBoxAutoPlayClick(Sender: TObject);
begin
  if ChkBox.Checked then
  begin
  end
  else
  begin
    EdgeBrowser.Visible := False;
    EdgeBrowser.Refresh;
    FSliderUpdater.UpdateSlider(0);         //RESTART THE ANIMATION
  end;
end;

procedure TForm2.hyperLinkClick(Sender: TObject);
begin
  ShellOpen(FSliderUpdater.GetLink);
end;

procedure TForm2.treeViewClick(Sender: TObject);
var
  P: TPoint;
  N: TdxTreeViewNode;
  I: Integer;
begin
  I := 0;
  GetCursorPos(P);
  P := treeView.ScreenToClient(P);
  if treeView.GetNodeAtPos(P, N) then   //Get node and checks if the point is a node
  begin
    for var node in FParentNode do
    begin
      if N.HasAsParent(Node) then       //Checks node clicked is child node
      begin
        GetRelevantMedia(I);
        FIndex := I;
        FSliderUpdater.BadgeValue := N.Index;
        FNode := FParentNode[FIndex].Items[N.Index];
        FNode.Focused := True;
        ShowVideo;
        Break;
      end;
      Inc(I);
    end;
  end;

end;

procedure TForm2.FindParentNode;
var
  Anode: TdxTreeViewNode;
  I: Integer;
begin
  I := 0;
  SetLength(FParentNode, 10);     //Temp set to 10, adjust accordingly
  for ANode in treeView.Items do
  begin
    if Anode.Count > 0 then
    begin
      FParentNode[I] := Anode;
      Inc(I);
    end;
  end;
end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TForm2.SetBadgeValue(Value: Integer);      //TBO
begin
  FBadgeValue := Value;
  updateUiState;
  if FImagesLoaded then FSliderUpdater.UpdateSlider(FBadgeValue);
  FNode := FParentNode[FIndex].Items[Value];
  FNode.Focused := True;
end;

end.
