unit Urent;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids;

type
  TFrm_Rent = class(TForm)
    DBGrid1: TDBGrid;
    Button1: TButton;
    dsrent: TDataSource;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
  var
    RentNum: Integer;
    { Public declarations }
  end;

var
  Frm_Rent: TFrm_Rent;

implementation

{$R *.dfm}

uses Udatamodule, urent_det;

procedure TFrm_Rent.Button1Click(Sender: TObject);

begin
  udata.rentquery.Close; // 전표번호 생성
  udata.rentquery.Open;
  udata.rentquery.Append;
  udata.rentquery.Post;
  udata.rentquery.Refresh;

  udata.FDQuery1.Close;
  udata.FDQuery1.Open;
  RentNum := udata.FDQuery1.Fields[0].AsInteger;
  showmessage(inttostr(RentNum));
  udata.FDQuery1.Close;

  frm_rent_det := Tfrm_rent_det.Create(self);
  frm_rent_det.Show;

  frm_rent_det.SetRentNum(RentNum);

end;

procedure TFrm_Rent.Button2Click(Sender: TObject);
begin
  udata.rentquery.Delete;
end;

procedure TFrm_Rent.DBGrid1DblClick(Sender: TObject);
begin

  udata.rentquery.Open;
  RentNum := udata.rentquery.fieldByName('RENT_NUM').AsInteger;
  frm_rent_det := Tfrm_rent_det.Create(self);
  frm_rent_det.Show;
  frm_rent_det.SetRentNum(RentNum);

end;

end.
