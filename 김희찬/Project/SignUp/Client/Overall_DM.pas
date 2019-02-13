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
    procedure SQLExcuteMethod(SignedUpType: Integer; RequestCheck: Boolean);
    procedure SignUpSubject(SignUpType: Integer);
    procedure DropSubject(DropType: Integer);
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
  SignedUp.Open;
  Major_Subject_Log.Open;
  Liberal_Subject_Log.Open;
end;

procedure TOverallDM.SQLExcuteMethod(SignedUpType: Integer; RequestCheck: Boolean);
begin
  if RequestCheck then
  begin
    SignedUpCheck_ServerMethod.Close;

    SignedUpCheck_ServerMethod.Params[0].AsString :=
    Subject_Log.FieldByName('SUBJECT_CODE').AsString;
    SignedUpCheck_ServerMethod.Params[1].AsString :=
    User_Log.FieldByName('STUDENT_CODE').AsString;
    SignedUpCheck_ServerMethod.Params[2].AsInteger := SignedUpType;

    SignedUpCheck_ServerMethod.ExecuteMethod;
  end
  else
  begin
  {
    if Now_Subject_Type = MAJOR_SUBJECT then
      SignUpDrop.ParamByName('SUBJECT_CODE').AsString :=
      Major_Subject_Log.FieldByName('SUBJECT_CODE').AsString
    else
      SignUpDrop.ParamByName('SUBJECT_CODE').AsString :=
      Liberal_Subject_Log.FieldByName('SUBJECT_CODE').AsString;
      }
    SignUpDrop.ParamByName('SUBJECT_CODE').AsString :=
    Subject_Log.FieldByName('SUBJECT_CODE').AsString;
    SignUpDrop.ParamByName('STUDENT_CODE').AsString :=
    User_Log.FieldByName('STUDENT_CODE').AsString;
    SignUpDrop.ParamByName('SIGNEDUP_TYPE').AsInteger := SignedUpType;
  end;
end;

procedure TOverallDM.SignUpSubject(SignUpType: Integer);  //수강신청 and 관심과목 등록
begin
  SignedUp.Insert;

  SignedUp.FieldByName('SUBJECT_CODE').AsString :=
  Subject_Log.FieldByName('SUBJECT_CODE').AsString;
  SignedUp.FieldByName('STUDENT_CODE').AsString :=
  User_Log.FieldByName('STUDENT_CODE').AsString;
  SignedUp.FieldByName('SIGNEDUP_TYPE').AsInteger := SignUpType;

  SignedUp.ApplyUpdates(-1);
end;

procedure TOverallDM.DropSubject(DropType: Integer);  //신청취소 and 관심과목 등록취소
begin
  SQLExcuteMethod(DropType, False);

  SignUpDrop.Open;
  SignUpDrop.Delete;
  SignUpDrop.ApplyUpdates(-1);
  SignUpDrop.Close;
end;

end.
