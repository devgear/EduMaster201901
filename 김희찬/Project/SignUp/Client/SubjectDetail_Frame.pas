unit SubjectDetail_Frame;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Objects, FMX.Layouts, FMX.TreeView,
  FMX.Edit, Data.DB, Datasnap.DBClient, System.Rtti,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, FMX.ListView.Types,
  FMX.ListView.Appearances, FMX.ListView.Adapters.Base, Data.Bind.DBScope,
  FMX.ListView;

type
  TSubjectDetailFrame = class(TFrame)
    S: TRectangle;
    Panel1: TPanel;
    Edit1: TEdit;
    Edit2: TEdit;
    RequestBtn: TButton;
    BindingsList1: TBindingsList;
    BindSourceDB2: TBindSourceDB;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField2: TLinkControlToField;
    BasketCheck: TCheckBox;
    procedure SClick(Sender: TObject);
    procedure SignUpBtnClick(Sender: TObject);
    procedure DropBtnClick(Sender: TObject);
    procedure BasketCheckChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.fmx}

uses Overall_DM, ConfirmCheck_Frame;

procedure TSubjectDetailFrame.SClick(Sender: TObject);
begin
  Destroy;
end;

procedure TSubjectDetailFrame.SignUpBtnClick(Sender: TObject);  //수강신청 버튼
var
  ShowCCFrame: TConfirmCheckFrame;
begin
  ShowCCFrame := TConfirmCheckFrame.Create(Self);
  ShowCCFrame.Parent := Self;

  ShowCCFrame.ConfirmBtn.OnClick := ShowCCFrame.SignUpConfirmBtnClick;

  ShowCCFrame.Label1.Text :=
  Format('"%s"' + #13#10 + '수강신청 하시겠습니까?', [OverallDM.Subject_Log.FieldByName('TITLE').AsString]);
end;

procedure TSubjectDetailFrame.DropBtnClick(Sender: TObject);  //신청취소 버튼
var
  ShowCCFrame: TConfirmCheckFrame;
begin
  ShowCCFrame := TConfirmCheckFrame.Create(Self);
  ShowCCFrame.Parent := Self;

  ShowCCFrame.ConfirmBtn.OnClick := ShowCCFrame.DropConfirmClick;

  ShowCCFrame.Label1.Text :=
  Format('"%s"' + #13#10 + '수강취소 하시겠습니까?', [OverallDM.Subject_Log.FieldByName('TITLE').AsString]);
end;

procedure TSubjectDetailFrame.BasketCheckChange(Sender: TObject);
begin
  if BasketCheck.IsChecked then //관심과목 등록
  begin
        {
      OverallDM.Basket.Insert;
          OverallDM.Basket.FieldByName('SUBJECT_CODE').AsInteger :=
          OverallDM.Subject_Log.FieldByName('SUBJECT_CODE').AsInteger;
          OverallDM.Basket.FieldByName('STUDENT_CODE').AsInteger :=
          OverallDM.User_Log.FieldByName('STUDENT_CODE').AsInteger;
    }


  end
  else  //관심과목 등록 취소
  begin

  end;
end;

end.
