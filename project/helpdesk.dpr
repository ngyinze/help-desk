program helpdesk;

uses
  Vcl.Forms,
  SL_IV in '..\src\SL_IV.pas' {FormSL_IV},
  YTembed in '..\src\YTembed.pas' {FormBrowser},
  Browser in '..\src\Browser.pas',
  SelectHelp in '..\src\SelectHelp.pas' {FormSelectHelp},
  Adorner in '..\src\Adorner.pas',
  ST_ITEM in '..\src\ST_ITEM.pas' {ST_ITEM};

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormSL_IV, FormSL_IV);
  Application.Run;
end.
