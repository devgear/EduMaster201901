program manage;

uses
  Vcl.Forms,
  Umain in 'Umain.pas' {Umain_form},
  Ucus_det in 'Ucus_det.pas' {frm_cus_detail},
  ucus_list in 'ucus_list.pas' {frm_cus_list},
  Udatamodule in 'Udatamodule.pas' {udata: TDataModule},
  itemquery in 'itemquery.pas' {frm_itemquery},
  Urent in 'Urent.pas' {Frm_Rent},
  uitem_list in 'uitem_list.pas' {frm_item_list},
  Urent_det_item in 'Urent_det_item.pas' {frm_rent_det_item},
  Urent_det_cus in 'Urent_det_cus.pas' {frm_rent_det_cus},
  urent_det in 'urent_det.pas' {frm_rent_det};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TUmain_form, Umain_form);
  Application.CreateForm(Tudata, udata);
  Application.CreateForm(Tfrm_item_list, frm_item_list);
  Application.CreateForm(Tfrm_rent_det_item, frm_rent_det_item);
  Application.CreateForm(Tfrm_rent_det_cus, frm_rent_det_cus);
  Application.CreateForm(Tfrm_rent_det, frm_rent_det);
  Application.Run;
end.
