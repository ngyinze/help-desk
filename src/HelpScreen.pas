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
    EdgeBrowser: TEdgeBrowser;
    imgNoInternet: TcxImage;
    btnRetry: TcxButton;
    procedure btnLeftClick(Sender: TObject);
    procedure btnRightClick(Sender: TObject);
    procedure btnRetryClick(Sender: TObject);
    procedure chkBoxAutoPlayClick(Sender: TObject);
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
    procedure GetRelevantMedia(Form: Integer);
    procedure RetrieveImages;
    procedure SetBadgeValue(Value: Integer);
    procedure ShowNoInternetWarning;
    procedure HideNoInternetWarning;
    procedure UpdateUIState;
  public
    constructor Create(AOwner: TComponent; aFormIdx: Integer); overload;
    destructor Destroy; override;
    property BadgeValue: Integer read FBadgeValue write SetBadgeValue;
  end;

var
  FNode: TdxTreeViewNode;
  FParentNode: TArray<TdxTreeViewNode>;
  FIndex: Integer;

implementation

{$R *.dfm}
constructor TForm2.Create(AOwner: TComponent; aFormIdx: Integer);
begin
  inherited Create(AOwner);
end;

destructor TForm2.Destroy;
begin
  FSliderUpdater.Free;
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
    end;
    1:
    begin
      FImageURL := c_ImageURL2;
    end;
    2:
    begin
      FImageURL := c_ImageURL3;
    end;
  end;
  InitializeComponents;
  RetrieveImages;
end;


procedure TForm2.InitializeComponents;       //TODO: OPTIMISE THIS PART
var
  ICachePath: String;
begin
  if Assigned(FSliderUpdater) then          //Free up the object when changing node
  begin
    FSliderUpdater.Free;
  end
  else
  begin
    FBrowser := TBrowser.Create(EdgeBrowser);
    FBrowser.loadImage('https://github.com/ngyinze/help-desk/raw/main/img/add%20record.gif');
    EdgeBrowser.Visible := True;
  end;
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
end;

procedure TForm2.HideNoInternetWarning;
begin
  imgNoInternet.Visible := False;
  btnRetry.Visible := False;
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
end;

procedure TForm2.btnRightClick(Sender: TObject);
begin
  FSliderUpdater.Next;
  if Assigned(Fnode.Next) then
  begin
    FNode := FNode.Next;
    FNode.Focused := True;
  end;
end;

procedure TForm2.chkBoxAutoPlayClick(Sender: TObject);
begin
  begin
    EdgeBrowser.Visible := False;
    EdgeBrowser.Refresh;
    FSliderUpdater.UpdateSlider(0);         //RESTART THE ANIMATION
  end;
end;

procedure TForm2.treeViewClick(Sender: TObject);
var
  P: TPoint;
  N: TdxTreeViewNode;
  I: Integer;
begin
  I := 0;
  GetCursorPos(P);
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
        Break;
      end;
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


