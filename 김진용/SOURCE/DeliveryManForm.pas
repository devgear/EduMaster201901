unit DeliveryManForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Datasnap.DBClient, Data.DBXDataSnap, Data.DBXCommon, IPPeerClient,
  Data.SqlExpr;

type
  TfrmDeliveryMan = class(TForm)
    ClientDataSet1: TClientDataSet;
    DBGrid1: TDBGrid;
    SQLConnection1: TSQLConnection;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDeliveryMan: TfrmDeliveryMan;

implementation

{$R *.dfm}

end.
