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
    procedure btnRetryClick(Sender: TObject);
    procedure hyperLinkClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ShellOpen(const Url: string; const Params: string = '');
  private
    FImageRetriever: TImageRetriever;
    FSliderUpdater: TSliderUpdater;
    FBadgeValue: Integer;
    FImagesLoaded: Boolean;
    FBrowser: TBrowser;
    FDescription, FImageURL, FLink: TArray<string>;
    procedure InitializeComponents;
    procedure SetBadgeValue(Value: Integer);
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
end;

destructor TForm2.Destroy;
begin
  FSliderUpdater.Free;
  FImageRetriever.Free;
  FBrowser.Free;
  inherited Destroy;
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
    ICachePath := TPath.Combine(TPath.GetHomePath, 'SQL', 'ImageCache');
    FImageRetriever := TImageRetriever.Create(ICachePath);
    FBrowser := TBrowser.Create(EdgeBrowser);
    EdgeBrowser.Visible := False;
  end;
end;

procedure TForm2.UpdateUIState;
begin
  if FImagesLoaded then
  begin
    FSliderUpdater.BadgeValue := 0;     //Restart the animation from frame zero
  end
end;

procedure TForm2.ShellOpen(const Url, Params: string);
begin
  ShellAPI.ShellExecute(0, 'Open', PChar(Url), PChar(Params), nil, SW_SHOWNORMAL);
end;

procedure TForm2.btnRetryClick(Sender: TObject);
begin
  UpdateUiState;
end;

procedure TForm2.hyperLinkClick(Sender: TObject);
begin
  ShellOpen(FSliderUpdater.GetLink);
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
