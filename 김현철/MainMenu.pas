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
  TForm1 = class(TForm)
    Button1: TButton;
    edtPass: TEdit;
    Label1: TLabel;
    btnPass: TButton;
    FDQuery1: TFDQuery;
    FDConnection1: TFDConnection;
    procedure Button1Click(Sender: TObject);
    procedure btnPassClick(Sender: TObject);
    procedure edtPassExit(Sender: TObject);
    procedure edtPassKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses EventManager, Manager;

procedure TForm1.Button1Click(Sender: TObject);
begin
  frmEvent.Show;
end;

procedure TForm1.btnPassClick(Sender: TObject);
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
        Button1.Enabled := True;
      end;
    end;
end;

procedure TForm1.edtPassExit(Sender: TObject);
begin
  ShowMessage('leave');
end;

procedure TForm1.edtPassKeyPress(Sender: TObject; var Key: Char);
begin
  if ord(Key) = VK_RETURN then
  begin
    Key := #0; // prevent beeping
  end;
end;

end.
