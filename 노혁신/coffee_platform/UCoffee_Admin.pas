unit UCoffee_Admin;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  Data.DBXDataSnap, Data.DBXCommon, IPPeerClient, Data.DB, Data.SqlExpr,
  Datasnap.DBClient, Datasnap.DSConnect, FMX.MultiView,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.TabControl, FMX.Layouts,
  FMX.Objects, FMX.Edit;

type
  TMainForm = class(TForm)
    SQLConnection1: TSQLConnection;
    DSProviderConnection1: TDSProviderConnection;
    Tb_Biz: TClientDataSet;
    Tb_BizSource: TDataSource;
    Tb_BizBIZ_NUM: TStringField;
    Tb_BizPW: TStringField;
    Tb_BizBIZ_CODE: TIntegerField;
    Tb_BizREG_DATE: TSQLTimeStampField;
    Tb_BizNAME: TStringField;
    Tb_BizADDR: TStringField;
    Tb_BizTEL: TStringField;
    ToolBar1: TToolBar;
    MultiView1: TMultiView;
    Layout1: TLayout;
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    TabItem3: TTabItem;
    TabItem4: TTabItem;
    StyleBook1: TStyleBook;
    Label1: TLabel;
    Image1: TImage;
    Text1: TText;
    Text2: TText;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Label2: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    Edit2: TEdit;
    Label4: TLabel;
    Edit3: TEdit;
    Label5: TLabel;
    Edit4: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.fmx}

uses UAdminClass;

procedure TMainForm.Button1Click(Sender: TObject);
var
  biz_code, pw, name, addr: string;
  Client: TServerMethods1Client;
begin
  Client.SignUp(Edit1.Text, Edit2.Text, Edit3.Text, Edit4.Text);
end;

end.
