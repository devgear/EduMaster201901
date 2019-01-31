unit ServerMethodsUnit1;

interface

uses System.SysUtils, System.Classes, System.Json,
    DataSnap.DSProviderDataModuleAdapter,
    Datasnap.DSServer, Datasnap.DSAuth, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.IB, FireDAC.Phys.IBDef,
  FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.UI, Datasnap.Provider, FMX.Dialogs;

type
  TServerMethods1 = class(TDSServerModule)
    FDConnection1: TFDConnection;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    Subject_Log: TFDQuery;
    Basket: TFDQuery;
    SignedUp: TFDQuery;
    Subject_logProvider: TDataSetProvider;
    BasketProvider: TDataSetProvider;
    SignedUpProvider: TDataSetProvider;
    User_LogProvider: TDataSetProvider;
    BasketSUBJECT_CODE: TIntegerField;
    BasketSTUDENT_CODE: TIntegerField;
    SignedUpSUBJECT_CODE: TIntegerField;
    SignedUpSTUDENT_CODE: TIntegerField;
    User_Log: TFDQuery;
    qryLogIn: TFDQuery;
    Subject_LogTYPE: TWideStringField;
    Subject_LogCODE: TIntegerField;
    Subject_LogTITLE: TWideStringField;
    Subject_LogLECTURER: TWideStringField;
    Subject_LogTIME: TWideStringField;
    Subject_LogCLASSROOM: TWideStringField;
    Subject_LogCREDIT: TIntegerField;
    Subject_LogGRADE: TIntegerField;
    Subject_LogCAPACITY: TIntegerField;
    Subject_LogDETAIL: TWideStringField;
    User_LogSTUDENT_CODE: TStringField;
    User_LogPASSWORD: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;
    function LogInCheck(ID, PW: string): Integer;
  end;

implementation


{$R *.dfm}


uses System.StrUtils, CommonDefine;

function TServerMethods1.EchoString(Value: string): string;
begin
  Result := Value;
end;

function TServerMethods1.LogInCheck(ID, PW: string): Integer;
var
  Msg: string;
begin
  qryLogIn.Close;
  Msg := 'select * from USER_LOG where STUDENT_CODE = :STUDENT_CODE';
  qryLogIn.SQL.Text := Msg;
  qryLogIn.ParamByName('STUDENT_CODE').AsString := ID;
  qryLogIn.Open;
  if qryLogIn.Fields[0].AsString <> ID then //등록되지 않은 ID
    Result := LOGIN_CHECK_NOTFOUND_ID
  else if qryLogIn.Fields[1].AsString <> PW then  //비밀번호 틀림
    Result := LOGIN_CHECK_INCORRECT_PW
  else
    Result := LOGIN_CHECK_OK;
end;

function TServerMethods1.ReverseString(Value: string): string;
begin
  Result := System.StrUtils.ReverseString(Value);
end;

end.


