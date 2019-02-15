//
// Created by the DataSnap proxy generator.
// 2019-02-15 ¿ÀÈÄ 2:31:59
//

unit Overall_ClientClass;

interface

uses System.JSON, Data.DBXCommon, Data.DBXClient, Data.DBXDataSnap, Data.DBXJSON, Datasnap.DSProxy, System.Classes, System.SysUtils, Data.DB, Data.SqlExpr, Data.DBXDBReaders, Data.DBXCDSReaders, Data.DBXJSONReflect;

type
  TServerMethods1Client = class(TDSAdminClient)
  private
    FLogInCheckCommand: TDBXCommand;
    FSignedUpCheckCommand: TDBXCommand;
    FSignedUpFuncCommand: TDBXCommand;
    FDropFuncCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    function LogInCheck(ID: string; PW: string): Integer;
    function SignedUpCheck(Subject: string; Student: string; SignedUpType: Integer): Integer;
    function SignedUpFunc(Subject: string; Student: string; SignedUpType: Integer): Integer;
    procedure DropFunc(Subject: string; Student: string; DropType: Integer);
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

function TServerMethods1Client.SignedUpFunc(Subject: string; Student: string; SignedUpType: Integer): Integer;
begin
  if FSignedUpFuncCommand = nil then
  begin
    FSignedUpFuncCommand := FDBXConnection.CreateCommand;
    FSignedUpFuncCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FSignedUpFuncCommand.Text := 'TServerMethods1.SignedUpFunc';
    FSignedUpFuncCommand.Prepare;
  end;
  FSignedUpFuncCommand.Parameters[0].Value.SetWideString(Subject);
  FSignedUpFuncCommand.Parameters[1].Value.SetWideString(Student);
  FSignedUpFuncCommand.Parameters[2].Value.SetInt32(SignedUpType);
  FSignedUpFuncCommand.ExecuteUpdate;
  Result := FSignedUpFuncCommand.Parameters[3].Value.GetInt32;
end;

procedure TServerMethods1Client.DropFunc(Subject: string; Student: string; DropType: Integer);
begin
  if FDropFuncCommand = nil then
  begin
    FDropFuncCommand := FDBXConnection.CreateCommand;
    FDropFuncCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FDropFuncCommand.Text := 'TServerMethods1.DropFunc';
    FDropFuncCommand.Prepare;
  end;
  FDropFuncCommand.Parameters[0].Value.SetWideString(Subject);
  FDropFuncCommand.Parameters[1].Value.SetWideString(Student);
  FDropFuncCommand.Parameters[2].Value.SetInt32(DropType);
  FDropFuncCommand.ExecuteUpdate;
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
  FSignedUpFuncCommand.DisposeOf;
  FDropFuncCommand.DisposeOf;
  inherited;
end;

end.

