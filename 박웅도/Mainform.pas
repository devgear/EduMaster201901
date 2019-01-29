unit Mainform;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.ImageList, Vcl.ImgList, Vcl.ComCtrls,
  Vcl.ExtCtrls, Vcl.ToolWin;

type
  TForm4 = class(TForm)
    ToolBar1: TToolBar;
    pnlayout: TPanel;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ImageList1: TImageList;
    procedure ToolButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

uses idform;

procedure TForm4.ToolButton2Click(Sender: TObject);
begin
 if not Assigned(formid) then
  formid:=Tformid.Create(self);
  formid.Parent:=pnLayout;
  formid.Align:=alclient;
  formid.Show;
end;

end.
