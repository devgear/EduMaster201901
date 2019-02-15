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
    SignedUp: TFDQuery;
    Subject_logProvider: TDataSetProvider;
    SignedUpProvider: TDataSetProvider;
    qryLogInProvider: TDataSetProvider;
    qryLogIn: TFDQuery;
    qrySignedUp: TFDQuery;
    SignedUpDropProvider: TDataSetProvider;
    qrySignedUpSearch: TFDQuery;
    SignedUpSearchProvider: TDataSetProvider;
    qryBasketDetail: TFDQuery;
    BasketDetailProvider: TDataSetProvider;
    Subject_Type: TFDTable;
    Subject_TypeProvider: TDataSetProvider;
    qryFindSubject: TFDQuery;
    qryFindUser: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
    function LogInCheck(ID, PW: string): Integer;
    function SignedUpCheck(Subject, Student: string; SignedUpType: Integer): Integer;
    function SignedUpFunc(Subject, Student: string; SignedUpType: Integer): Integer;
    procedure DropFunc(Subject, Student: string; DropType: Integer);
  end;

implementation

{$R *.dfm}

uses System.StrUtils, CommonDefine;

function TServerMethods1.LogInCheck(ID, PW: string): Integer;
var
  Msg: string;
begin
  qryLogIn.Close;
  qryLogIn.ParamByName('STUDENT_CODE').AsString := ID;
  qryLogIn.Open;

  if qryLogIn.Fields[1].AsString <> ID then //등록되지 않은 ID
    Result := LOGIN_CHECK_NOTFOUND_ID
  else if qryLogIn.Fields[2].AsString <> PW then  //비밀번호 틀림
    Result := LOGIN_CHECK_INCORRECT_PW
  else
    Result := LOGIN_CHECK_OK;
end;

function TServerMethods1.SignedUpCheck(Subject, Student: string; SignedUpType: Integer): Integer;
var
  Msg: string;
begin
  qrySignedUp.Close;
  qrySignedUp.ParamByName('SUBJECT_CODE').AsString := Subject;
  qrySignedUp.ParamByName('STUDENT_CODE').AsString := Student;
  qrySignedUp.ParamByName('SIGNEDUP_TYPE').AsInteger := SignedUpType;
  qrySignedUp.Open;

  if qrySignedUp.Fields[0].AsString <> Subject then
    Result := SIGNEDUP_CHECK_NO  //등록하지 않은 과목
  else
    Result := SIGNEDUP_CHECK_YES;  //이미 등록한 과목
end;

function TServerMethods1.SignedUpFunc(Subject, Student: string;
  SignedUpType: Integer): Integer;
begin
  FDConnection1.StartTransaction;

  qryFindSubject.Open;
  qryFindSubject.ParamByName('SUBJECT_CODE').AsString := Subject;
  qryFindSubject.Refresh;

  qryFindUser.Open;
  qryFindUser.ParamByName('STUDENT_CODE').AsString := Student;
  qryFindUser.Refresh;
  try
    if qryFindSubject.FieldByName('CAPACITY').AsInteger <=
    qryFindSubject.FieldByName('STUDENTNUM').AsInteger then
    begin
      Result := 1;
      raise Exception.Create('수강인원초과');
    end;

    if qryFindUser.FieldByName('USER_CREDIT').AsInteger +
    qryFindSubject.FieldByName('CREDIT').AsInteger > CREDIT_LIMIT then
    begin
      Result := 2;
      raise Exception.Create('최대학점초과');
    end;

    Result := 0;

    SignedUp.Open;
    SignedUp.Insert;

    SignedUp.FieldByName('SUBJECT_CODE').AsString := Subject;
    SignedUp.FieldByName('STUDENT_CODE').AsString := Student;
    SignedUp.FieldByName('SIGNEDUP_TYPE').AsInteger := SignedUpType;

    SignedUp.Post;
    {
    qryFindSubject.Close;
    qryFindSubject.Open;

    qryFindSubject.FieldByName('STUDENTNUM').AsInteger :=
    qryFindSubject.FieldByName('STUDENTNUM').AsInteger + 1;

    qryFindSubject.Post;

    qryFindUser.Open;
    qryFindUser.Close;

    qryFindUser.FieldByName('USER_CREDIT').AsInteger :=
    qryFindUser.FieldByName('USER_CREDIT').AsInteger +
    qryFindSubject.FieldByName('CREDIT').AsInteger;

    qryFindUser.Post;
    }

    FDConnection1.Commit;
  except
    FDConnection1.Rollback;
  end;
end;

procedure TServerMethods1.DropFunc(Subject, Student: string;
  DropType: Integer);
begin
  qrySignedUp.Close;
  qrySignedUp.ParamByName('SUBJECT_CODE').AsString := Subject;
  qrySignedUp.ParamByName('STUDENT_CODE').AsString := Student;
  qrySignedUp.ParamByName('SIGNEDUP_TYPE').AsInteger := DropType;

  qrySignedUp.Open;

  qrySignedUp.Delete;
  {
  qryFindSubject.Open;
  qryFindSubject.ParamByName('SUBJECT_CODE').AsString := Subject;

  qryFindUser.Open;
  qryFindUser.ParamByName('STUDENT_CODE').AsString := Student;


  qryFindSubject.FieldByName('STUDENTNUM').AsInteger :=
  qryFindSubject.FieldByName('STUDENTNUM').AsInteger - 1;

  qryFindSubject.Post;

  qryFindUser.FieldByName('USER_CREDIT').AsInteger :=
  qryFindUser.FieldByName('USER_CREDIT').AsInteger -
  qryFindSubject.FieldByName('CREDIT').AsInteger;

  qryFindUser.Post;
  }
end;

end.


