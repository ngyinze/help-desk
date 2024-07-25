unit Browser;

interface

uses
  MediaConst, Winapi.Windows, Winapi.Messages, System.SysUtils, System.StrUtils, System.Variants, System.Classes, VCL.Edge;

type
  TBrowser = class
  private
    { Private declarations }
    FHTML: string;
    FEdgeBrowser: TEdgeBrowser;
    procedure ChkBrowserInitialized(Sender: TCustomEdgeBrowser; AResult: HRESULT);
    function CalcSecs(timeFrame: string): Integer;
  public
    { Public declarations }
    constructor Create (ABrowser: TEdgeBrowser);
    procedure LoadVideoId(vid: TVideoEntry);
    procedure Navigate();
  end;

implementation

{ Browser }

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

procedure TBrowser.Navigate;
begin
  FEdgeBrowser.NavigateToString(FHTML);
end;

end.
