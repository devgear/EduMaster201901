program TTMS_FMX;

uses
  System.StartUpCopy,
  FMX.Forms,
  EventForm in 'EventForm.pas' {Form1},
  DataModule in 'DataModule.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
