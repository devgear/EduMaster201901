program TTMS;

uses
  Vcl.Forms,
  MainMenu in 'MainMenu.pas' {frmMenu},
  EventManager in 'EventManager.pas' {frmEvent},
  Manager in 'Manager.pas' {frmManager},
  DataModule in 'DataModule.pas' {DataModule1: TDataModule},
  TouristStatusForm in 'TouristStatusForm.pas' {frmTouristStatus};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMenu, frmMenu);
  Application.CreateForm(TfrmEvent, frmEvent);
  Application.CreateForm(TfrmManager, frmManager);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TfrmTouristStatus, frmTouristStatus);
  Application.Run;
end.
