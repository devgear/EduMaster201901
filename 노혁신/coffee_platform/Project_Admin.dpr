program Project_Admin;

uses
  System.StartUpCopy,
  FMX.Forms,
  UAdmin_Client in 'UAdmin_Client.pas' {Form2},
  UAdminClass in 'UAdminClass.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
