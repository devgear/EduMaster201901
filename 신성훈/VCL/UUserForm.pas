unit UUserForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.DBCtrls, Vcl.WinXCalendars, Vcl.Mask, Vcl.Grids, Vcl.DBGrids;

type
  TfrmUser = class(TForm)
    pnlHeader: TPanel;
    pnlContent: TPanel;
    lblCaption: TLabel;
    btnClose: TButton;
    pnlGrid: TPanel;
    pnlInput: TPanel;
    Splitter1: TSplitter;
    pnlGridHeader: TPanel;
    Label1: TLabel;
    edtSearch: TEdit;
    Label4: TLabel;
    edtPhone: TDBEdit;
    Label5: TLabel;
    edtMail: TDBEdit;
    btnClearImage: TButton;
    btnLoadImage: TButton;
    btnDelete: TButton;
    btnSave: TButton;
    btnCancel: TButton;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    Label6: TLabel;
    edtName: TDBEdit;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    Label7: TLabel;
    btnAdd: TButton;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    procedure btnAddClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    function DuplicatedUser: Boolean;
    // Ctrl + Shift + C : 선언부 선언 후 구현부 자동 생성
  public
    { Public declarations }
  end;

var
  frmUser: TfrmUser;

implementation

{$R *.dfm}

uses
  UDataModule;

{ TfrmUser }

procedure TfrmUser.btnAddClick(Sender: TObject);
begin
  DM.UserQuery.Append;

end;



function TfrmUser.DuplicatedUser: Boolean;
begin

end;

procedure TfrmUser.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmUser.Free;
end;

end.
