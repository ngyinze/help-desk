unit ImageRetriever;

interface

uses
  System.SysUtils, System.Classes, System.Net.HttpClient, System.Net.HttpClientComponent,
  cxGraphics, dxGDIPlusClasses, Vcl.Graphics, System.IOUtils, Winapi.WinInet;
type
  ENoInternetConnection = class(Exception);
  TImageRetriever = class
  private
    FHttpClient: TNetHTTPClient;
    FCachePath: string;
    function GetCacheFileName(const URL: string): string;
    function IsImageCached(const URL: string): Boolean;
    procedure SaveImageToCache(const URL: string; Stream: TStream);
    procedure LoadImageFromCache(const URL: string; Stream: TStream);
    function IsInternetAvailable: Boolean;
  public
    constructor Create(const CachePath: string);
    destructor Destroy; override;
    procedure RetrieveImage(const URL: string; AImageCollection: TcxImageCollection; const AImageIndex: Integer);
end;


implementation

constructor TImageRetriever.Create(const CachePath: string);
begin
  inherited Create;
  FHttpClient := TNetHTTPClient.Create(nil);
  FCachePath := CachePath;
  ForceDirectories(FCachePath);
end;

destructor TImageRetriever.Destroy;
begin
  FHttpClient.Free;
  inherited;
end;

function TImageRetriever.GetCacheFileName(const URL: string): string;
var
  IFileName: string;
begin
  IFileName := TPath.GetFileNameWithoutExtension(URl) + '.gif';
  Result := TPath.Combine(FCachePath, IFileName);
end;

function TImageRetriever.IsImageCached(const URL: string): Boolean;
begin
  Result := FileExists(GetCacheFileName(URL));
end;

function TImageRetriever.IsInternetAvailable: Boolean;
begin
  Result := InternetCheckConnection('http://www.google.com', 1, 0);
end;

procedure TImageRetriever.LoadImageFromCache(const URL: string;
  Stream: TStream);
var
  IFileStream: TFileStream;
begin
  IFileStream := TFileStream.Create(GetCacheFileName(URL), fmOpenRead);
  try
    Stream.CopyFrom(IFileStream, 0);
  finally
    IFileStream.Free;
  end;
end;

procedure TImageRetriever.RetrieveImage(const URL: string; AImageCollection:
    TcxImageCollection; const AImageIndex: Integer);
var
  LResponse: IHTTPResponse;
  LGraphic: TdxSmartImage;
  LStream: TMemoryStream;
begin
    LStream := TMemoryStream.Create;
    try
      if IsImageCached(URL) then
        LoadImageFromCache(URL, LStream)
      else if IsInternetAvailable then begin
        LResponse := FHttpClient.Get(URL, LStream);
        if LResponse.StatusCode = 200 then SaveImageToCache(URL, LStream)
        else raise Exception.CreateFmt('Error retrieving image: %d - %s', [LResponse.StatusCode, LResponse.StatusText]);
      end
      else raise ENoInternetConnection.Create('No internet connection available');

      LStream.Position := 0;
      LGraphic := TdxSmartImage.Create;
      try
        LGraphic.LoadFromStream(LStream);
        AImageCollection.Items[AImageIndex].Picture.Assign(LGraphic);
      finally
        LGraphic.Free;
      end;
  finally
    LStream.Free;
  end;
end;

procedure TImageRetriever.SaveImageToCache(const URL: string; Stream: TStream);
var
  IFileStream: TFileStream;
begin
  IFileStream := TFileStream.Create(GetCacheFileName(URL), fmCreate);
  try
    Stream.Position := 0;
    IFileStream.CopyFrom(Stream, Stream.Size);
  finally
    IFileStream.Free;
  end;
end;

end.
