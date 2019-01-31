program Client;

uses
  System.StartUpCopy,
  FMX.Forms,
  Client_Form in 'Client_Form.pas' {ClientFrm},
  LogIn_Form in 'LogIn_Form.pas' {LogInFrm},
  SignUp_Form in 'SignUp_Form.pas' {SIgnUpFrm},
  Overall_DM in 'Overall_DM.pas' {OverallDM: TDataModule},
  ClientClass in 'ClientClass.pas',
  SubjectDetail_Frame in 'SubjectDetail_Frame.pas' {SubjectDetailFrame: TFrame},
  CommonDefine in '..\CommonDefine.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TClientFrm, ClientFrm);
  Application.CreateForm(TOverallDM, OverallDM);
  Application.Run;
end.
