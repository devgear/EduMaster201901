unit SearchForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls;

type
  TfrmSearch = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Edit1: TEdit;
    DataSource1: TDataSource;
    FDTableEvent: TFDTable;
    FDTablePartner: TFDTable;
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    var SearchResult: string;
  end;

var
  frmSearch: TfrmSearch;

implementation

{$R *.dfm}

uses DataModule;

procedure TfrmSearch.DBGrid1DblClick(Sender: TObject);
begin
  SearchResult := DataSource1.DataSet.FieldByName('name').AsString;
  ModalResult := mrOk;
end;

end.
