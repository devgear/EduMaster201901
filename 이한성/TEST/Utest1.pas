unit Utest1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.IB,
  FireDAC.Phys.IBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids;

type
  TForm6 = class(TForm)
    FDConnection1: TFDConnection;
    DBGrid1: TDBGrid;
    FDQuery1: TFDQuery;
    DataSource1: TDataSource;
    FDQuery1ITEM_NUMBER: TIntegerField;
    FDQuery1ITEM_NAME: TWideStringField;
    FDQuery1ITEM_MAKER: TWideStringField;
    FDQuery1ITEM_OWNERT: TWideStringField;
    FDQuery1ITEM_LASTRENT: TWideStringField;
    FDQuery1ITEM_LASTCUS: TWideStringField;
    FDQuery1ITEM_BIGO: TWideStringField;
    FDQuery1ITEM_PHOTO: TBlobField;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure DBGrid1Enter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}


procedure TForm6.Button1Click(Sender: TObject);
begin
 fdquery1.Insert;
   fdquery1.Post;
  FDQuery1.Refresh;
end;

procedure TForm6.Button2Click(Sender: TObject);
begin
  fdquery1.Post;
  FDQuery1.Refresh;
end;

procedure TForm6.Button3Click(Sender: TObject);
begin
  fdquery1.Delete;
    fdquery1.Post;
  FDQuery1.Refresh;
end;

procedure TForm6.Button4Click(Sender: TObject);
begin
  fdquery1.Append;
  fdquery1.Post;
  FDQuery1.Refresh;

end;

procedure TForm6.DBGrid1Enter(Sender: TObject);
begin

//fdquery1.Append;

end;

procedure TForm6.Edit1Change(Sender: TObject);
begin
  fdquery1.IndexFieldNames := 'Item_name';
  fdquery1.findnearest([edit1.Text]);

end;

procedure TForm6.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action := cafree;
end;

end.


