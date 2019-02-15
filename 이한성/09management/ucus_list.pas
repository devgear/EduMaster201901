unit ucus_list;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls;

 
type
  Tfrm_cus_list = class(TForm)
    거래처명: TLabel;
    lable2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    btn_sp: TButton;
    customersource: TDataSource;
    Button2: TButton;
    DBGrid1: TDBGrid;
    procedure btn_spClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit2Change(Sender: TObject);

  private
    { Private declarations }
      public
    { Public declarations }
    dept_code,dept_name : String;
  end;

var
  frm_cus_list: Tfrm_cus_list;

implementation

{$R *.dfm}

uses Ucus_det, Udatamodule;

procedure Tfrm_cus_list.btn_spClick(Sender: TObject);

begin

  frm_cus_detail := Tfrm_cus_detail.Create(self);
//frm_cus_detail.Parent := pnlLayout;
//  frm_cus_detail.BorderStyle := bsNone;
  frm_cus_detail.Show;

end;


procedure Tfrm_cus_list.Button2Click(Sender: TObject);
begin
  udata.cusquery.Delete;
end;

procedure Tfrm_cus_list.Edit1Change(Sender: TObject);
begin
  Udata.CUSQUERY.IndexFieldNames := 'Cus_name';
  Udata.CUSQUERY.findnearest([edit1.Text]);
end;

procedure Tfrm_cus_list.Edit2Change(Sender: TObject);
begin
 Udata.CUSQUERY.IndexFieldNames := 'Cus_cusnum';
  Udata.CUSQUERY.findnearest([edit2.Text]);
end;

procedure Tfrm_cus_list.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;

end;

end.
