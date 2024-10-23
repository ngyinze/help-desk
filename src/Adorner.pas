unit Adorner;

interface

uses
  System.Net.HttpClient, System.JSON;

type
  TAdorner = class
  public
    class function FetchAdornerConfig(const URL: string): TJSONArray;
  end;

implementation

class function TAdorner.FetchAdornerConfig(const URL: string): TJSONArray;
var
  HttpClient: THttpClient;
  Response: IHTTPResponse;
  JSONData: string;
begin
  HttpClient := THttpClient.Create;
  try
    Response := HttpClient.Get(URL);
    if Response.StatusCode = 200 then
    begin
      JSONData := Response.ContentAsString();
      Result := TJSONObject.ParseJSONValue(JSONData) as TJSONArray;
    end
    else
      Result := nil;
  finally
    HttpClient.Free;
  end;
end;


end.
