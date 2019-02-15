unit Urent_det_cus;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids;

type
  Tfrm_rent_det_cus = class(TForm)
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    DBEdit1: TDBEdit;
    거래처명: TLabel;
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_rent_det_cus: Tfrm_rent_det_cus;

implementation

{$R *.dfm}

uses Udatamodule;

procedure Tfrm_rent_det_cus.DBGrid1DblClick(Sender: TObject);
begin
  parambyname('cus_num').asstring :=
end;

end.
