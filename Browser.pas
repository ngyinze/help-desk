unit Browser;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Winapi.WebView2, Winapi.ActiveX,
  Vcl.Edge;

type
  TForm3 = class(TForm)
    EdgeBrowser: TEdgeBrowser;
    procedure ChkBrowserInitialized(Sender: TCustomEdgeBrowser; AResult: HRESULT);
    procedure LoadVideoId(vidID: string);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FHTML: string;
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.ChkBrowserInitialized(Sender: TCustomEdgeBrowser;
  AResult: HRESULT);
begin
  if Succeeded(AResult) then
    EdgeBrowser.NavigateToString(FHTML)
  else
  begin
    ShowMessage('Failed to start browser');
  end;
end;

procedure TForm3.FormCreate(Sender: TObject);
begin
  LoadVideoId('M7lc1UVf-VE');
  EdgeBrowser.CreateWebView;
  EdgeBrowser.OnCreateWebViewCompleted := ChkBrowserInitialized;

end;

procedure TForm3.LoadVideoId(vidID: string);
begin
  FHTML :=
  '''
  <style>
  .yt {
  position: fixed;
  display: block;
  width: 100%;
  height: 100%;
  left: 0;
  top: 0;
  margin: 0;
  }
  .yt iframe {
  width: 100%;
  height: 100%;
  border: 0;
  }
  </style>

  <div class="yt">
    <iframe id="ytplayer" type="text/html" width="560" height="315"
    src="https://www.youtube.com/embed/$vidID$?autoplay=1&fs=0&modestbranding=1"
    frameborder="0" allowfullscreen>
  </div>
  ''';

  FHTML := StringReplace(FHTML, '$vidID$', vidID, [rfReplaceAll]);
end;

end.
