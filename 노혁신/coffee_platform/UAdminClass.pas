//
// Created by the DataSnap proxy generator.
// 2019-01-29 ¿ÀÈÄ 5:14:23
//

unit UAdminClass;

interface

uses System.JSON, Data.DBXCommon, Data.DBXClient, Data.DBXDataSnap, Data.DBXJSON, Datasnap.DSProxy, System.Classes, System.SysUtils, Data.DB, Data.SqlExpr, Data.DBXDBReaders, Data.DBXCDSReaders, Data.DBXJSONReflect;

type
  TServerMethods1Client = class(TDSAdminClient)
  private
    FEchoStringCommand: TDBXCommand;
    FReverseStringCommand: TDBXCommand;
    FSignUpCommand: TDBXCommand;
    FDupChkCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;
    procedure SignUp(Biz_Num: string; pw: string; name: string; addr: string);
    function DupChk(Biz_num: string): Integer;
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

procedure TServerMethods1Client.SignUp(Biz_Num: string; pw: string; name: string; addr: string);
begin
  if FSignUpCommand = nil then
  begin
    FSignUpCommand := FDBXConnection.CreateCommand;
    FSignUpCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FSignUpCommand.Text := 'TServerMethods1.SignUp';
    FSignUpCommand.Prepare;
  end;
  FSignUpCommand.Parameters[0].Value.SetWideString(Biz_Num);
  FSignUpCommand.Parameters[1].Value.SetWideString(pw);
  FSignUpCommand.Parameters[2].Value.SetWideString(name);
  FSignUpCommand.Parameters[3].Value.SetWideString(addr);
  FSignUpCommand.ExecuteUpdate;
end;

function TServerMethods1Client.DupChk(Biz_num: string): Integer;
begin
  if FDupChkCommand = nil then
  begin
    FDupChkCommand := FDBXConnection.CreateCommand;
    FDupChkCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FDupChkCommand.Text := 'TServerMethods1.DupChk';
    FDupChkCommand.Prepare;
  end;
  FDupChkCommand.Parameters[0].Value.SetWideString(Biz_num);
  FDupChkCommand.ExecuteUpdate;
  Result := FDupChkCommand.Parameters[1].Value.GetInt32;
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
  FSignUpCommand.DisposeOf;
  FDupChkCommand.DisposeOf;
  inherited;
end;

end.

