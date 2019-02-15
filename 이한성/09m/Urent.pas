unit Urent;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids;

type
  TFrm_Rent = class(TForm)
    DBGrid1: TDBGrid;
    rentsource: TDataSource;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Rent: TFrm_Rent;

implementation

{$R *.dfm}

uses Udatamodule, urent_det;

procedure TFrm_Rent.Button1Click(Sender: TObject);
begin
  frm_rent_det := Tfrm_rent_det.Create(self);
  frm_rent_det.Show;
end;

end.
