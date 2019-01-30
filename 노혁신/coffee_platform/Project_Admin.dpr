program Project_Admin;

uses
  System.StartUpCopy,
  FMX.Forms,
  UCoffee_Admin in 'UCoffee_Admin.pas' {MainForm},
  UAdminClass in 'UAdminClass.pas',
  USignIn_Admin in 'USignIn_Admin.pas' {SignForm},
  DMAdmin in 'DMAdmin.pas' {DMAdminAccess: TDataModule};

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TDMAdminAccess, DMAdminAccess);
  Application.Run;
end.
