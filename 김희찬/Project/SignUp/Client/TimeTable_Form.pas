unit TimeTable_Form;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  System.Rtti, FMX.Grid.Style, FMX.Grid, FMX.Controls.Presentation,
  FMX.ScrollBox;

type
  TTimeTableFrm = class(TForm)
    StringGrid1: TStringGrid;
    StringColumn1: TStringColumn;
    Mon: TStringColumn;
    Tue: TStringColumn;
    Wed: TStringColumn;
    Thu: TStringColumn;
    Fri: TStringColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TimeTableFrm: TTimeTableFrm;

implementation

{$R *.fmx}

uses SignedUp_DM, Overall_DM, CommonDefine;

procedure TTimeTableFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := TCloseAction.caFree;
end;

procedure TTimeTableFrm.FormCreate(Sender: TObject);
var
  ShowSignedUpDM3: TSignedUpDM;
  I, J: Integer;
  NowString: string;
  Day: string;
  NowDay: Integer;
begin
  ShowSignedUpDM3 := TSignedUpDM.Create(Self);

  ShowSignedUpDM3.SignedUpSearch.Close;

  ShowSignedUpDM3.SignedUpSearch.ParamByName('STUDENT_CODE').AsString :=
  OverallDM.User_Log.FieldByName('STUDENT_CODE').AsString;
  ShowSignedUpDM3.SignedUpSearch.ParamByName('SIGNEDUP_TYPE').AsInteger :=
  SIGNEDUP_CHECK;

  ShowSignedUpDM3.SignedUpSearch.Open;

  //시간표에 정보 넣기
  Day := ('월화수목금');
  NowDay := -1;
  
  for I := 1 to 9 do
    StringGrid1.Cells[0, I - 1] := IntToStr(I) + '교시';
  
  while not ShowSignedUpDM3.SignedUpSearch.Eof do
  begin
    NowString := ShowSignedUpDM3.SignedUpSearch.FieldByName('TIME').AsString;
    for I := 0 to Length(NowString) - 1 do
    begin
      if NowString[I] = ' ' then
        Continue
      else if CharInSet(NowString[I], ['0'..'9']) then
      begin
        StringGrid1.Cells[NowDay, StrToInt(NowString[I]) - 1] :=
        ShowSignedUpDM3.SignedUpSearch.FieldByName('TITLE').AsString
        + #13#10 + ShowSignedUpDM3.SignedUpSearch.FieldByName('CLASSROOM').AsString;
      end
      else
      begin
        for J := 0 to 4 do
        begin
          if NowString[I] = Day[J] then
            NowDay := J; 
        end;
      end;
    end;
    ShowSignedUpDM3.SignedUpSearch.Next;
  end;
  
end;

end.
