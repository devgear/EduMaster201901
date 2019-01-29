unit ServerMethods;

interface

uses System.SysUtils, System.Classes, System.Json,
    DataSnap.DSProviderDataModuleAdapter,
    Datasnap.DSServer, Datasnap.DSAuth, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.Phys.IBDef, FireDAC.VCLUI.Wait, FireDAC.Comp.UI,
  FireDAC.Phys.IBBase, FireDAC.Phys.IB, Data.DB, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  Datasnap.Provider, FireDAC.Comp.DataSet;

type
  TServerMethods1 = class(TDSServerModule)
    FDConnection: TFDConnection;
    FDGUIxWaitCursor: TFDGUIxWaitCursor;
    FDPhysFBDriverLink: TFDPhysFBDriverLink;
    tqEmpPrgUseInq: TFDQuery;
    dspEmpPrgUseInq: TDataSetProvider;
    tqCust: TFDQuery;
    dspCust: TDataSetProvider;
    tqItem: TFDQuery;
    dspItem: TDataSetProvider;
    tqLItem: TFDQuery;
    dspLItem: TDataSetProvider;
    tqEst: TFDQuery;
    dspEst: TDataSetProvider;
    tqEstD: TFDQuery;
    dspEstD: TDataSetProvider;
    tqGlobalCCInq: TFDQuery;
    dspGlobalCCInq: TDataSetProvider;
    tqGlobalCCInqG_CLASS: TWideStringField;
    tqGlobalCCInqG_CODE: TWideStringField;
    tqGlobalCCInqG_NAME: TWideStringField;
    tqGlobalCCInqG_PARAM1: TWideStringField;
    tqGlobalCCInqG_YN: TWideStringField;
    tqGlobalCCInqG_PARAM2: TWideStringField;
    tqGlobalCCInqG_NAME2: TWideStringField;
    tqGlobalCCInqG_DEALNO: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;
  end;

implementation


{$R *.dfm}


uses System.StrUtils;

function TServerMethods1.EchoString(Value: string): string;
begin
  Result := Value;
end;

function TServerMethods1.ReverseString(Value: string): string;
begin
  Result := System.StrUtils.ReverseString(Value);
end;

end.

