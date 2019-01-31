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
    SignUpQuery: TFDQuery;
    DupChkQuery: TFDQuery;
    SignUpQuery2: TFDQuery;
    SignInQuery: TFDQuery;
    BizInfoQuery: TFDQuery;
    SignInQueryProvider: TDataSetProvider;
    BizInfoQueryProvider: TDataSetProvider;
    BizInfoQueryBIZ_CODE: TIntegerField;
    BizInfoQueryCONTENT: TStringField;
    BizInfoQueryAMENITY: TStringField;
    BizInfoQuerySIG_IMG: TBlobField;
    BizInfoQuerySIG_NAME: TStringField;
    BizInfoQueryIMG_1: TBlobField;
    BizInfoQueryIMG_2: TBlobField;
    BizInfoQueryIMG_3: TBlobField;
    BizInfoQueryIMG_4: TBlobField;
    BizInfoQueryCOUPON: TIntegerField;
    SignInQueryBIZ_CODE: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;
    function DupChk(ABizNum: string): Integer; // 중복체크: Return > 0 then 중복
    function SignUp(ABizNum, APw, AName, AAddr: string): Boolean; // 회원 가입
    function SignIn(ABizNum, APw: string): Integer; // 로그인

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

function TServerMethods1.SignIn(ABizNum, APw: string): Integer;
  var
    BizCode: Integer;
begin
  SignInQuery.Close;
  SignInQuery.Params[0].AsString := ABizNum;
  SignInQuery.Params[1].AsString := APw;
  SignInQuery.Open;
  // -999: 미등록, -998: 중복
  if SignInQuery.RecordCount = 0 then
    Result := -999
  else if SignInQuery.RecordCount = 1 then
  begin
//  // 코드 받아와서
    BizCode := SignInQuery.FieldByName('BIZ_CODE').AsInteger;
  // 데이터 넣음
//    BizInfoQuery.Close;
//    BizInfoQuery.Params[0].AsInteger := BizCode;
//    BizInfoQuery.Open;
    Result := BizCode;
  end
  else
    Result := -998
//  else
//    raise Exception.Create('로그인데이터 중복값 있는지 확인');
// 이곳에 예외처리 하면 받을 곳이 없음
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

  Result := DupChkQuery.FieldByName('DupCnt').AsInteger;
end;

end.

