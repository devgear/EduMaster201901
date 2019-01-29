unit Client;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.DBXDataSnap,
  Data.DBXCommon, IPPeerClient, Data.SqlExpr, Datasnap.DBClient, Vcl.Grids,
  Vcl.DBGrids, Datasnap.DSConnect, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask;

type
  TFrmClient = class(TForm)
    DBGrid1: TDBGrid;
    UserInfo: TClientDataSet;
    SQLConnection1: TSQLConnection;
    DSProviderConnection1: TDSProviderConnection;
    UserInfoUSER_SEQ: TIntegerField;
    UserInfoUSER_NAME: TWideStringField;
    UserInfoUSER_SEX: TBooleanField;
    UserInfoUSER_PHONE: TWideStringField;
    UserInfoUSER_BIRTH: TDateField;
    UserInfoUSER_IMAGE: TBlobField;
    UserInfoSource: TDataSource;
    SaveBtn: TButton;
    LoadBtn: TButton;
    InsertBtn: TButton;
    DelBtn: TButton;
    CancelBtn: TButton;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DateTimePicker: TDateTimePicker;
    DBRadioGroup1: TDBRadioGroup;
    ApplyBtn: TButton;
    procedure InsertBtnClick(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure CancelBtnClick(Sender: TObject);
    procedure PostBtnClick(Sender: TObject);
    procedure DateTimePickerCloseUp(Sender: TObject);
    procedure ApplyBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmClient: TFrmClient;

implementation

{$R *.dfm}

procedure TFrmClient.ApplyBtnClick(Sender: TObject);
begin
  UserInfo.ApplyUpdates(-1);
  UserInfo.Refresh;
end;

procedure TFrmClient.CancelBtnClick(Sender: TObject);
begin
  UserInfo.Cancel;
end;

procedure TFrmClient.DateTimePickerCloseUp(Sender: TObject);
var
  Field: TField;
begin
  Field := UserInfo.FieldByName('USER_BIRTH');
  if Field.AsDateTime <> DateTimePicker.Date then
  begin
    if UserInfo.State = dsBrowse then
    begin
      if UserInfo.RecNo > 0 then
        UserInfo.Edit
      else
        UserInfo.Append;
    end;
    //if DateTimePicker.Date = NIL then
   //   Field.Assign(NIL)
    //else
      Field.AsDateTime := DateTimePicker.Date;
  end;
end;

procedure TFrmClient.DelBtnClick(Sender: TObject);
begin
  UserInfo.Delete;
end;

procedure TFrmClient.InsertBtnClick(Sender: TObject);
begin
  UserInfo.Append;
end;

procedure TFrmClient.PostBtnClick(Sender: TObject);
begin
  UserInfo.Post;
  UserInfo.Refresh;
end;

end.
