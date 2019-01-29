unit ServerMethodsUnit1;

interface

uses System.SysUtils, System.Classes, System.Json,
    DataSnap.DSProviderDataModuleAdapter,
    Datasnap.DSServer, Datasnap.DSAuth, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.IB,
  FireDAC.Phys.IBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Datasnap.Provider, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Phys.IBBase,
  FireDAC.Comp.UI;


type
  TServerMethods1 = class(TDSServerModule)
    FDConnection1: TFDConnection;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDPhysIBDriverLink1: TFDPhysIBDriverLink;
    Tb_Biz: TFDTable;
    Tb_BizProvider: TDataSetProvider;
    SignUpQuery: TFDQuery;
    Tb_Biz_Info: TFDTable;
    Tb_Biz_InfoProvider: TDataSetProvider;
    Tb_Biz_InfoBIZ_CODE: TIntegerField;
    Tb_Biz_InfoCONTENT: TStringField;
    Tb_Biz_InfoAMENITY: TStringField;
    Tb_Biz_InfoSIG_IMG: TBlobField;
    Tb_Biz_InfoSIG_NAME: TStringField;
    Tb_Biz_InfoIMG_1: TBlobField;
    Tb_Biz_InfoIMG_2: TBlobField;
    Tb_Biz_InfoIMG_3: TBlobField;
    Tb_Biz_InfoIMG_4: TBlobField;
    Tb_Biz_InfoCOUPON: TIntegerField;
    DupChkQuery: TFDQuery;
    SignUpQuery2: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;
    procedure SignUp(Biz_Num, pw, name, addr: string);
    function DupChk(Biz_num: string): Integer;
  end;

implementation


{$R *.dfm}


uses System.StrUtils;

function TServerMethods1.DupChk(Biz_num: string): Integer;
begin
  DupChkQuery.Close;
  DupChkQuery.Params[0].AsString := Biz_Num;
  DupChkQuery.Open;

  Result := DupChkQuery.FieldByName('DUPCNT').AsInteger;
end;

function TServerMethods1.EchoString(Value: string): string;
begin
  Result := Value;
end;

function TServerMethods1.ReverseString(Value: string): string;
begin
  Result := System.StrUtils.ReverseString(Value);
end;

procedure TServerMethods1.SignUp(Biz_Num, pw, name, addr: string);
begin
  SignUpQuery.Close;
  SignUpQuery2.Close;

  SignUpQuery.Params[0].AsString := biz_num;
  SignUpQuery.Params[1].AsString := pw;
  SignUpQuery.Params[2].AsString := name;
  SignUpQuery.Params[3].AsString := addr;


  FDConnection1.StartTransaction;
  try
    SignUpQuery.ExecSQL;
    SignUpQuery2.ExecSQL;
    FDConnection1.Commit;
  except
    FDConnection1.Rollback;
    raise;
  end;

end;

end.

