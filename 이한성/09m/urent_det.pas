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

uses Udatamodule, Urent_det_cus, Urent_det_item;

procedure Tfrm_rent_det.Button1Click(Sender: TObject);
begin
  frm_rent_det_cus := Tfrm_rent_det_cus.Create(self);
  frm_rent_det_cus.Show;
end;

procedure Tfrm_rent_det.Button2Click(Sender: TObject);
begin
frm_rent_det_item := tfrm_rent_det_item.create(self);
frm_rent_det_item.show;
end;

end.
