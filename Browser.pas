unit Browser;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.StrUtils, System.Variants, System.Classes, VCL.Edge;

type
  TBrowser = class
    procedure ChkBrowserInitialized(Sender: TCustomEdgeBrowser; AResult: HRESULT);
    procedure LoadVideoId(vidID: string; timeframe: string);
  private
    { Private declarations }
    FHTML: string;
    FEdgeBrowser: TEdgeBrowser;
  public
    { Public declarations }
    constructor Create (ABrowser: TEdgeBrowser);
  end;

  function CalcSecs(timeFrame: string): Integer;

implementation

{ Browser }

function CalcSecs(timeframe: string): Integer;
  var min, sec: Integer;
begin
  min := 0;
  sec := 0;

  if timeframe.Contains(':') then begin
    min := SplitString(timeframe, ':')[0].ToInteger;
    sec := SplitString(timeframe, ':')[1].ToInteger;
  end
  else if timeframe.Contains('.') then begin
    min := SplitString(timeframe, '.')[0].ToInteger;
    sec := SplitString(timeframe, '.')[1].ToInteger;
  end;

  Result := (min * 60) + sec;
end;

procedure TBrowser.ChkBrowserInitialized(Sender: TCustomEdgeBrowser;
  AResult: HRESULT);
begin
  if Succeeded(AResult) then
    FEdgeBrowser.NavigateToString(FHTML);
end;

constructor TBrowser.Create(ABrowser: TEdgeBrowser);
begin
  FEdgeBrowser := ABrowser;
  FEdgeBrowser.CreateWebView;
  FEdgeBrowser.OnCreateWebViewCompleted := ChkBrowserInitialized;
end;

procedure TBrowser.LoadVideoId(vidID: string; timeframe: string);
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
    src="https://www.youtube.com/embed/$vidID$?autoplay=1&mute=1&fs=0&modestbranding=1&start=$time$"
    frameborder="0" allowfullscreen>
  </div>
  ''';

  FHTML := StringReplace(FHTML, '$vidID$', vidID, [rfReplaceAll]);
  FHTML := StringReplace(FHTML, '$time$', CalcSecs(timeframe).ToString, [rfReplaceAll]);
end;

end.
