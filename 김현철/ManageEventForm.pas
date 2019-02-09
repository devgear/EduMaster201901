unit ManageEventForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids,
  Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask;

type
  TfrmManageEvent = class(TForm)
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    FDTable1: TFDTable;
    DataSource1: TDataSource;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmManageEvent: TfrmManageEvent;

implementation

{$R *.dfm}

uses DataModule;

procedure TfrmManageEvent.FormActivate(Sender: TObject);
begin
  FDTable1.Open;
end;

procedure TfrmManageEvent.FormDeactivate(Sender: TObject);
begin
  FDTable1.Close;
end;

end.
