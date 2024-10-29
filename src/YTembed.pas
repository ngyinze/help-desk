unit YTembed;

interface

uses
  MediaConst, Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Winapi.WebView2, Winapi.ActiveX,
  Vcl.Edge, Browser;

type
  TForm3 = class(TForm)
  EdgeBrowser: TEdgeBrowser;
  procedure FormDestroy(Sender: TObject);
  private
    FBrowser: TBrowser;
  public
    constructor Create(AOwner: TComponent; AUrl, ATitle: string); reintroduce;
  end;

implementation

{$R *.dfm}

constructor TForm3.Create(AOwner: TComponent; AUrl, ATitle: string);
begin
  inherited Create(AOwner);
  Self.Caption := ATitle;
  FBrowser := TBrowser.Create(EdgeBrowser);
  FBrowser.Load(AUrl);
end;

procedure TForm3.FormDestroy(Sender: TObject);
begin
  FBrowser.Free;
end;

end.
