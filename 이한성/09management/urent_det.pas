unit urent_det;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids;

type
  Tfrm_rent_det = class(TForm)
    DBGrid1: TDBGrid;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_rent_det: Tfrm_rent_det;

implementation

{$R *.dfm}

uses Udatamodule, Urent_det_cus, Urent_det_item, Ucus_det;

procedure Tfrm_rent_det.Button1Click(Sender: TObject);
//var
  //strQry : String;
begin
  frm_rent_det_cus := Tfrm_rent_det_cus.Create(self);
  try
    frm_rent_det_cus.ShowModal;

    edit1.text := frm_rent_det_cus.rent_cus_num;


    udata.fdtRent_det.Close;
    udata.fdtRent_det.Filter := 'rent_rent_num = -10';
    udata.fdtRent_det.Open;

//    udata.fdtRent_det.Append;
//    udata.fdtRent_det.FieldByName('rent_rent_num').Asinteger := 3;
//    udata.fdtRent_det.FieldByName('rent_rent_cus').AsString := frm_rent_det_cus.rent_cus_num;
//    udata.fdtRent_det.FieldByName('rent_rent_item_num').AsString := frm_rent_det_item.rent_det_item;
//    udata.fdtRent_det.Post;

    udata.rent_detquery.Refresh;

//    DataSource1.DataSet.Append;
//    DataSource1.DataSet.FieldByName('RENT_RENT_CUS').AsString := frm_rent_det_cus.rent_cus_num;
//    DataSource1.DataSet.Post;

  finally
    frm_rent_det_cus.Free;


  end;

end;

procedure Tfrm_rent_det.Button2Click(Sender: TObject);
begin
 frm_rent_det_item := tfrm_rent_det_item.create(self);
  try
    frm_rent_det_item.ShowModal;
    edit2.Text := frm_rent_det_item.rent_det_item;

    udata.fdtRent_det.Close;
    udata.fdtRent_det.Filter := 'rent_rent_num = -10';
    udata.fdtRent_det.Open;

    udata.fdtRent_det.Append;
    udata.fdtRent_det.FieldByName('rent_rent_num').Asinteger := 12;
    udata.fdtRent_det.FieldByName('rent_rent_cus').Asstring := frm_rent_det_cus.rent_cus_num;
    udata.fdtRent_det.FieldByName('rent_rent_item_num').AsString := frm_rent_det_item.rent_det_item;
    udata.fdtRent_det.Post;
    udata.rent_detquery.Refresh;

//    DataSource1.DataSet.Append;
//    DataSource1.DataSet.FieldByName('RENT_RENT_CUS').AsString := frm_rent_det_cus.rent_cus_num;
//    DataSource1.DataSet.Post;

  finally

     frm_rent_det_item.Free;

  end;


end;

end.
