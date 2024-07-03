unit ImageRetriever;

interface

uses
  System.SysUtils, System.Classes, System.Net.HttpClient, System.Net.HttpClientComponent,
  cxGraphics, dxGDIPlusClasses, Vcl.Graphics;

type
  TImageRetriever = class
  private
    FHttpClient: TNetHTTPClient;
  public
    constructor Create;
    destructor Destroy; override;
    procedure RetrieveImage(const URL: string; AImageCollection: TcxImageCollection; const AImageIndex: Integer);
end;


implementation

constructor TImageRetriever.Create;
begin
  inherited;
  FHttpClient := TNetHTTPClient.Create(nil);
end;

destructor TImageRetriever.Destroy;
begin
  FHttpClient.Free;
  inherited;
end;

procedure TImageRetriever.RetrieveImage(const URL: string; AImageCollection:
    TcxImageCollection; const AImageIndex: Integer);
var
  LResponse: IHTTPResponse;
  LGraphic: TdxSmartImage;
  LStream: TMemoryStream;
begin
  try
    LStream := TMemoryStream.Create;
    LResponse := FHttpClient.Get(URL, LStream);
    if LResponse.StatusCode = 200 then begin
      LStream.Position := 0;
      LGraphic := TdxSmartImage.Create;
      try
        LGraphic.LoadFromStream(LStream);
        AImageCollection.Items[AImageIndex].Picture.Assign(LGraphic);
      finally
        LGraphic.Free;
      end;
    end
    else
      raise Exception.CreateFmt('Error retrieving image: %d - %s', [LResponse.StatusCode, LResponse.StatusText])
  finally
    LStream.Free;
  end;

end;

end.
