unit Browser;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.StrUtils,
  System.Variants, System.IOUtils, System.Classes, VCL.Edge,
  System.Net.HttpClient;

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
    procedure CheckAndDownloadFile(const AURL, AFilePath: string);
//    procedure Navigate();
  end;

implementation

procedure TBrowser.Load(AURL: string);
begin
  var lFilepath :=  TPath.Combine(TPath.GetTempPath(), AURL);
  CheckAndDownloadFile(AURL, lFilepath);
  FEdgeBrowser.Navigate(lFilepath);
end;

procedure TBrowser.CheckAndDownloadFile(const AURL, AFilePath: string);
var
  HttpClient: THttpClient;
  FileStream: TFileStream;
const
  SourceLink: String = 'https://az.yinze.eu.org/';
begin
  if TFile.Exists(aFilePath) then
  begin
    Exit;
  end;

  // File doesn't exist, download it
  HttpClient := THttpClient.Create;
  try
    FileStream := TFileStream.Create(aFilePath, fmCreate);
    try
      HttpClient.Get(SourceLink + AURL, FileStream);
    finally
      FileStream.Free;
    end;
  finally
    HttpClient.Free;
  end;
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
