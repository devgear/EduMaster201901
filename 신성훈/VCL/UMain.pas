unit UMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls,
  Data.Bind.EngExt, Vcl.Bind.DBEngExt, Vcl.Bind.Grid, System.Rtti,
  System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.Components,
  Data.Bind.Grid, Data.Bind.DBScope;

type
  TMainForm = class(TForm)
    pnlHeader: TPanel;
    pnlContent: TPanel;
    lblCaption: TLabel;
    BtnClose: TButton;
    pnlGrid: TPanel;
    pnlInput: TPanel;
    Splitter1: TSplitter;
    grpUser: TGroupBox;
    GroupBox2: TGroupBox;
    BtnCodeFind: TButton;
    Label2: TLabel;
    EdtID: TDBEdit;
    EdtUserCode: TDBEdit;
    Label3: TLabel;
    EdtPhone: TDBEdit;
    Label4: TLabel;
    GroupBox3: TGroupBox;
    ImgPr: TImage;
    BtnPrFind: TButton;
    Label5: TLabel;
    EdtPrName: TDBEdit;
    Label7: TLabel;
    BtnPrRent: TButton;
    BtnPrNew: TButton;
    BtnPrCancel: TButton;
    Label8: TLabel;
    EdtSchool: TDBEdit;
    EdtPassword: TDBEdit;
    Label9: TLabel;
    EdtPrCode: TDBEdit;
    Label10: TLabel;
    BtnUserNew: TButton;
    BtnUserSave: TButton;
    Label6: TLabel;
    EdtUserName: TDBEdit;
    DBEdit5: TDBEdit;
    Label11: TLabel;
    TabControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    Panel2: TPanel;
    GridPr: TDBGrid;
    Edit1: TEdit;
    Label12: TLabel;
    Edit2: TEdit;
    Label1: TLabel;
    GridUser: TStringGrid;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    MainUserSource: TDataSource;
    BtnPrSave: TButton;
    BtnUserRent: TButton;
    BtnUserDelete: TButton;
    BtnCancel: TButton;
    procedure BtnUserNewClick(Sender: TObject);
    procedure BtnUserSaveClick(Sender: TObject);
    procedure MainUserSourceStateChange(Sender: TObject);
    procedure BtnUserRentClick(Sender: TObject);
    procedure BtnUserDeleteClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  UDataModule;

procedure TMainForm.BtnCancelClick(Sender: TObject);
begin
  DM.UserTable.Cancel;
end;




procedure TMainForm.BtnUserDeleteClick(Sender: TObject);
begin
  DM.UserTable.Delete;         //되감기 기능이 됬으면// Grid상태 변화 시키면안됨
end;





procedure TMainForm.BtnUserNewClick(Sender: TObject);
begin
  DM.UserTable.Append;
  edtusercode.SetFocus;
end;







procedure TMainForm.MainUserSourceStateChange(Sender: TObject);
var
  State : TDataSetState;
begin
  State := dm.UserTable.State;

  BtnUserNew.Enabled := (State = dsBrowse);             // 활성화
  BtnUserDelete.Enabled := (State = dsBrowse);          //

  BtnUserRent.Enabled := (State <> dsBrowse);           //
  BtnUserSave.Enabled := (State <> dsBrowse);           // 비활성화
  BtnCancel.Enabled := (State <> dsBrowse);             //
end;





procedure TMainForm.BtnUserRentClick(Sender: TObject);
begin

  DM.UserTable.Post;               // DBEdit와 Table 정보가 같으면 에러
  DM.UserTable.Refresh;            // 도서대여 259Line 참고
end;






procedure TMainForm.BtnUserSaveClick(Sender: TObject);
begin
//  if EdtUserCode.Text and EdtID.Text and EdtPassword.Text
//          and EdtPhone.Text and EdtSchool.Text and EdtUserName.Text = '' then
//      begin
//        DM.UserTable.Post;
//        DM.UserTable.Refresh;
//      end;                             //신규등록 > 입력없이 > 저장 = 에러


  if EdtUserCode.Text = '' then
  begin
    Showmessage('코드명을 입력세요.');
    EdtUserName.SetFocus;
    Exit
  end;

  if EdtID.Text = '' then
  begin
    Showmessage('아이디을 입력세요.');
    EdtID.SetFocus;
    Exit
  end;

    if EdtPassword.Text = '' then
  begin
    Showmessage('비밀번호을 입력세요.');
    EdtPassword.SetFocus;
    Exit
  end;

  if EdtPhone.Text = '' then
  begin
    Showmessage('연락처을 입력세요.');
    EdtPhone.SetFocus;
    Exit
  end;

  if EdtSchool.Text = '' then
  begin
    Showmessage('학교을 입력세요.');
    EdtSchool.SetFocus;
    Exit
  end;

    if EdtUserName.Text = '' then
  begin
    Showmessage('이름을 입력세요.');
    EdtUserName.SetFocus;
    Exit
  end;

  DM.UserTable.Post;
  DM.UserTable.Refresh;

end;

end.
