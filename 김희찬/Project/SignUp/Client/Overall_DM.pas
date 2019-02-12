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
    Subject_Log: TClientDataSet;
    SignedUp: TClientDataSet;
    User_Log: TClientDataSet;
    SignedUpCheck_ServerMethod: TSqlServerMethod;
    SignUpDrop: TClientDataSet;
    procedure SQLExcuteMethod(SignedUpType: Integer);
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

uses Client_Form;

{$R *.dfm}

{ TOverallDM }

procedure TOverallDM.DataModuleCreate(Sender: TObject);
begin
  SignedUp.Open;
  Subject_Log.Open;
end;

procedure TOverallDM.SQLExcuteMethod(SignedUpType: Integer);
begin
  SignedUpCheck_ServerMethod.Close;

  SignedUpCheck_ServerMethod.Params[0].AsString :=
  OverallDM.Subject_Log.FieldByName('SUBJECT_CODE').AsString;
  SignedUpCheck_ServerMethod.Params[1].AsString :=
  OverallDM.User_Log.FieldByName('STUDENT_CODE').AsString;
  SignedUpCheck_ServerMethod.Params[2].AsInteger := SignedUpType;

  SignedUpCheck_ServerMethod.ExecuteMethod;
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
  SQLExcuteMethod(DropType);

  SignUpDrop.Open;
  SignUpDrop.Delete;
  SignUpDrop.ApplyUpdates(-1);
  SignUpDrop.Close;
end;

end.
