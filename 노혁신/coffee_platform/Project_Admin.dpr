program Project_Admin;

uses
  System.StartUpCopy,
  FMX.Forms,
  UCoffee_Admin in 'UCoffee_Admin.pas' {MainForm},
  UAdminClass in 'UAdminClass.pas',
  USignIn_Admin in 'USignIn_Admin.pas' {SignForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
