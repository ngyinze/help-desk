unit YTembed;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Winapi.WebView2, Winapi.ActiveX,
  Vcl.Edge, Browser;

type
  TForm3 = class(TForm)
    EdgeBrowser: TEdgeBrowser;
  private
    { Private declarations }
    FBrowser: TBrowser;    //object of TBrowser
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  end;

implementation

{$R *.dfm}


constructor TForm3.Create(AOwner: TComponent);
begin
  inherited;
  FBrowser := TBrowser.Create(EdgeBrowser);
  FBrowser.LoadVideoId('M7lc1UVf-VE');
end;

destructor TForm3.Destroy;
begin
  FBrowser.Free;
  inherited Destroy;
end;

end.
