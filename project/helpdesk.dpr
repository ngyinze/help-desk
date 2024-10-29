program helpdesk;

uses
  Vcl.Forms,
  SL_IV in '..\src\SL_IV.pas' {SL_IV},
  YTembed in '..\src\YTembed.pas' {Form3},
  Browser in '..\src\Browser.pas',
  MediaConst in '..\src\MediaConst.pas',
  SelectHelp in '..\src\SelectHelp.pas' {Form4},
  Adorner in '..\src\Adorner.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TSL_IV, Form1);
  Application.Run;
end.
