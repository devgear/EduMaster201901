program Client;

uses
  System.StartUpCopy,
  FMX.Forms,
  Client_Form in 'Client_Form.pas' {ClientFrm},
  LogIn_DM in 'LogIn_DM.pas' {LogInDM: TDataModule},
  LogIn_Form in 'LogIn_Form.pas' {LogInFrm},
  ClientClass in 'ClientClass.pas',
  SignUp_Form in 'SignUp_Form.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TClientFrm, ClientFrm);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
