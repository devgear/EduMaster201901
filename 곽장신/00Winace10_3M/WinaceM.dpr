program WinaceM;

uses
  System.StartUpCopy,
  FMX.Forms,
  Main in 'Main.pas' {fmMain};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfmMain, fmMain);
  Application.Run;
end.
