program helpdesk;

uses
  Vcl.Forms,
  MainForm in 'MainForm.pas' {Form1},
  HelpScreen in 'HelpScreen.pas' {Form2},
  SliderUpdater in 'SliderUpdater.pas',
  ImageRetriever in 'ImageRetriever.pas',
  YTembed in 'YTembed.pas' {Form3},
  Browser in 'Browser.pas',
  MediaConst in 'MediaConst.pas',
  SelectHelp in 'SelectHelp.pas' {Form4};

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, Form1);
  Application.Run;
end.
