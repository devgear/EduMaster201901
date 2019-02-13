unit SignUp_Form;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.StdCtrls, FMX.Controls.Presentation, FMX.ListBox, FMX.TabControl,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  FMX.ListView, System.Rtti, System.Bindings.Outputs, Fmx.Bind.Editors,
  Data.Bind.EngExt, Fmx.Bind.DBEngExt, Data.Bind.Components,
  Data.Bind.DBScope, Data.FMTBcd, Data.DB, Data.SqlExpr, Datasnap.DBClient;

type
  TSignUpFrm = class(TForm)
    Panel1: TPanel;
    TabControl1: TTabControl;
    MajorTab: TTabItem;
    LiberalTab: TTabItem;
    ToolBar1: TToolBar;
    MajorComboBox: TComboBox;
    GradeComboBox: TComboBox;
    ListView1: TListView;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkListControlToField1: TLinkListControlToField;
    procedure ListView1ItemClick(const Sender: TObject;
      const AItem: TListViewItem);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ComboBoxChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SignUpFrm: TSignUpFrm;

implementation

{$R *.fmx}

uses Overall_DM, SubjectDetail_Frame, CommonDefine;

procedure TSignUpFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := TCloseAction.caFree;
end;

procedure TSignUpFrm.FormCreate(Sender: TObject);
begin
  OverallDM.Subject_Type.Open;
  OverallDM.Subject_Type.First; //SEQ_SUBJECT_TYPE = 0, NAME_SUBJECT_TYPE = 교양
  OverallDM.Subject_Type.Next;
  while not OverallDM.Subject_Type.Eof do //첫번째 Record를 제외하고 추가
  begin
    MajorComboBox.Items.AddObject(OverallDM.Subject_Type.FieldByName('NAME_SUBJECT_TYPE').AsString, NIL);
    OverallDM.Subject_Type.Next;
  end;
  MajorComboBox.ItemIndex := 1;
  GradeComboBox.ItemIndex := 0;
end;

procedure TSignUpFrm.ListView1ItemClick(const Sender: TObject;
  const AItem: TListViewItem);
var
  ShowSubjectDetail: TSubjectDetailFrame;
begin
  ShowSubjectDetail := TSubjectDetailFrame.Create(Self);
  ShowSubjectDetail.Parent := Self;

  OverallDM.SQLExcuteMethod(SIGNEDUP_CHECK);  //수강신청 상태
  case OverallDM.SignedUpCheck_ServerMethod.Params[3].AsInteger of
    SIGNEDUP_CHECK_NO:  //등록하지 않은 과목
    begin
      ShowSubjectDetail.RequestBtn.Text := '수강신청';
      ShowSubjectDetail.RequestBtn.OnClick := ShowSubjectDetail.SignUpBtnClick;
    end;
    SIGNEDUP_CHECK_YES: //이미 등록한 과1목
    begin
      ShowSubjectDetail.RequestBtn.Text := '수강취소';
      ShowSubjectDetail.RequestBtn.OnClick := ShowSubjectDetail.DropBtnClick;
    end;
  end;

  OverallDM.SQLExcuteMethod(BASKET_CHECK);
  case OverallDM.SignedUpCheck_ServerMethod.Params[3].AsInteger of
    SIGNEDUP_CHECK_NO: ShowSubjectDetail.BasketCheck.IsChecked := False;  //관심과목이 아닌 과목
    SIGNEDUP_CHECK_YES: ShowSubjectDetail.BasketCheck.IsChecked := True;  //관심과목인 과목
  end;
end;

procedure TSignUpFrm.ComboBoxChange(Sender: TObject);
begin
  OverallDM.Subject_Log.Close;
  OverallDM.Subject_Log.ParamByName('SEQ_SUBJECT_TYPE').AsInteger :=
  MajorComboBox.Selected.Index;
  OverallDM.Subject_Log.ParamByName('GRADE').AsInteger :=
  GradeComboBox.Selected.Index + 1;
  OverallDM.Subject_Log.Open;
end;

end.
