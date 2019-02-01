unit uitem_list;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB;

type
  Tfrm_item_list = class(TForm)
    DataSource1: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_item_list: Tfrm_item_list;

implementation

{$R *.dfm}

uses Udatamodule;

end.
