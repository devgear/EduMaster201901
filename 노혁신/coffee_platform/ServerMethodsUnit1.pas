unit ServerMethodsUnit1;

interface

uses System.SysUtils, System.Classes, System.Json,
    DataSnap.DSProviderDataModuleAdapter,
    Datasnap.DSServer, Datasnap.DSAuth, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.IB,
  FireDAC.Phys.IBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Datasnap.Provider, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Phys.IBBase,
  FireDAC.Comp.UI;


type
  TServerMethods1 = class(TDSServerModule)
    FDConnection1: TFDConnection;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDPhysIBDriverLink1: TFDPhysIBDriverLink;
    Tb_Biz: TFDTable;
    Tb_BizProvider: TDataSetProvider;
    SignUpQuery: TFDQuery;
    Tb_Biz_Info: TFDTable;
    Tb_Biz_InfoProvider: TDataSetProvider;
    Tb_Biz_InfoBIZ_CODE: TIntegerField;
    Tb_Biz_InfoCONTENT: TStringField;
    Tb_Biz_InfoAMENITY: TStringField;
    Tb_Biz_InfoSIG_IMG: TBlobField;
    Tb_Biz_InfoSIG_NAME: TStringField;
    Tb_Biz_InfoIMG_1: TBlobField;
    Tb_Biz_InfoIMG_2: TBlobField;
    Tb_Biz_InfoIMG_3: TBlobField;
    Tb_Biz_InfoIMG_4: TBlobField;
    Tb_Biz_InfoCOUPON: TIntegerField;
    DupChkQuery: TFDQuery;
    SignUpQuery2: TFDQuery;
    SignInQuery: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;
    function DupChk(ABizNum: string): Integer; // 중복체크: Return > 0 then 중복
    function SignUp(ABizNum, APw, AName, AAddr: string): Boolean; // 회원 가입
    function SignIn(ABizNum, APw: string): Boolean; // 로그인
  end;

implementation


{$R *.dfm}


uses System.StrUtils;

function TServerMethods1.EchoString(Value: string): string;
begin
  Result := Value;
end;

function TServerMethods1.ReverseString(Value: string): string;
begin
  Result := System.StrUtils.ReverseString(Value);
end;

function TServerMethods1.SignIn(ABizNum, APw: string): Boolean;
begin
  Result := True;

  SignInQuery.Close;
  SignInQuery.Params[0].AsString := ABizNum;
  SignInQuery.Params[1].AsString := APw;
  SignInQuery.Open;

  if SignInQuery.RecordCount = 0 then
    Result := False;
end;

function TServerMethods1.SignUp(ABizNum, APw, AName, AAddr: string): Boolean;
begin
  Result := False;
  SignUpQuery.Close;
  SignUpQuery2.Close;

  SignUpQuery.Params[0].AsString := ABizNum;
  SignUpQuery.Params[1].AsString := APw;
  SignUpQuery.Params[2].AsString := AName;
  SignUpQuery.Params[3].AsString := AAddr;

  FDConnection1.StartTransaction;
  try
    SignUpQuery.ExecSQL;
    SignUpQuery2.ExecSQL;
    FDConnection1.Commit;
    Result := True;
  except
    FDConnection1.Rollback;
    raise;
  end;


end;

function TServerMethods1.DupChk(ABizNum: string): Integer;
begin
  DupChkQuery.Close;
  DupChkQuery.Params[0].AsString := ABizNum;
  DupChkQuery.Open;

  Result := DupChkQuery.FieldByName('DUPCNT').AsInteger;
end;

end.

