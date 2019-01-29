unit DataAccessModule1;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.IB,
  FireDAC.Phys.IBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  FireDAC.Phys.IBBase, FireDAC.Comp.UI;

type
  Tdm = class(TDataModule)
    condevice: TFDConnection;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDPhysIBDriverLink1: TFDPhysIBDriverLink;
    tbdevice: TFDTable;
    dsdevice: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm: Tdm;


implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
