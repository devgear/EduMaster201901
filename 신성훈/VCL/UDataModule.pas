unit UDataModule;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.IB,
  FireDAC.Phys.IBDef, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.VCLUI.Wait, FireDAC.Comp.UI, FireDAC.Phys.IBBase,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDM = class(TDataModule)
    FDPhysIBDriverLink1: TFDPhysIBDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDConnection1: TFDConnection;
    UserTable: TFDTable;
    UserSource: TDataSource;
    UserQuery: TFDQuery;
    UserTableUSERCODE: TWideStringField;
    UserTableSCHOOL: TWideStringField;
    UserTablePHONE: TWideStringField;
    UserTableID: TWideStringField;
    UserTablePASSWORD: TWideStringField;
    UserTableNAME: TWideStringField;
    ProductTable: TFDTable;
    ProductSource: TDataSource;
    ProductTableCODE: TWideStringField;
    ProductTableEXPLANATION: TWideStringField;
    ProductTableNAME: TWideStringField;
    UserQueryUSERCODE: TWideStringField;
    UserQuerySCHOOL: TWideStringField;
    UserQueryPHONE: TWideStringField;
    UserQueryID: TWideStringField;
    UserQueryPW: TWideStringField;
    UserQueryNAME: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}


end.
