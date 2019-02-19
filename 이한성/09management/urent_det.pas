unit urent_det;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids;

type
  Tfrm_rent_det = class(TForm)
    DBGrid1: TDBGrid;
    btncus: TButton;
    btn_item: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    save: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit3: TEdit;
    DataSource2: TDataSource;
    btnreturn: TButton;
    procedure btncusClick(Sender: TObject);
    procedure btn_itemClick(Sender: TObject);
    procedure saveClick(Sender: TObject);
    procedure btnreturnClick(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
  var
    FRentNum: Integer;
    procedure SetRentNum(ANum: Integer);
  end;

var
  frm_rent_det: Tfrm_rent_det;

implementation

{$R *.dfm}

uses Udatamodule, Urent_det_cus, Urent_det_item, Ucus_det;

procedure Tfrm_rent_det.btncusClick(Sender: TObject);
// var
// strQry : String;
begin
  frm_rent_det_cus := Tfrm_rent_det_cus.Create(self);
  try
    frm_rent_det_cus.ShowModal;

    // udata.rentquery.Close;
    udata.rentquery.Open;
    udata.rentquery.EDIT;
    udata.rentquery.FieldByName('rent_cus_num').Asinteger :=
      frm_rent_det_cus.rent_cus_num;
    udata.rentquery.Post;
    udata.rentquery.refresh;
    Edit1.text := udata.CUSQUERY.FieldByName('cus_NAME').asstring;

  finally
    frm_rent_det_cus.Free;

  end;

end;

procedure Tfrm_rent_det.btnreturnClick(Sender: TObject);
begin
  udata.rent_detquery.Open;
  udata.rent_detquery.EDIT;
  // udata.rent_detquery.Post;
  udata.rent_detquery.FieldByName('RENT_RENT_lastdate').AsDateTime := NOW;
end;

procedure Tfrm_rent_det.btn_itemClick(Sender: TObject);
begin
  frm_rent_det_item := tfrm_rent_det_item.Create(self);
  try
    frm_rent_det_item.ShowModal;
    Edit2.text := inttostr(frm_rent_det_item.rent_det_item);

    udata.rent_detquery.Append;
    udata.rent_detquery.FieldByName('rent_rent_index').Asinteger := FRentNum;
    udata.rent_detquery.FieldByName('rent_rent_item_num').Asinteger :=
      frm_rent_det_item.rent_det_item;
    udata.rent_detquery.FieldByName('RENT_RENT_DATE').AsDateTime := NOW;
    Edit2.text := udata.itemquery.FieldByName('ITEM_NAME').asstring;
    udata.rent_detquery.Post;
    udata.rent_detquery.refresh;
  finally
    frm_rent_det_item.Free;
  end;

end;

procedure Tfrm_rent_det.saveClick(Sender: TObject);
begin
  // udata.rent_detquery.Open;
  udata.rent_detquery.insert;
  udata.rent_detquery.Post;
  udata.rent_detquery.refresh;
  close;
end;

procedure Tfrm_rent_det.SetRentNum(ANum: Integer);
begin
  FRentNum := ANum;

  udata.rent_detquery.close;
  udata.rent_detquery.ParamByName('rent_num').Asinteger := FRentNum;
  udata.rent_detquery.Open;

end;

end.
