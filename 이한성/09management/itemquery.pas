unit itemquery;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.DBCtrls, Vcl.ExtCtrls;

type
  Tfrm_itemquery = class(TForm)
    DBGrid1: TDBGrid;
    label1: TLabel;
    Edit1: TEdit;
    chk1: TCheckBox;
    chk2: TCheckBox;
    btnclose: TButton;
    itemsource: TDataSource;
    Button1: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btncloseClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_itemquery: Tfrm_itemquery;

implementation

{$R *.dfm}

uses Udatamodule, uitem_list, CommonFunctions;

procedure Tfrm_itemquery.btncloseClick(Sender: TObject);
begin
 // frm_itemquery.Free;
 //frm_itemquery.Close;



end;

procedure Tfrm_itemquery.Button1Click(Sender: TObject);
begin
  frm_item_list := Tfrm_item_list.Create(self);
frm_item_list.Show;


end;





procedure Tfrm_itemquery.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;

end;

end.
