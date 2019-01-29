unit ServerMethodsUnit1;

interface

uses System.SysUtils, System.Classes, System.Json,
    DataSnap.DSProviderDataModuleAdapter,
    Datasnap.DSServer, Datasnap.DSAuth, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.IB,
  FireDAC.Phys.IBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Datasnap.Provider, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Comp.UI;

type
  TServerMethods1 = class(TDSServerModule)
    FDConnection1: TFDConnection;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    tb_DEliveryMan: TFDTable;
    tb_DEliveryManDELI_MAN_SEQ: TIntegerField;
    tb_DEliveryManDELI_MAN_NM: TWideStringField;
    tb_DEliveryManDELI_MAN_SEX: TIntegerField;
    tb_DEliveryManDELI_MAN_AGE: TIntegerField;
    tb_DEliveryManDELI_MAN_PHONE: TWideStringField;
    tb_DEliveryManDELI_MAN_OFFICE: TWideStringField;
    tb_DEliveryManDELI_MAN_ADDR: TWideStringField;
    tb_DEliveryManDELI_MAN_DELICOUNT: TIntegerField;
    tb_DEliveryManDELI_MAN_ST: TWideStringField;
    tb_DEliveryManDELI_MAN_DNTIME: TWideStringField;
    tb_DEliveryManDELI_MAN_DLTIME: TWideStringField;
    tb_DEliveryManDELI_MAN_CMT: TWideStringField;
    dsp_DeliveryMan: TDataSetProvider;
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

