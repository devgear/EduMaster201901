unit EventManager;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, Vcl.ExtCtrls, Vcl.DBCtrls, Data.Bind.Components,
  Data.Bind.DBScope, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Mask, Vcl.ComCtrls, Vcl.WinXPickers,
  Vcl.WinXCalendars;

type
  TfrmEvent = class(TForm)
    DataSource1: TDataSource;
    FDTable1: TFDTable;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    DBEdit1: TDBEdit;
    DBText1: TDBText;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    DBTextReservationDate: TDBText;
    DBTextProcessDate: TDBText;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    CalendarPicker1: TCalendarPicker;
    DatePicker1: TDatePicker;
    DBEdit5: TDBEdit;
    Label18: TLabel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    Label19: TLabel;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DateTimePicker1: TDateTimePicker;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DateTimePicker2: TDateTimePicker;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    Label23: TLabel;
    DBEdit20: TDBEdit;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEvent: TfrmEvent;

implementation

{$R *.dfm}

uses DataModule;

procedure TfrmEvent.FormCreate(Sender: TObject);
var
  NowDate: string;
begin
  NowDate := formatDateTime('yyyy-mm-dd', now);
//  DBTextReservationDate.Field.AsDateTime := now;
//  DBTextProcessDate.Field.AsDate := now;
end;

end.
