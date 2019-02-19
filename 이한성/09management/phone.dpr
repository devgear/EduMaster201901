program phone;

uses
  System.StartUpCopy,
  FMX.Forms,
  Uphone_main in 'Uphone_main.pas' {Form6},
  Udatamodule in 'Udatamodule.pas' {udata: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(Tudata, udata);
  Application.Run;
end.
