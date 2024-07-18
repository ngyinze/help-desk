program helpdesk;

uses
  Vcl.Forms,
  MainForm in 'MainForm.pas' {Form1},
  HelpScreen in 'HelpScreen.pas' {Form2},
  SliderUpdater in 'SliderUpdater.pas',
  ImageRetriever in 'ImageRetriever.pas',
  YTembed in 'YTembed.pas' {Form3},
  Browser in 'Browser.pas',
  MediaConst in 'MediaConst.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  //  Application.CreateForm(TForm3, Form3);
  //  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
