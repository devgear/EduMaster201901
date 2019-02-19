unit Udatamodule;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.IB,
  FireDAC.Phys.IBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Data.FMTBcd, Data.SqlExpr;

type
  Tudata = class(TDataModule)
    FDConnection1: TFDConnection;
    CUSQUERY: TFDQuery;
    itemquery: TFDQuery;
    rentquery: TFDQuery;
    rent_detquery: TFDQuery;
    fdtRent_detExec: TFDQuery;
    IntegerField1: TIntegerField;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    BlobField1: TBlobField;
    fdtrent_item: TFDTable;
    FDQuery1: TFDQuery;
    fdtRent_det: TFDTable;
    CUSQUERYCUS_NUMBER: TFDAutoIncField;
    CUSQUERYCUS_NAME: TWideStringField;
    CUSQUERYCUS_EMAIL: TWideStringField;
    CUSQUERYCUS_ADRS: TWideStringField;
    CUSQUERYCUS_PHONE: TWideStringField;
    CUSQUERYCUS_NAME1: TWideStringField;
    CUSQUERYCUS_CARNUM: TWideStringField;
    CUSQUERYCUS_BIGO: TWideStringField;
    CUSQUERYCUS_COPY: TBlobField;
    CUSQUERYCUS_CUSNUM: TIntegerField;
    itemqueryITEM_NUMBER: TFDAutoIncField;
    itemqueryITEM_NAME: TWideStringField;
    itemqueryITEM_MAKER: TWideStringField;
    itemqueryITEM_OWNERT: TWideStringField;
    itemqueryITEM_LASTRENT: TWideStringField;
    itemqueryITEM_LASTCUS: TWideStringField;
    itemqueryITEM_BIGO: TWideStringField;
    itemqueryITEM_PHOTO: TBlobField;
    fdtRent_detRENT_RENT_INDEX: TIntegerField;
    fdtRent_detRENT_RENT_NUM: TFDAutoIncField;
    fdtRent_detRENT_RENT_ITEM_NUM: TIntegerField;
    fdtRent_detRENT_RENT_DATE: TDateField;
    fdtRent_detRENT_RENT_LASTDATE: TDateField;
    fdtRent_detRENT_RENT_PHOTO: TBlobField;
    rent_detqueryRENT_RENT_INDEX: TIntegerField;
    rent_detqueryRENT_RENT_NUM: TFDAutoIncField;
    rent_detqueryRENT_RENT_ITEM_NUM: TIntegerField;
    rent_detqueryRENT_RENT_DATE: TDateField;
    rent_detqueryRENT_RENT_LASTDATE: TDateField;
    rent_detqueryRENT_RENT_PHOTO: TBlobField;
    rentqueryRENT_NUM: TFDAutoIncField;
    rentqueryRENT_DATE: TWideStringField;
    rentqueryRENT_PHOTO: TBlobField;
    rentqueryRENT_CUS_NUM: TIntegerField;
    fdtrent_itemRENT_RENT_INDEX: TIntegerField;
    fdtrent_itemRENT_RENT_NUM: TIntegerField;
    fdtrent_itemRENT_RENT_ITEM_NUM: TIntegerField;
    fdtrent_itemRENT_RENT_DATE: TDateField;
    fdtrent_itemRENT_RENT_LASTDATE: TDateField;
    fdtrent_itemRENT_RENT_PHOTO: TBlobField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  udata: Tudata;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
