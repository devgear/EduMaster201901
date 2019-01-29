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
  FMX.ScrollBox, FMX.Grid, FMX.TabControl;

type
  TMainForm = class(TForm)
    Layout1: TLayout;
    SQLConnection1: TSQLConnection;
    DSProviderConnection1: TDSProviderConnection;
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    Label1: TLabel;
    Edit1: TEdit;
    Edit4: TEdit;
    btn_SignUp: TButton;
    btn_SignIn: TButton;
    Label2: TLabel;
    Label3: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    TabItem2: TTabItem;
    Label4: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    btn_reg: TButton;
    btn_back: TButton;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btn_SignInClick(Sender: TObject);
    procedure btn_SignUpClick(Sender: TObject);
    procedure btn_regClick(Sender: TObject);
    procedure btn_backClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.fmx}
{$R *.iPhone47in.fmx IOS}
{$R *.LgXhdpiPh.fmx ANDROID}

uses UAdminClass;
var
  Client: TServerMethods1Client;



procedure TMainForm.btn_backClick(Sender: TObject);
begin
  TabControl1.ActiveTab := TabItem1;
end;

procedure TMainForm.btn_regClick(Sender: TObject);
var
  biz_num, pw, name, addr: string;
begin
  biz_num := Edit5.Text + '-' + Edit6.Text + '-' + Edit7.Text;
  pw := Edit8.Text;
  name := Edit9.Text;
  addr := Edit10.Text;
  Client.SignUp(biz_num, pw, name, addr);
end;

procedure TMainForm.btn_SignInClick(Sender: TObject);
begin
  if (length(Edit1.Text) < 3) or (length(Edit2.Text) < 2) or (length(Edit3.Text) < 5) then
  begin
    ShowMessage('사업자 번호를 입력해 주세요.');
    Edit1.SetFocus;
    Exit;
  end;
  if (Edit4.Text.IsEmpty) then
  begin
    ShowMessage('비밀번호를 입력해 주세요.');
    Edit4.SetFocus;
    Exit;
  end;

  ShowMessage('로그인 구현 중..');
end;

procedure TMainForm.btn_SignUpClick(Sender: TObject);
begin
  TabControl1.ActiveTab := TabItem2;
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  Client := TserverMethods1Client.Create(SQLConnection1.DBXConnection);
end;

end.
