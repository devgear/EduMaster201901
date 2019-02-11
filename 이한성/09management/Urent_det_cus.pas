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
    DataSource2: TDataSource;
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    rent_cus_Name : String;
  var
  rent_cus_num : string;


    { Public declarations }
  end;

var
  frm_rent_det_cus: Tfrm_rent_det_cus;

implementation

{$R *.dfm}

uses Udatamodule;

procedure Tfrm_rent_det_cus.DBGrid1DblClick(Sender: TObject);
begin
  rent_cus_num := DataSource1.DataSet.FieldByName('CUS_NUMBER').Asstring;
  rent_cus_Name := DataSource1.DataSet.FieldByName('CUS_NAME').AsString;
//  rent_cus_num := dbgrid1.Columns[1].Field.asstring;
  //showmessage(dbgrid1.Columns[1].Field.asstring);
  close;
//  udata.rentquery.FieldByName(rent_cus_num).AsString := rent_cus_num;
end;

end.
