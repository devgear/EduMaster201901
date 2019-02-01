program Project_Admin;

uses
  System.StartUpCopy,
  FMX.Forms,
  UCoffee_Admin in 'UCoffee_Admin.pas' {FrmAdmin},
  UAdminClass in 'UAdminClass.pas',
  USignIn_Admin in 'USignIn_Admin.pas' {FrmSignAdmin},
  DMAdmin in 'DMAdmin.pas' {DMAdminAccess: TDataModule};

{$R *.res}

begin
//  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  Application.CreateForm(TDMAdminAccess, DMAdminAccess);
  Application.CreateForm(TFrmSignAdmin, FrmSignAdmin);
  Application.Run;
end.
