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
    qryLogInProvider: TDataSetProvider;
    BasketSUBJECT_CODE: TIntegerField;
    BasketSTUDENT_CODE: TIntegerField;
    qryLogIn: TFDQuery;
    Subject_LogTYPE: TIntegerField;
    Subject_LogSUBJECT_CODE: TIntegerField;
    Subject_LogTITLE: TStringField;
    Subject_LogLECTURER: TStringField;
    Subject_LogTIME: TStringField;
    Subject_LogCLASSROOM: TStringField;
    Subject_LogCREDIT: TIntegerField;
    Subject_LogGRADE: TIntegerField;
    Subject_LogCAPACITY: TIntegerField;
    Subject_LogSTUDENTNUM: TIntegerField;
    Subject_LogDETAIL: TStringField;
    qrySignedUp: TFDQuery;
    SignedUpSUBJECT_CODE: TIntegerField;
    SignedUpSTUDENT_CODE: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;
    function LogInCheck(ID, PW: string): Integer;
    function SignedUpCheck(Subject, Student: Integer): Integer;
  end;

implementation


{$R *.dfm}


uses System.StrUtils, CommonDefine;

function TServerMethods1.EchoString(Value: string): string;
begin
  Result := Value;
end;

function TServerMethods1.ReverseString(Value: string): string;
begin
  Result := System.StrUtils.ReverseString(Value);
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

  if qryLogIn.Fields[1].AsString <> ID then //등록되지 않은 ID
    Result := LOGIN_CHECK_NOTFOUND_ID
  else if qryLogIn.Fields[2].AsString <> PW then  //비밀번호 틀림
    Result := LOGIN_CHECK_INCORRECT_PW
  else
    Result := LOGIN_CHECK_OK;
end;

function TServerMethods1.SignedUpCheck(Subject, Student: Integer): Integer;
var
  Msg: string;
begin
  qrySignedUp.Close;
  Msg :=
  'select * from SignedUp where SUBJECT_CODE = :SUBJECT_CODE and STUDENT_CODE = :STUDENT_CODE';
  qrySignedUp.SQL.Text := Msg;
  qrySignedUp.ParamByName('SUBJECT_CODE').AsInteger := Subject;
  qrySignedUp.ParamByName('STUDENT_CODE').AsInteger := Student;
  qrySIgnedUP.Open;

  if qrySignedUp.Fields[0].AsInteger <> Subject then
    Result := SIGNEDUP_CHECK_NO  //등록하지 않은 과목
  else
    Result := SIGNEDUP_CHECK_YES;  //이미 등록한 과목
end;

end.


