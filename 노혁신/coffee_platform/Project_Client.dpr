program Project_Client;

uses
  System.StartUpCopy,
  FMX.Forms,
  UCoffee_Client in 'UCoffee_Client.pas' {FrmClient};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmClient, FrmClient);
  Application.Run;
end.
