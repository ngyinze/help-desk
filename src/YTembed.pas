unit YTembed;

interface

uses
  MediaConst, Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Winapi.WebView2, Winapi.ActiveX,
  Vcl.Edge, Browser;

type
  TForm3 = class(TForm)
  EdgeBrowser: TEdgeBrowser;
  procedure FormClose(Sender: TObject; var Action: TCloseAction);
  procedure FormDestroy(Sender: TObject);
  private
    FBrowser: TBrowser;
  public
    constructor Create(AOwner: TComponent; AUrl: string); reintroduce;
  end;

implementation

{$R *.dfm}

constructor TForm3.Create(AOwner: TComponent; AUrl: string);
begin
  inherited Create(AOwner);
  FBrowser := TBrowser.Create(EdgeBrowser);
  FBrowser.View(AUrl);
  FBrowser.Navigate;
end;

procedure TForm3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FBrowser.Free;
  inherited Destroy;
end;

procedure TForm3.FormDestroy(Sender: TObject);
begin
  FBrowser.Free;
  inherited Destroy
end;

end.
