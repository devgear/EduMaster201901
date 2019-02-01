unit UCoffee_Admin;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  Data.DBXDataSnap, Data.DBXCommon, IPPeerClient, Datasnap.DBClient,
  Datasnap.DSConnect, Data.DB, Data.SqlExpr, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Edit, FMX.Layouts, System.Rtti, FMX.Grid.Style,
  Data.Bind.EngExt, Fmx.Bind.DBEngExt, Fmx.Bind.Grid, System.Bindings.Outputs,
  Fmx.Bind.Editors, Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope,
  FMX.ScrollBox, FMX.Grid, FMX.TabControl, FireDAC.UI.Intf, FireDAC.FMXUI.Login,
  FireDAC.Stan.Intf, FireDAC.Comp.UI, FMX.Objects, FMX.Memo, FMX.ListView.Types,
  FMX.ListView.Appearances, FMX.ListView.Adapters.Base, FMX.ListView,
  Data.Bind.GenData, Data.Bind.ObjectScope;

type
  TFrmAdmin = class(TForm)
    Layout1: TLayout;
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    TabItem3: TTabItem;
    TabItem4: TTabItem;
    ToolBar1: TToolBar;
    Label1: TLabel;
    Layout3: TLayout;
    Layout4: TLayout;
    Layout5: TLayout;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    Btn_Save: TButton;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Memo_Intro: TMemo;
    Memo_Sig: TMemo;
    ImgCtl_Sig: TImageControl;
    ImgCtr_1: TImageControl;
    ImgCtr_2: TImageControl;
    ImgCtr_3: TImageControl;
    ImgCtr_4: TImageControl;
    Edt_Notify: TEdit;
    Btn_Save_Notify: TButton;
    ListView1: TListView;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkFillControlToField1: TLinkFillControlToField;
    BindSourceDB2: TBindSourceDB;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField2: TLinkControlToField;
    LinkControlToField3: TLinkControlToField;
    LinkControlToField4: TLinkControlToField;
    LinkControlToField5: TLinkControlToField;
    LinkControlToField6: TLinkControlToField;
    LinkControlToField7: TLinkControlToField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TabControl1Change(Sender: TObject);
    procedure Btn_Save_NotifyClick(Sender: TObject);
    procedure ListView1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAdmin: TFrmAdmin;

implementation

{$R *.fmx}
{$R *.iPhone47in.fmx IOS}
{$R *.LgXhdpiPh.fmx ANDROID}
{$R *.iPhone55in.fmx IOS}
{$R *.iPhone.fmx IOS}
{$R *.LgXhdpiTb.fmx ANDROID}

uses USignIn_Admin, DMAdmin;
var
  dm: TDMAdminAccess;

procedure TFrmAdmin.TabControl1Change(Sender: TObject);
begin
  case TabControl1.TabIndex of
    0: label1.Text := '홈';
    1: label1.Text := '공지';
    2: label1.Text := '예약설정';
    3: label1.Text := '회원관리';
  end;
end;

procedure TFrmAdmin.Btn_Save_NotifyClick(Sender: TObject);
var
  Chk: Boolean;
  Content: string;
  LItem: TListViewItem;
begin
  Content := Edt_Notify.Text;
  if not Content.IsEmpty then
  begin
    Chk := Client.InsertNotify(BizCode, Content);
    case Chk of
      True:
      begin
//        ShowMessage('성공');
        LItem := ListView1.Items.Insert(0);
        LItem.Text := Content;
      end;
      False: ShowMessage('실패');
    end;
  end;
  Edt_Notify.Text := '';

//  var
//  LItem: TListViewItem;
//  I: Integer;
//begin
//  ListView1.BeginUpdate;
//  try
//    for I := 1 to 10 do
//    begin
//      LItem := ListView1.Items.Add;
//      LItem.Text := IntToStr(I);
//    end;
//  finally
//    ListView1.EndUpdate;
//  end;
//end;
end;



procedure TFrmAdmin.FormCreate(Sender: TObject);
begin
//  ShowMessage('BizCode: ' + BizCode.ToString);
  Dm := TDMAdminAccess.Create(application);
  Dm.BizInfoQuery.Close;
  Dm.BizInfoQuery.ParamByName('BIZ_CODE').AsInteger := BizCode;
  Dm.BizInfoQuery.Open;
  Dm.NotifyQuery.Close;
  Dm.NotifyQuery.ParamByName('BIZ_CODE').AsInteger := BizCode;
  Dm.NotifyQuery.Open;

//  Memo_Intro.Text := dm.BizInfoQuery.FieldByName('CONTENT').Value;

// MainForm -> SignForm 띄우려다 문제 발생 시 에러뜨고
// MainForm으로 넘어가는 현상 있어서 변경

//  SignForm := TSignForm.Create(nil);
//  SignForm.ShowModal(procedure(modalResult: TModalResult)
//                      begin
//                        if ModalResult = mrOk then
//                           //do something
//                      end);
  TabControl1.ActiveTab := TabItem1;

end;

procedure TFrmAdmin.ListView1Click(Sender: TObject);
//var
//  LItem: TListViewItem;
begin
//  showmessage(inttostr(ListView1.Selected.Index));
end;

procedure TFrmAdmin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(FrmSignAdmin);
end;

end.
