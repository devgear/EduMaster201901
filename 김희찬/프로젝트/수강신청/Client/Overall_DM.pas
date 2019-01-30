unit Overall_DM;

interface

uses
  System.SysUtils, System.Classes, Data.DBXDataSnap, Data.DBXCommon,
  IPPeerClient, Data.DB, Datasnap.DBClient, Data.SqlExpr,
  Datasnap.DSConnect;

type
  TOverallDM = class(TDataModule)
    DSProviderConnection1: TDSProviderConnection;
    SQLConnection1: TSQLConnection;
    Subject_Log: TClientDataSet;
    SignedUp: TClientDataSet;
    Basket: TClientDataSet;
    User_Log: TClientDataSet;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OverallDM: TOverallDM;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

end.
