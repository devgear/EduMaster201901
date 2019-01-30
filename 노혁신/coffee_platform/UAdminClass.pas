//
// Created by the DataSnap proxy generator.
// 2019-01-30 ¿ÀÈÄ 2:13:32
//

unit UAdminClass;

interface

uses System.JSON, Data.DBXCommon, Data.DBXClient, Data.DBXDataSnap, Data.DBXJSON, Datasnap.DSProxy, System.Classes, System.SysUtils, Data.DB, Data.SqlExpr, Data.DBXDBReaders, Data.DBXCDSReaders, Data.DBXJSONReflect;

type
  TServerMethods1Client = class(TDSAdminClient)
  private
    FEchoStringCommand: TDBXCommand;
    FReverseStringCommand: TDBXCommand;
    FDupChkCommand: TDBXCommand;
    FSignUpCommand: TDBXCommand;
    FSignInCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;
    function DupChk(ABizNum: string): Integer;
    function SignUp(ABizNum: string; APw: string; AName: string; AAddr: string): Boolean;
    function SignIn(ABizNum: string; APw: string): Boolean;
  end;

implementation

function TServerMethods1Client.EchoString(Value: string): string;
begin
  if FEchoStringCommand = nil then
  begin
    FEchoStringCommand := FDBXConnection.CreateCommand;
    FEchoStringCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FEchoStringCommand.Text := 'TServerMethods1.EchoString';
    FEchoStringCommand.Prepare;
  end;
  FEchoStringCommand.Parameters[0].Value.SetWideString(Value);
  FEchoStringCommand.ExecuteUpdate;
  Result := FEchoStringCommand.Parameters[1].Value.GetWideString;
end;

function TServerMethods1Client.ReverseString(Value: string): string;
begin
  if FReverseStringCommand = nil then
  begin
    FReverseStringCommand := FDBXConnection.CreateCommand;
    FReverseStringCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FReverseStringCommand.Text := 'TServerMethods1.ReverseString';
    FReverseStringCommand.Prepare;
  end;
  FReverseStringCommand.Parameters[0].Value.SetWideString(Value);
  FReverseStringCommand.ExecuteUpdate;
  Result := FReverseStringCommand.Parameters[1].Value.GetWideString;
end;

function TServerMethods1Client.DupChk(ABizNum: string): Integer;
begin
  if FDupChkCommand = nil then
  begin
    FDupChkCommand := FDBXConnection.CreateCommand;
    FDupChkCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FDupChkCommand.Text := 'TServerMethods1.DupChk';
    FDupChkCommand.Prepare;
  end;
  FDupChkCommand.Parameters[0].Value.SetWideString(ABizNum);
  FDupChkCommand.ExecuteUpdate;
  Result := FDupChkCommand.Parameters[1].Value.GetInt32;
end;

function TServerMethods1Client.SignUp(ABizNum: string; APw: string; AName: string; AAddr: string): Boolean;
begin
  if FSignUpCommand = nil then
  begin
    FSignUpCommand := FDBXConnection.CreateCommand;
    FSignUpCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FSignUpCommand.Text := 'TServerMethods1.SignUp';
    FSignUpCommand.Prepare;
  end;
  FSignUpCommand.Parameters[0].Value.SetWideString(ABizNum);
  FSignUpCommand.Parameters[1].Value.SetWideString(APw);
  FSignUpCommand.Parameters[2].Value.SetWideString(AName);
  FSignUpCommand.Parameters[3].Value.SetWideString(AAddr);
  FSignUpCommand.ExecuteUpdate;
  Result := FSignUpCommand.Parameters[4].Value.GetBoolean;
end;

function TServerMethods1Client.SignIn(ABizNum: string; APw: string): Boolean;
begin
  if FSignInCommand = nil then
  begin
    FSignInCommand := FDBXConnection.CreateCommand;
    FSignInCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FSignInCommand.Text := 'TServerMethods1.SignIn';
    FSignInCommand.Prepare;
  end;
  FSignInCommand.Parameters[0].Value.SetWideString(ABizNum);
  FSignInCommand.Parameters[1].Value.SetWideString(APw);
  FSignInCommand.ExecuteUpdate;
  Result := FSignInCommand.Parameters[2].Value.GetBoolean;
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
  FEchoStringCommand.DisposeOf;
  FReverseStringCommand.DisposeOf;
  FDupChkCommand.DisposeOf;
  FSignUpCommand.DisposeOf;
  FSignInCommand.DisposeOf;
  inherited;
end;

end.

