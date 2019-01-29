program Project_VCL;

uses
  Vcl.Forms,
  UDataModule in 'UDataModule.pas' {DM: TDataModule},
  UMain in 'UMain.pas' {MainForm},
  UUserForm in 'UUserForm.pas' {frmUser};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TfrmUser, frmUser);
  Application.Run;
end.
