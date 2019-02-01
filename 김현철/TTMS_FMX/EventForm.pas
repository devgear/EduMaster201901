unit EventForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FMX.ListView, FMX.Controls.Presentation, FMX.StdCtrls,
  System.Rtti, System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope, FireDAC.UI.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs, FireDAC.FMXUI.Wait, FMX.Edit;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    ListView1: TListView;
    FDTable1: TFDTable;
    DataSource1: TDataSource;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkListControlToField1: TLinkListControlToField;
    FDTable1serial: TStringField;
    FDTable1reservation_date: TDateField;
    FDTable1process_date: TDateField;
    FDTable1manager_name: TStringField;
    FDTable1partner_name: TStringField;
    FDTable1event_name: TStringField;
    FDTable1event_start_date: TDateField;
    FDTable1event_end_date: TDateField;
    FDTable1night: TIntegerField;
    FDTable1day: TIntegerField;
    FDTable1customer_name: TStringField;
    FDTable1adult_total: TIntegerField;
    FDTable1child_total: TIntegerField;
    FDTable1phone: TStringField;
    FDTable1mobile: TStringField;
    FDTable1start_time: TDateTimeField;
    FDTable1start_site: TStringField;
    FDTable1local_start_time: TDateTimeField;
    FDTable1local_start_site: TStringField;
    FDTable1hotel_name: TStringField;
    FDTable1room_name: TStringField;
    FDTable1room_number: TIntegerField;
    FDTable1memo: TWideMemoField;
    FDTable1created_at: TSQLTimeStampField;
    FDTable1modified_at: TSQLTimeStampField;
    FDConnection1: TFDConnection;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

uses DataModule;

end.
