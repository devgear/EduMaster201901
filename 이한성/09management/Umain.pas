unit Umain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ToolWin, Vcl.ExtCtrls,
  Vcl.Buttons, System.ImageList, Vcl.ImgList, Vcl.DBCtrls;

type
  TUmain_form = class(TForm)
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton7: TToolButton;
    pnllayout: TPanel;
    ImageList1: TImageList;
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Umain_form: TUmain_form;

implementation

{$R *.dfm}

uses ucus_list, itemquery, Urent;

procedure TUmain_form.ToolButton1Click(Sender: TObject);
begin
  frm_cus_list := Tfrm_cus_list.Create(Self);
  frm_cus_list.Parent := pnllayout;
  frm_cus_list.BorderStyle := bsNone;
  frm_cus_list.Align := alClient;
  frm_cus_list.Show;

end;

procedure TUmain_form.ToolButton2Click(Sender: TObject);
begin
  frm_itemquery := Tfrm_itemquery.Create(self);
  frm_itemquery.Parent := pnllayout;
  frm_itemquery.BorderStyle := bsnone;
  frm_itemquery.Align := alClient;
  frm_itemquery.show;
end;

procedure TUmain_form.ToolButton4Click(Sender: TObject);
begin
  Frm_Rent := TFrm_Rent.Create(self);
  Frm_Rent.Parent := pnllayout;
  Frm_Rent.BorderStyle := bsNone;
  Frm_Rent.Align := alClient;
  Frm_Rent.Show;
end;

end.
