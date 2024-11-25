unit Adorner;

interface

uses
  System.Net.HttpClient, System.JSON, System.Classes,
  System.SysUtils, Vcl.Controls,
  dxUIAdorners, AdornerJSON;

type
  TAdornerConfiguration = class
  private
    FTopicObj: TJSONObject;
    FArray: TFormArray;
  public
    constructor Create;
    destructor Destroy; override;
    function BuildJsonArray(AFormName, ATopic: string): TJsonArray;
    procedure FetchAdornerConfig;
    function GetJsonArray(AKey: string): TJSONArray;
    property Topic: TJSONObject read FTopicObj write FTopicObj;
    property Config: TFormArray read FArray write FArray;
  end;

  TAdornerManager = class(TAdornerConfiguration)
  private
    FAdornerMng: TdxUIAdornerManager;
    FConfiguration: TAdornerConfiguration;
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

function TAdornerConfiguration.BuildJsonArray(AFormName, ATopic: string): TJsonArray;
var
  H: THttpClient;
  R: IHTTPResponse;
  O, P: TJSONArray;
  Source, New: TJSONObject;
  A: TArray<string>;
  D, T, N: string;
begin
  Result := nil;
  H := THttpClient.Create;
  try
    H.CustomHeaders['App-Version'] := 'v1';
    H.CustomHeaders['Form'] := AFormName;
    H.CustomHeaders['Topic'] := ATopic;
//    R := H.Get('http://az.yinze.eu.org/media');
    R := H.Get('http://localhost/media');

    if R.StatusCode = 200 then
    begin
      D := R.ContentAsString();
      O := TJSONObject.ParseJSONValue(D) as TJSONArray;
      P := TJSONArray.Create;
      try
        for var I := 0 to O.Count - 1 do
        begin
          Source := O.Items[I] as TJSONObject;
          if not Assigned(Source.GetValue('name')) then
            Continue;

          N := Source.GetValue('name').Value;
          N := N.Substring(0, N.LastDelimiter('.'));

          A := N.Split(['_']);
          if Length(A) < 3 then
            Continue;

          T := A[1];
          if T.StartsWith('[') and T.EndsWith(']') then
            T := T.Substring(1, T.Length - 2);

          New := TJSONObject.Create;
          New.AddPair('title', T);
          New.AddPair('targetElement', A[2]);
          New.AddPair('text', A[0]);
//          New.AddPair('url', Format('http://az.yinze.eu.org/%s/%s/%s/%s',    //TODO: ENDPOINT
          New.AddPair('url', Format('http://localhost/%s/%s/%s/%s',
            [ H.CustomHeaders['App-Version'],
              H.CustomHeaders['Form'],
              ATopic,
              Source.GetValue('name').Value]));
          P.AddElement(New);
        end;
        Result := P;
      finally
        O.Free;
      end;
    end else
    raise Exception.Create('Unable to fetch topic!');
  finally
    H.Free;
  end;

end;

procedure TAdornerConfiguration.FetchAdornerConfig;
var
  HttpClient: THttpClient;
  Response: IHTTPResponse;
  JSONData: string;
begin
  HttpClient := THttpClient.Create;
  try
    Response := HttpClient.Get('https://raw.githubusercontent.com/ngyinze/help-desk-static/refs/heads/main/output.json?ref=v2.0.0/');     //change to github link
    if Response.StatusCode = 200 then
    begin
      JSONData := Response.ContentAsString();
      TJSONMapper<TFormArray>.SetDefaultLibrary('System.JSON.Serializers');
      FArray := TFormArray.FromJSON(JSONData);
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
  FConfiguration.Free;
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
