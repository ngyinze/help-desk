unit Adorner;

interface

uses
  System.Net.HttpClient, System.JSON, System.Classes,  Vcl.Controls,
  dxUIAdorners;

type
  TAdornerConfiguration = class
  private
    FTopicObj: TJSONObject;
    FArray: TJSONArray;
  public
    constructor Create;
    destructor Destroy; override;
    procedure FetchAdornerConfig(const URL: string);
    function GetJsonArray(AKey: string): TJSONArray;
    property Topic: TJSONObject read FTopicObj write FTopicObj;
    property Config: TJSONArray read FArray write FArray;
  end;

  TAdornerManager = class(TAdornerConfiguration)
  private
    FAdornerMng: TdxUIAdornerManager;
    FConfiguration: TAdornerConfiguration; //Has-a relationship
  public
    constructor Create(AAdornerMng: TdxUIAdornerManager; AConfig: TAdornerConfiguration);
    destructor Destroy; override;

    property AdornerManager: TdxUIAdornerManager read FAdornerMng write FAdornerMng;
    procedure Show;
    procedure Hide;
  end;

implementation

constructor TAdornerConfiguration.Create;
begin
  FArray := nil;
  FTopicObj := nil;
end;

destructor TAdornerConfiguration.Destroy;
begin
  FArray.Free;
  inherited;
end;

procedure TAdornerConfiguration.FetchAdornerConfig(const URL: string);
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
      FArray := TJSONObject.ParseJSONValue(JSONData) as TJSONArray;
    end
    else
      FArray := nil;
  finally
    HttpClient.Free;
  end;
end;

function TAdornerConfiguration.GetJsonArray(AKey: string): TJSONArray;
begin
  Result := FTopicObj.GetValue<TJSONArray>(AKey);
end;

{ TAdornerManager }

constructor TAdornerManager.Create(AAdornerMng: TdxUIAdornerManager; AConfig: TAdornerConfiguration);
begin
  FAdornerMng := AAdornerMng;
  FConfiguration := AConfig;
end;

destructor TAdornerManager.Destroy;
begin
  inherited;
end;

procedure TAdornerManager.Hide;
begin
  if Assigned(FAdornerMng) then
    FAdornerMng.Badges.Active := False;
end;

procedure TAdornerManager.Show;
begin
  if Assigned(FAdornerMng) then
    FAdornerMng.Badges.Active := True;
end;

end.
