program Client;

uses
  System.StartUpCopy,
  FMX.Forms,
  Client_Form in 'Client_Form.pas' {ClientFrm},
  LogIn_Form in 'LogIn_Form.pas' {LogInFrm},
  ClientClass in 'ClientClass.pas',
  SignUp_Form in 'SignUp_Form.pas' {SIgnUpFrm},
  Overall_DM in 'Overall_DM.pas' {OverallDM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TClientFrm, ClientFrm);
  Application.CreateForm(TOverallDM, OverallDM);
  Application.Run;
end.
