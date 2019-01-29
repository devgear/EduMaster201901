program Project_Client;

uses
  System.StartUpCopy,
  FMX.Forms,
  UCoffee_Client in 'UCoffee_Client.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
