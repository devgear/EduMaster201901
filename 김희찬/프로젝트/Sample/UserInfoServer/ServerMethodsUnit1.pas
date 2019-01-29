unit ServerMethodsUnit1;

interface

uses System.SysUtils, System.Classes, System.Json,
    DataSnap.DSProviderDataModuleAdapter,
    Datasnap.DSServer, Datasnap.DSAuth, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.IB, FireDAC.Phys.IBDef,
  FireDAC.VCLUI.Wait, Datasnap.Provider, Data.DB, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.UI, FireDAC.Comp.DataSet, FireDAC.Phys.IBBase;

type
  TServerMethods1 = class(TDSServerModule)
    FDConnection1: TFDConnection;
    UserInfoProvider: TDataSetProvider;
    FDPhysIBDriverLink1: TFDPhysIBDriverLink;
    UserInfo: TFDTable;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    UserInfoUSER_SEQ: TIntegerField;
    UserInfoUSER_NAME: TWideStringField;
    UserInfoUSER_SEX: TBooleanField;
    UserInfoUSER_PHONE: TWideStringField;
    UserInfoUSER_BIRTH: TDateField;
    UserInfoUSER_IMAGE: TBlobField;
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

