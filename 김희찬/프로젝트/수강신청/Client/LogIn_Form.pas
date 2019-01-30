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

  TempLogInDM: TLogInDM;

implementation

{$R *.fmx}

procedure TLogInFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  TempLogInDM.Free;
  Action := TCloseAction.caFree;
end;

procedure TLogInFrm.FormCreate(Sender: TObject);
begin
  TempLogInDM := TLogInDM.Create(LogInFrm);
end;

procedure TLogInFrm.LogInBtnClick(Sender: TObject);
begin
  TempLogInDM.User_Log.Open;
  TempLogInDM.User_Log.First;
  while not TempLogInDM.User_Log.Eof do
  begin
    if IntToStr(TempLogInDM.User_Log.FieldByName('STUDENT_CODE').Value) = IDEdit.Text then
    begin
      if TempLogInDM.User_Log.FieldByName('PASSWORD').Value = PWEdit.Text then
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
    TempLogInDM.User_Log.Next;
  end;
  ShowMessage('등록되지 않은 학번(ID)입니다.');
end;

end.
