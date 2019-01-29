program WinaceS;

uses
  Vcl.Forms,
  Web.WebReq,
  IdHTTPWebBrokerBridge,
  Server in 'Server.pas' {Form1},
  ServerMethods in 'ServerMethods.pas' {ServerMethods1: TDSServerModule},
  ServerContainer in 'ServerContainer.pas' {ServerContainer1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TServerContainer1, ServerContainer1);
  Application.Run;
end.

