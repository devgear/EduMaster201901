unit SignedUp_DM;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Datasnap.DBClient, Data.SqlExpr,
  Data.DBXDataSnap, Data.DBXCommon, IPPeerClient, Datasnap.DSConnect,
  Data.FMTBcd;

type
  TSignedUpDM = class(TDataModule)
    SQLConnection1: TSQLConnection;
    SignedUpSearch: TClientDataSet;
    DSProviderConnection1: TDSProviderConnection;
    BasketDetail: TClientDataSet;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SignedUpDM: TSignedUpDM;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

end.
