unit UCoffee_Client;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, Data.DB,
  Data.SqlExpr;

type
  TFrmClient = class(TForm)
    SQLConnection1: TSQLConnection;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmClient: TFrmClient;

implementation

{$R *.fmx}

end.
