unit Overall_DM;

interface

uses
  System.SysUtils, System.Classes, Data.DBXDataSnap, Data.DBXCommon,
  IPPeerClient, Data.DB, Datasnap.DBClient, Data.SqlExpr,
  Datasnap.DSConnect, Data.FMTBcd;

type
  TOverallDM = class(TDataModule)
    DSProviderConnection1: TDSProviderConnection;
    SQLConnection1: TSQLConnection;
    Major_Subject_Log: TClientDataSet;
    SignedUp: TClientDataSet;
    User_Log: TClientDataSet;
    SignedUpCheck_ServerMethod: TSqlServerMethod;
    SignUpDrop: TClientDataSet;
    Subject_Type: TClientDataSet;
    Liberal_Subject_Log: TClientDataSet;
    Subject_Log: TClientDataSet;
    SignUp_ServerMethod: TSqlServerMethod;
    Drop_ServerMethod: TSqlServerMethod;
    procedure SQLExcuteMethod(SignedUpType: Integer; RequestCheck: Boolean);
    procedure SignUpSubject(Subject, Student: string; SignUpType: Integer);
    procedure DropSubject(Subject, Student: string; DropType: Integer);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OverallDM: TOverallDM;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

uses Client_Form, CommonDefine;

{$R *.dfm}

{ TOverallDM }

procedure TOverallDM.DataModuleCreate(Sender: TObject);
begin
  SQLConnection1.Open;

  SignedUp.Open;
  Major_Subject_Log.Open;
  Liberal_Subject_Log.Open;
end;

procedure TOverallDM.SQLExcuteMethod(SignedUpType: Integer; RequestCheck: Boolean);
begin
  if RequestCheck then
  begin
    SignedUpCheck_ServerMethod.Params[0].AsString :=
    Subject_Log.FieldByName('SUBJECT_CODE').AsString;
    SignedUpCheck_ServerMethod.Params[1].AsString :=
    User_Log.FieldByName('STUDENT_CODE').AsString;
    SignedUpCheck_ServerMethod.Params[2].AsInteger := SignedUpType;

    SignedUpCheck_ServerMethod.ExecuteMethod;
  end
  else
  begin
    SignUpDrop.ParamByName('SUBJECT_CODE').AsString :=
    Subject_Log.FieldByName('SUBJECT_CODE').AsString;
    SignUpDrop.ParamByName('STUDENT_CODE').AsString :=
    User_Log.FieldByName('STUDENT_CODE').AsString;
    SignUpDrop.ParamByName('SIGNEDUP_TYPE').AsInteger := SignedUpType;
  end;
end;

procedure TOverallDM.SignUpSubject(Subject, Student: string; SignUpType: Integer);  //수강신청 and 관심과목 등록
begin
  SignUp_ServerMethod.Params[0].AsString := Subject;
  SignUp_ServerMethod.Params[1].AsString := Student;
  SignUp_ServerMethod.Params[2].AsInteger := SignUpType;

  SignUp_ServerMethod.ExecuteMethod;
end;

procedure TOverallDM.DropSubject(Subject, Student: string; DropType: Integer);  //신청취소 and 관심과목 등록취소
begin
  Drop_ServerMethod.Params[0].AsString := Subject;
  Drop_ServerMethod.Params[1].AsString := Student;
  Drop_ServerMethod.Params[2].AsInteger := DropType;

  Drop_ServerMethod.ExecuteMethod;
end;

end.
