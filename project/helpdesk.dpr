program helpdesk;

uses
  Vcl.Forms,
  MainForm in '../src/MainForm.pas' {Form1},
  HelpScreen in '../src/HelpScreen.pas' {Form2},
  SliderUpdater in '../src/SliderUpdater.pas',
  ImageRetriever in '../src/ImageRetriever.pas',
  YTembed in '../src/YTembed.pas' {Form3},
  Browser in '../src/Browser.pas',
  MediaConst in '../src/MediaConst.pas',
  SelectHelp in '../src/SelectHelp.pas' {Form4},
  Adorner in '../src/Adorner.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, Form1);
  Application.Run;
end.
