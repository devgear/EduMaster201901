unit MainMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs,
  FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ExtCtrls;

type
  TMenu = class(TForm)
    edtPass: TEdit;
    Label1: TLabel;
    btnPass: TButton;
    FDQuery1: TFDQuery;
    FDConnection1: TFDConnection;
    Panel1: TPanel;
    btnReservation: TButton;
    btnEvent: TButton;
    btnManager: TButton;
    btnMogaek: TButton;
    btnPartner: TButton;
    btnCalculate: TButton;
    btnHotel: TButton;
    btnSubul: TButton;
    btnCustomer: TButton;
    btnBanking: TButton;
    btnPackage: TButton;
    btnCancel: TButton;
    btnBackup: TButton;
    procedure btnReservationClick(Sender: TObject);
    procedure edtPassKeyPress(Sender: TObject; var Key: Char);
    procedure btnManagerClick(Sender: TObject);
  private
    { Private declarations }
    procedure SetButton(Button: TButton; Bool: Integer);
    procedure SetAllButton;
  public
    { Public declarations }
  end;

var
  Menu: TMenu;

implementation

{$R *.dfm}

uses EventManager, Manager;

procedure TMenu.SetButton(Button: TButton; Bool: Integer);
begin
  if Bool = 1 then
    Button.Enabled := True
  else
    Button.Enabled := False;
end;

procedure TMenu.SetAllButton;
begin
    with FDQuery1 do
    begin
      Close;
      ParamByName('pass').AsString := edtPass.Text;
      Open;

      if FieldByName('name').AsString = '' then
      begin
        ShowMessage('일치하는 사용자가 없습니다');
        Exit
      end
      else begin
        SetButton(btnReservation, FieldByName('auth_reservation').AsInteger);
        SetButton(btnEvent,       FieldByName('auth_event').AsInteger);
        SetButton(btnMogaek,      FieldByName('auth_mogaek').AsInteger);
        SetButton(btnPartner,     FieldByName('auth_partner').AsInteger);
        SetButton(btnCalculate,   FieldByName('auth_calculate').AsInteger);
        SetButton(btnHotel,       FieldByName('auth_hotel').AsInteger);
        SetButton(btnSubul,       FieldByName('auth_subul').AsInteger);
        SetButton(btnCustomer,    FieldByName('auth_customer').AsInteger);
        SetButton(btnBanking,     FieldByName('auth_banking').AsInteger);
        SetButton(btnPackage,     FieldByName('auth_package').AsInteger);
        SetButton(btnCancel,      FieldByName('auth_cancel').AsInteger);
        SetButton(btnBackup,      FieldByName('auth_backup').AsInteger);
        SetButton(btnManager,     FieldByName('auth_manager').AsInteger);
      end;
    end;
end;

procedure TMenu.btnReservationClick(Sender: TObject);
begin
  frmEvent.Show;
end;

procedure TMenu.btnManagerClick(Sender: TObject);
begin
  frmManager.Show;
end;

procedure TMenu.edtPassKeyPress(Sender: TObject; var Key: Char);
begin
  if ord(Key) = VK_RETURN then
  begin
    Key := #0; // prevent beeping
    SetAllButton;
  end;
end;

end.
