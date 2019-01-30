unit LogIn_Form;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.StdCtrls, FMX.Controls.Presentation, FMX.Edit, Data.DB,
  Datasnap.DBClient, System.Actions, FMX.ActnList, FMX.StdActns, LogIn_DM;

type
  TLogInFrm = class(TForm)
    IDEdit: TEdit;
    PWEdit: TEdit;
    LogInBtn: TButton;
    procedure LogInBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LogInFrm: TLogInFrm;

  ShowLogInDM: TLogInDM;

implementation

{$R *.fmx}

procedure TLogInFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ShowLogInDM.Free;
  Action := TCloseAction.caFree;
end;

procedure TLogInFrm.FormCreate(Sender: TObject);
begin
  ShowLogInDM := TLogInDM.Create(LogInFrm);
  //ShowLogInDM.
end;

procedure TLogInFrm.LogInBtnClick(Sender: TObject);
begin
  LogInDM.User_Log.First;
  while not LogInDM.User_Log.Eof do
  begin
    if IntToStr(LogInDM.User_Log.FieldByName('STUDENT_CODE').Value) = IDEdit.Text then
    begin
      if LogInDM.User_Log.FieldByName('PASSWORD').Value = PWEdit.Text then
      begin
        close;
        Exit;
      end
      else
      begin
        ShowMessage('비밀번호가 틀립니다.');
        Exit;
      end;
    end;
    LogInDM.User_Log.Next;
  end;
  ShowMessage('등록되지 않은 학번(ID)입니다.');
end;

end.
