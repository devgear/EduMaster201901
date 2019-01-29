program devicemanagement;

uses
  Vcl.Forms,
  Mainform in 'Mainform.pas' {Form4},
  DataAccessModule1 in 'DataAccessModule1.pas' {dm: TDataModule},
  idform in 'idform.pas' {formid},
  addmod in 'addmod.pas' {formaddmod};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(Tformid, formid);
  Application.CreateForm(Tformaddmod, formaddmod);
  Application.Run;
end.
