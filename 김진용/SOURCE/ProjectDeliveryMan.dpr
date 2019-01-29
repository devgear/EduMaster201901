program ProjectDeliveryMan;

uses
  Vcl.Forms,
  DeliveryManForm in 'DeliveryManForm.pas' {frmDeliveryMan};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmDeliveryMan, frmDeliveryMan);
  Application.Run;
end.
