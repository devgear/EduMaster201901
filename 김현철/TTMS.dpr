program TTMS;

uses
  Vcl.Forms,
  MainMenu in 'MainMenu.pas' {frmMenu},
  EventManager in 'EventManager.pas' {frmEvent},
  Manager in 'Manager.pas' {frmManager},
  DataModule in 'DataModule.pas' {DataModule1: TDataModule},
  TouristStatusForm in 'TouristStatusForm.pas' {frmTouristStatus},
  CustomerForm in 'CustomerForm.pas' {frmCustomer},
  MyLib in 'MyLib.pas',
  ManageEventForm in 'ManageEventForm.pas' {frmManageEvent},
  SearchForm in 'SearchForm.pas' {frmSearch},
  PartnerForm in 'PartnerForm.pas' {frmPartner};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMenu, frmMenu);
  Application.CreateForm(TfrmEvent, frmEvent);
  Application.CreateForm(TfrmManager, frmManager);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TfrmTouristStatus, frmTouristStatus);
  Application.CreateForm(TfrmCustomer, frmCustomer);
  Application.CreateForm(TfrmManageEvent, frmManageEvent);
  Application.CreateForm(TfrmSearch, frmSearch);
  Application.CreateForm(TfrmPartner, frmPartner);
  Application.Run;
end.
