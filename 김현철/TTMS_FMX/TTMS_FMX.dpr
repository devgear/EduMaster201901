program TTMS_FMX;

uses
  System.StartUpCopy,
  FMX.Forms,
  EventForm in 'EventForm.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
