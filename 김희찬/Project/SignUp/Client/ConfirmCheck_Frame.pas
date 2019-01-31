unit ConfirmCheck_Frame;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Objects, Data.DB, Datasnap.DBClient,
  Data.FMTBcd, Data.SqlExpr;

type
  TConfirmCheckFrame = class(TFrame)
    Rectangle1: TRectangle;
    Panel1: TPanel;
    ConfirmBtn: TButton;
    CancelBtn: TButton;
    SignUpDrop: TClientDataSet;
    procedure Rectangle1Click(Sender: TObject);
    procedure SignUpConfirmBtnClick(Sender: TObject);
    procedure DropConfirmClick(Sender: TObject);
    procedure CancelBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.fmx}

uses Overall_DM;

procedure TConfirmCheckFrame.CancelBtnClick(Sender: TObject); //취소
begin
  Destroy;
end;

procedure TConfirmCheckFrame.SignUpConfirmBtnClick(Sender: TObject);  //수강신청 확인 핸들러
begin
  OverallDM.SignedUp.Insert;
  OverallDM.SignedUp.FieldByName('SUBJECT_CODE').AsInteger :=
  OverallDM.Subject_Log.FieldByName('SUBJECT_CODE').AsInteger;
  OverallDM.SignedUp.FieldByName('STUDENT_CODE').AsInteger :=
  OverallDM.User_Log.FieldByName('STUDENT_CODE').AsInteger;
  OverallDM.SignedUp.ApplyUpdates(-1);

  //ShowSubjectDetail.RequestBtn.Text := '수강취소';
  //ShowSubjectDetail.RequestBtn.OnClick := ShowSubjectDetail.DropBtnClick;

  Destroy;
end;

procedure TConfirmCheckFrame.DropConfirmClick(Sender: TObject); //신청취소 확인 핸들러
begin
  SignUpDrop.Open;
  SignUpDrop.Delete;
  SignUpDrop.ApplyUpdates(-1);

  //ShowSubjectDetail.RequestBtn.Text := '수강신청';
  //ShowSubjectDetail.RequestBtn.OnClick := ShowSubjectDetail.SignUpBtnClick;

  Destroy;
end;

procedure TConfirmCheckFrame.Rectangle1Click(Sender: TObject);
begin
  Destroy;
end;

end.
