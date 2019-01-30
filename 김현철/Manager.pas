unit Manager;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys,
  FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs,
  FireDAC.VCLUI.Wait, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet, Vcl.Grids, Vcl.DBGrids;

type
  TfrmManager = class(TForm)
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    FDTable1: TFDTable;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBNavigator1: TDBNavigator;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    DBCheckBox9: TDBCheckBox;
    DBCheckBox10: TDBCheckBox;
    DBCheckBox11: TDBCheckBox;
    DBCheckBox12: TDBCheckBox;
    DBCheckBox13: TDBCheckBox;
    cbReservation: TCheckBox;
    cbEvent: TCheckBox;
    cbMogaek: TCheckBox;
    cbPartner: TCheckBox;
    cbCalculate: TCheckBox;
    cbHotel: TCheckBox;
    cbSubul: TCheckBox;
    cbCustomer: TCheckBox;
    cbBanking: TCheckBox;
    cbPackage: TCheckBox;
    cbCancel: TCheckBox;
    cbBackup: TCheckBox;
    cbManager: TCheckBox;
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FDTable1AfterScroll(DataSet: TDataSet);
    procedure FDTable1BeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    procedure SetCheckBox(CheckBox: TCheckBox; bool: Integer);
    procedure SetAuthField(CheckBox: TCheckBox; FieldName: string);
  public
    { Public declarations }
  end;

var
  frmManager: TfrmManager;

implementation

{$R *.dfm}

uses DataModule;

procedure TfrmManager.SetCheckBox(CheckBox: TCheckBox; bool: Integer);
begin
  if bool = 1 then
    CheckBox.Checked := True
  else
    CheckBox.Checked := False;
end;

procedure TfrmManager.FDTable1AfterScroll(DataSet: TDataSet);
begin
  with FDTable1 do
  begin
    SetCheckBox(cbReservation,  FieldByname('auth_reservation').AsInteger);
    SetCheckBox(cbEvent,        FieldByname('auth_event').AsInteger);
    SetCheckBox(cbMogaek,       FieldByname('auth_mogaek').AsInteger);
    SetCheckBox(cbPartner,      FieldByname('auth_partner').AsInteger);
    SetCheckBox(cbCalculate,    FieldByname('auth_calculate').AsInteger);
    SetCheckBox(cbHotel,        FieldByname('auth_hotel').AsInteger);
    SetCheckBox(cbSubul,        FieldByname('auth_subul').AsInteger);
    SetCheckBox(cbCustomer,     FieldByname('auth_customer').AsInteger);
    SetCheckBox(cbBanking,      FieldByname('auth_banking').AsInteger);
    SetCheckBox(cbPackage,      FieldByname('auth_package').AsInteger);
    SetCheckBox(cbCancel,       FieldByname('auth_cancel').AsInteger);
    SetCheckBox(cbBackup,       FieldByname('auth_backup').AsInteger);
    SetCheckBox(cbManager,      FieldByname('auth_manager').AsInteger);
  end;
end;

procedure TfrmManager.SetAuthField(CheckBox: TCheckBox; FieldName: string);
begin
  if CheckBox.Checked then
    FDTable1.FieldByName(FieldName).AsInteger := 1
  else
    FDTable1.FieldByName(FieldName).AsInteger := 0;
end;

procedure TfrmManager.FDTable1BeforePost(DataSet: TDataSet);
begin
  with FDTable1 do
  begin
    SetAuthField(cbReservation,  'auth_reservation');
    SetAuthField(cbEvent,        'auth_event');
    SetAuthField(cbMogaek,       'auth_mogaek');
    SetAuthField(cbPartner,      'auth_partner');
    SetAuthField(cbCalculate,    'auth_calculate');
    SetAuthField(cbHotel,        'auth_hotel');
    SetAuthField(cbSubul,        'auth_subul');
    SetAuthField(cbCustomer,     'auth_customer');
    SetAuthField(cbBanking,      'auth_banking');
    SetAuthField(cbPackage,      'auth_package');
    SetAuthField(cbCancel,       'auth_cancel');
    SetAuthField(cbBackup,       'auth_backup');
    SetAuthField(cbManager,      'auth_manager');
  end;

end;

procedure TfrmManager.FormActivate(Sender: TObject);
begin
  DataModule1.FDConnection1.Connected := True;;
  FDTable1.Open;
end;

procedure TfrmManager.FormDeactivate(Sender: TObject);
begin
  FDTable1.Close;
  DataModule1.FDConnection1.Connected := False;
end;

end.
