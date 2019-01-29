unit Umain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ToolWin, Vcl.ExtCtrls;

type
  TUmain_form = class(TForm)
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    pnllayout: TPanel;
    procedure ToolButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Umain_form: TUmain_form;

implementation

{$R *.dfm}

uses ucus_list;

procedure TUmain_form.ToolButton1Click(Sender: TObject);
begin
  frm_cus_list:= Tfrm_cus_list.Create(Self);
  frm_cus_list.Parent := pnlLayout;
  frm_cus_list.BorderStyle := bsNone;
  frm_cus_list.Align := alClient;
  frm_cus_list.Show;

end;

end.
