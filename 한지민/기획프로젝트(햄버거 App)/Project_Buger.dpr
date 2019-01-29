program Project_Buger;

uses
  System.StartUpCopy,
  FMX.Forms,
  UMainForm in 'UMainForm.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
