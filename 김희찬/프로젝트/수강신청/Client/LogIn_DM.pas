unit LogIn_DM;

interface

uses
  System.SysUtils, System.Classes, Data.SqlExpr, Data.DB,
  Datasnap.DBClient, Datasnap.DSConnect, Data.DBXDataSnap, Data.DBXCommon,
  IPPeerClient;

type
  TLogInDM = class(TDataModule)
    DSProviderConnection1: TDSProviderConnection;
    SQLConnection1: TSQLConnection;
    User_Log: TClientDataSet;
    User_LogSTUDENT_CODE: TIntegerField;
    User_LogPASSWORD: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LogInDM: TLogInDM;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

end.
