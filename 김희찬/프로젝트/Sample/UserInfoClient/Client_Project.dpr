program Client_Project;

uses
  Vcl.Forms,
  Client in 'Client.pas' {FrmClient},
  ClientClass in 'ClientClass.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmClient, FrmClient);
  Application.Run;
end.
