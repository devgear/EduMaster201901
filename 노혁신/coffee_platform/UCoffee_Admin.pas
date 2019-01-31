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
  FireDAC.Stan.Intf, FireDAC.Comp.UI, FMX.Objects, FMX.Memo;

type
  TMainForm = class(TForm)
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
    Image1: TImage;
    GroupBox3: TGroupBox;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    GroupBox4: TGroupBox;
    Button3: TButton;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    DataSource1: TDataSource;
    Memo1: TMemo;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkControlToField1: TLinkControlToField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TabControl1Change(Sender: TObject);

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

uses USignIn_Admin, DMAdmin;
var
  dm: TDMAdminAccess;

procedure TMainForm.TabControl1Change(Sender: TObject);
begin
  case TabControl1.TabIndex of
    0: label1.Text := '홈';
    1: label1.Text := '공지';
    2: label1.Text := '예약설정';
    3: label1.Text := '회원관리';
  end;
end;

procedure TMainForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(Client);
  FreeAndNil(dm);
  FreeAndNil(MainForm);
end;

procedure TMainForm.FormCreate(Sender: TObject);
var
  SignForm: TSignForm;
begin
  ShowMessage('BizCode 키 확인중: ' + BizCode.ToString);
  Dm := TDMAdminAccess.Create(application);
  Dm.BizInfoQuery.Close;
  Dm.BizInfoQuery.ParamByName('BIZ_CODE').AsInteger := BizCode;
  Dm.BizInfoQuery.Open;
  memo1.Text := dm.BizInfoQuery.FieldByName('content').Value;


//  SignForm := TSignForm.Create(nil);
//  SignForm.ShowModal(procedure(modalResult: TModalResult)
//                      begin
//                        if ModalResult = mrOk then
//                           //do something
//                      end);
  TabControl1.ActiveTab := TabItem1;

end;

end.
