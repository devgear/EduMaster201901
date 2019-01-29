unit UMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls;

type
  TMainForm = class(TForm)
    pnlHeader: TPanel;
    pnlContent: TPanel;
    lblCaption: TLabel;
    btnClose: TButton;
    pnlGrid: TPanel;
    pnlInput: TPanel;
    Splitter1: TSplitter;
    grpUser: TGroupBox;
    GroupBox2: TGroupBox;
    btnFindUser: TButton;
    Label2: TLabel;
    edtUserName: TDBEdit;
    edtUserBirth: TDBEdit;
    Label3: TLabel;
    edtUserPhone: TDBEdit;
    Label4: TLabel;
    GroupBox3: TGroupBox;
    imgBook: TImage;
    btnFindBook: TButton;
    Label5: TLabel;
    edtBookTitle: TDBEdit;
    Label7: TLabel;
    btnRent: TButton;
    btnReturn: TButton;
    btnCancel: TButton;
    Label8: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label9: TLabel;
    DBEdit3: TDBEdit;
    Label10: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label11: TLabel;
    TabControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    Panel2: TPanel;
    grdList: TDBGrid;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Label12: TLabel;
    Edit2: TEdit;
    Label1: TLabel;
//    procedure dsRentUserDataChange(Sender: TObject; Field: TField);
//    procedure dsRentBookDataChange(Sender: TObject; Field: TField);
    procedure btnFindUserClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnFindBookClick(Sender: TObject);
    procedure dsRentStateChange(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnRentClick(Sender: TObject);
    procedure btnReturnClick(Sender: TObject);
    procedure edtSearchKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure chkSearchBookClick(Sender: TObject);
    procedure chkSearchProductClick(Sender: TObject);
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

end.
