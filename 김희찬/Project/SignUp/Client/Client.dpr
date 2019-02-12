program Client;

uses
  System.StartUpCopy,
  FMX.Forms,
  Client_Form in 'Client_Form.pas' {ClientFrm},
  LogIn_Form in 'LogIn_Form.pas' {LogInFrm},
  SignUp_Form in 'SignUp_Form.pas' {SignUpFrm},
  Overall_DM in 'Overall_DM.pas' {OverallDM: TDataModule},
  SubjectDetail_Frame in 'SubjectDetail_Frame.pas' {SubjectDetailFrame: TFrame},
  CommonDefine in '..\CommonDefine.pas',
  ConfirmCheck_Frame in 'ConfirmCheck_Frame.pas' {ConfirmCheckFrame: TFrame},
  Basket_Form in 'Basket_Form.pas' {BasketFrm},
  SignedUp_DM in 'SignedUp_DM.pas' {SignedUpDM: TDataModule},
  SignedUp_ClientClass in 'SignedUp_ClientClass.pas',
  Overall_ClientClass in 'Overall_ClientClass.pas',
  BasketDetail_Frame in 'BasketDetail_Frame.pas' {BasketDetailFrame: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TClientFrm, ClientFrm);
  Application.CreateForm(TOverallDM, OverallDM);
  Application.Run;
end.
