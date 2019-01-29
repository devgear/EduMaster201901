program manage;

uses
  Vcl.Forms,
  Umain in 'Umain.pas' {Umain_form},
  Ucus_det in 'Ucus_det.pas' {frm_cus_detail},
  ucus_list in 'ucus_list.pas' {frm_cus_list},
  Udatamodule in 'Udatamodule.pas' {Udata};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TUmain_form, Umain_form);
  Application.CreateForm(TUdata, Udata);
  Application.Run;
end.
