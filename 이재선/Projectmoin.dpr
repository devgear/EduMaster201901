program Projectmoin;

uses
  System.StartUpCopy,
  FMX.Forms,
  main in 'main.pas' {Form4},
  md in 'md.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
