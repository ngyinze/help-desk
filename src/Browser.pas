unit Browser;

interface

uses
  MediaConst, Winapi.Windows, Winapi.Messages, System.SysUtils, System.StrUtils, System.Variants, System.Classes, VCL.Edge;

type
  TBrowser = class
  private
    FHTML: string;
    FEdgeBrowser: TEdgeBrowser;
    procedure ChkBrowserInitialized(Sender: TCustomEdgeBrowser; AResult: HRESULT);
    procedure LoadImage(url: String);
    procedure LoadPDF(url: String);
  public
    constructor Create (ABrowser: TEdgeBrowser);
    procedure View(const URL: string);
    procedure Navigate();
  end;

implementation

procedure TBrowser.View(const URL: string);
var
  FileType: string;
begin
  FileType := '';

  if (Pos('.gif', URL) > 0) or (Pos('.png', URL) > 0) or (Pos('.webp', URL) > 0) then
    LoadImage(URl)
  else if Pos('.pdf', URL) > 0 then
    LoadPdf(URL)
  else if Pos('http', URL) > 0 then
    FHTML := URL;

end;

procedure TBrowser.ChkBrowserInitialized(Sender: TCustomEdgeBrowser;
  AResult: HRESULT);
begin
  if Succeeded(AResult) then
    Self.Navigate;
end;

constructor TBrowser.Create(ABrowser: TEdgeBrowser);
begin
  FEdgeBrowser := ABrowser;
  FEdgeBrowser.CreateWebView;
  FEdgeBrowser.OnCreateWebViewCompleted := ChkBrowserInitialized;
end;

procedure TBrowser.LoadImage(url: String);
begin
  FHTML :=
  '''
    <div style="display: flex; align-items: center; justify-content: center;">
      <img style="height: 95vh; width: 100vw;" src="$url$" alt="Add Record">
    </div>
  ''';
  FHTML := StringReplace(FHTML, '$url$', url, [rfReplaceAll]);
end;

procedure TBrowser.LoadPDF(url: String);
begin
  FHTML :=
  '''
    <div style="display: flex; align-items: center; justify-content: center;">
      <iframe
          src="https://docs.google.com/viewer?url=$url$&embedded=true"
          width="100%"
          height="600px">
          <p>Your browser does not support iframes.</p>
      </iframe>
    </div>
  ''';
  FHTML := StringReplace(FHTML, '$url$', url, [rfReplaceAll]);
end;

procedure TBrowser.Navigate;
begin
  FEdgeBrowser.NavigateToString(FHTML);
end;

end.
