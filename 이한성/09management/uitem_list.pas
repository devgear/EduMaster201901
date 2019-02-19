unit uitem_list;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls;

type
  Tfrm_item_list = class(TForm)
    DataSource1: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    CUS_DNAME: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    CUS_DPHONE: TDBEdit;
    btnloadimg: TButton;
    dlgLoadImage: TOpenDialog;
    Image1: TImage;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure btnloadimgClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_item_list: Tfrm_item_list;

implementation

{$R *.dfm}

uses Udatamodule, CommonFunctions;

procedure Tfrm_item_list.btnloadimgClick(Sender: TObject);

var
  Field: TField;
begin
  if dlgLoadImage.Execute then
  begin
    LoadImageFromFile(image1, dlgLoadImage.FileName);

    Field := uData.itemquery.FieldByName('item_photo');
    SaveImageToBlobField(image1, Field as TBlobField);
  end;
end;
procedure Tfrm_item_list.Button1Click(Sender: TObject);
begin
 uDATA.itemquery.append;
 uDATA.itemquery.POST;
end;

procedure Tfrm_item_list.Button2Click(Sender: TObject);
begin
  uDATA.itemquery.insert;
   uDATA.itemquery.POST;
end;

procedure Tfrm_item_list.Button3Click(Sender: TObject);
begin
 UDATA.itemquery.Delete;
  uDATA.itemquery.POST;
end;

end.
