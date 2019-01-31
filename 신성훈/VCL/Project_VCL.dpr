program Project_VCL;

uses
  Vcl.Forms,
  UDataModule in 'UDataModule.pas' {DM: TDataModule},
  UMain in 'UMain.pas' {MainForm},
  USampleForm in 'USampleForm.pas' {frmSample},
  CommonFunctions in 'CommonFunctions.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TfrmSample, frmSample);
  Application.Run;
end.
