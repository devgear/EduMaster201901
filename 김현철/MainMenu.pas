unit MainMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs,
  FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TMenu = class(TForm)
    btnEvent: TButton;
    edtPass: TEdit;
    Label1: TLabel;
    btnPass: TButton;
    FDQuery1: TFDQuery;
    FDConnection1: TFDConnection;
    btnManager: TButton;
    procedure btnEventClick(Sender: TObject);
    procedure btnPassClick(Sender: TObject);
    procedure edtPassExit(Sender: TObject);
    procedure edtPassKeyPress(Sender: TObject; var Key: Char);
    procedure btnManagerClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Menu: TMenu;

implementation

{$R *.dfm}

uses EventManager, Manager;

procedure TMenu.btnEventClick(Sender: TObject);
begin
  frmEvent.Show;
end;

procedure TMenu.btnManagerClick(Sender: TObject);
begin
  frmManager.Show;
end;

procedure TMenu.btnPassClick(Sender: TObject);
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
        btnEvent.Enabled := True;
        btnManager.Enabled := True;
      end;
    end;
end;

procedure TMenu.edtPassExit(Sender: TObject);
begin
  ShowMessage('leave');
end;

procedure TMenu.edtPassKeyPress(Sender: TObject; var Key: Char);
begin
  if ord(Key) = VK_RETURN then
  begin
    Key := #0; // prevent beeping
  end;
end;

end.
