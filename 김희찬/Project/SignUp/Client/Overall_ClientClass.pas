//
// Created by the DataSnap proxy generator.
// 2019-02-14 ¿ÀÀü 10:21:30
//

unit Overall_ClientClass;

interface

uses System.JSON, Data.DBXCommon, Data.DBXClient, Data.DBXDataSnap, Data.DBXJSON, Datasnap.DSProxy, System.Classes, System.SysUtils, Data.DB, Data.SqlExpr, Data.DBXDBReaders, Data.DBXCDSReaders, Data.DBXJSONReflect;

type
  TServerMethods1Client = class(TDSAdminClient)
  private
    FLogInCheckCommand: TDBXCommand;
    FSignedUpCheckCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    function LogInCheck(ID: string; PW: string): Integer;
    function SignedUpCheck(Subject: string; Student: string; SignedUpType: Integer): Integer;
  end;

implementation

function TServerMethods1Client.LogInCheck(ID: string; PW: string): Integer;
begin
  if FLogInCheckCommand = nil then
  begin
    FLogInCheckCommand := FDBXConnection.CreateCommand;
    FLogInCheckCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FLogInCheckCommand.Text := 'TServerMethods1.LogInCheck';
    FLogInCheckCommand.Prepare;
  end;
  FLogInCheckCommand.Parameters[0].Value.SetWideString(ID);
  FLogInCheckCommand.Parameters[1].Value.SetWideString(PW);
  FLogInCheckCommand.ExecuteUpdate;
  Result := FLogInCheckCommand.Parameters[2].Value.GetInt32;
end;

function TServerMethods1Client.SignedUpCheck(Subject: string; Student: string; SignedUpType: Integer): Integer;
begin
  if FSignedUpCheckCommand = nil then
  begin
    FSignedUpCheckCommand := FDBXConnection.CreateCommand;
    FSignedUpCheckCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FSignedUpCheckCommand.Text := 'TServerMethods1.SignedUpCheck';
    FSignedUpCheckCommand.Prepare;
  end;
  FSignedUpCheckCommand.Parameters[0].Value.SetWideString(Subject);
  FSignedUpCheckCommand.Parameters[1].Value.SetWideString(Student);
  FSignedUpCheckCommand.Parameters[2].Value.SetInt32(SignedUpType);
  FSignedUpCheckCommand.ExecuteUpdate;
  Result := FSignedUpCheckCommand.Parameters[3].Value.GetInt32;
end;

constructor TServerMethods1Client.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(ADBXConnection);
end;

constructor TServerMethods1Client.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(ADBXConnection, AInstanceOwner);
end;

destructor TServerMethods1Client.Destroy;
begin
  FLogInCheckCommand.DisposeOf;
  FSignedUpCheckCommand.DisposeOf;
  inherited;
end;

end.

