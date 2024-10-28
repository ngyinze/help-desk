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
    procedure LoadVideoId(vid: TVideoEntry);
    procedure LoadImage(url: String);
    procedure LoadPDF(url: String);
    function CalcSecs(timeFrame: string): Integer;
  public
    constructor Create (ABrowser: TEdgeBrowser);
    procedure View(const URL: string);
    procedure Navigate();
  end;

implementation

function TBrowser.CalcSecs(timeframe: string): Integer;
  var M, S: Integer;
begin
  M := 0;
  S := 0;

  if timeframe.Contains(':') then begin
    M := SplitString(timeframe, ':')[0].ToInteger;
    S := SplitString(timeframe, ':')[1].ToInteger;
  end
  else if timeframe.Contains('.') then begin
    M := SplitString(timeframe, '.')[0].ToInteger;
    S := SplitString(timeframe, '.')[1].ToInteger;
  end;

  Result := (M * 60) + S;
end;

procedure TBrowser.View(const URL: string);
var
  FileType: string;
begin
  FileType := '';

  if (Pos('.gif', URL) > 0) or (Pos('.png', URL) > 0) or (Pos('.webp', URL) > 0) then
    LoadImage(URl)
  else if Pos('.pdf', URL) > 0 then
    LoadPdf(URL)
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

procedure TBrowser.LoadVideoId(vid: TVideoEntry);
var
  vidID, timeFrame: string;
begin
  vidID := vid.ID;
  timeFrame := vid.Timestamp;
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
    <iframe id="ytplayer" type="text/html" width="1280" height="720"
    src="https://www.youtube.com/embed/$vidID$?autoplay=0&fs=0&modestbranding=1&start=$time$"
    frameborder="0" allowfullscreen>
  </div>
  ''';
  FHTML := StringReplace(FHTML, '$vidID$', vidID, [rfReplaceAll]);
  FHTML := StringReplace(FHTML, '$time$', CalcSecs(timeFrame).ToString, [rfReplaceAll]);
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
