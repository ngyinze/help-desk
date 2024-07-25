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
  SelectHelp in 'SelectHelp.pas' {Form4},
  FeatureScreen in 'FeatureScreen.pas' {Form5};

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, Form1);
//    Application.CreateForm(TForm4, Form4);
//  Application.CreateForm(TForm5, Form5);
//    Application.CreateForm(TForm3, Form3);
//    Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
