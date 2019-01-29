program Project_Admin;

uses
  System.StartUpCopy,
  FMX.Forms,
  UCoffee_Admin in 'UCoffee_Admin.pas' {MainForm},
  USignUp_Admin in 'USignUp_Admin.pas' {SignUpForm},
  UAdminClass in 'UAdminClass.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
