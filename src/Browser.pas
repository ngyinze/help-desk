unit Browser;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.StrUtils,
  System.Variants, System.Classes, VCL.Edge;

type
  TBrowser = class
  private
    FHTML: string;
    FEdgeBrowser: TEdgeBrowser;
    procedure ChkBrowserInitialized(Sender: TCustomEdgeBrowser; AResult: HRESULT);
//    procedure LoadImage(url: String);
//    procedure LoadPDF(url: String);
  public
    constructor Create (ABrowser: TEdgeBrowser);
    procedure Load(AURL: string);
//    procedure Navigate();
  end;

implementation

procedure TBrowser.Load(AURL: string);
begin
  var URL := 'https://az.yinze.eu.org/' + AURL;
  FEdgeBrowser.Navigate(URL);
end;

procedure TBrowser.ChkBrowserInitialized(Sender: TCustomEdgeBrowser;
  AResult: HRESULT);
begin
  if Succeeded(AResult) then
    FEdgeBrowser.Navigate('about:blank');
end;

constructor TBrowser.Create(ABrowser: TEdgeBrowser);
begin
  FEdgeBrowser := ABrowser;
  FEdgeBrowser.CreateWebView;
  FEdgeBrowser.OnCreateWebViewCompleted := ChkBrowserInitialized;
end;

//procedure TBrowser.LoadImage(url: String);
//begin
//  FHTML :=
//  '''
//    <div style="display: flex; align-items: center; justify-content: center;">
//      <img style="height: 95vh; width: 100vw;" src="$url$" alt="Add Record">
//    </div>
//  ''';
//  FHTML := StringReplace(FHTML, '$url$', url, [rfReplaceAll]);
//  FEdgeBrowser.NavigateToString(FHTML);
//end;
//
//procedure TBrowser.LoadPDF(url: String);
//begin
//  FHTML := url;
//  FEdgeBrowser.Navigate(FHTML);
//end;
//
//procedure TBrowser.Navigate;
//begin
//  FEdgeBrowser.NavigateToString(FHTML);
//end;

end.
