unit ucus_list;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids;

type
  Tfrm_cus_list = class(TForm)
    DBGrid1: TDBGrid;
    거래처명: TLabel;
    lable2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    btn_sp: TButton;
    procedure btn_spClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_cus_list: Tfrm_cus_list;

implementation

{$R *.dfm}

uses Ucus_det;

procedure Tfrm_cus_list.btn_spClick(Sender: TObject);
begin
  frm_cus_detail := Tfrm_cus_detail.Create(self);
//  frm_cus_detail.Parent := pnlLayout;
//  frm_cus_detail.BorderStyle := bsNone;
  frm_cus_detail.Show;
end;

end.
