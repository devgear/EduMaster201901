unit Urent_det_cus;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    rent_cus_Name: String;

  var
    rent_cus_num: integer;

    { Public declarations }
  end;

var
  frm_rent_det_cus: Tfrm_rent_det_cus;

implementation

{$R *.dfm}

uses Udatamodule;

procedure Tfrm_rent_det_cus.DBGrid1DblClick(Sender: TObject);
begin
  rent_cus_num := DataSource1.DataSet.FieldByName('CUS_NUMBER').AsInteger;
  rent_cus_Name := DataSource1.DataSet.FieldByName('CUS_NAME').AsString;
  close;

end;

procedure Tfrm_rent_det_cus.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
end;

end.
