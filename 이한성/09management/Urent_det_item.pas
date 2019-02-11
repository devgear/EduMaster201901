unit Urent_det_item;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.Mask, Vcl.DBCtrls, Vcl.ComCtrls;

type
  Tfrm_rent_det_item = class(TForm)
    Button1: TButton;
    DBGrid1: TDBGrid;
    공구명: TLabel;
    공구번호: TLabel;
    DataSource1: TDataSource;
    Edit1: TEdit;
    Edit2: TEdit;
    Button2: TButton;
    procedure Edit1Change(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    var
    rent_det_item :string;
    iname : string;
  end;

var
  frm_rent_det_item: Tfrm_rent_det_item;

implementation

{$R *.dfm}

uses Udatamodule;

procedure Tfrm_rent_det_item.DBGrid1DblClick(Sender: TObject);
begin
   rent_det_item := DataSource1.DataSet.FieldByName('ITEM_NUMBER').AsString;
  close;
end;

procedure Tfrm_rent_det_item.Edit1Change(Sender: TObject);
begin
  Udata.itemquery.IndexFieldNames := 'Item_name';
  Udata.itemquery.findnearest([edit1.Text]);
end;

end.
