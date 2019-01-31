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
    DBEditManagerName: TDBEdit;
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
    Label18: TLabel;
    DBEditNight: TDBEdit;
    DBEditDay: TDBEdit;
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
    DBEdit15: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    Label23: TLabel;
    DBEdit20: TDBEdit;
    Label24: TLabel;
    edtDepartHour: TEdit;
    Label25: TLabel;
    edtDepartMinute: TEdit;
    Label26: TLabel;
    edtLocalHour: TEdit;
    Label27: TLabel;
    edtLocalMinute: TEdit;
    Label28: TLabel;
    FDQuerySerial: TFDQuery;
    DataSource2: TDataSource;
    edtStartYear: TEdit;
    edtStartMonth: TEdit;
    edtStartDay: TEdit;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    edtEndYear: TEdit;
    edtEndMonth: TEdit;
    edtEndDay: TEdit;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    edtDepartMonth: TEdit;
    edtDepartDay: TEdit;
    Label37: TLabel;
    Label38: TLabel;
    edtLocalMonth: TEdit;
    edtLocalDay: TEdit;
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FDTable1NewRecord(DataSet: TDataSet);
    procedure FDTable1BeforePost(DataSet: TDataSet);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EventDateExit(Sender: TObject);
    procedure FDTable1AfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEvent: TfrmEvent;

implementation

{$R *.dfm}

uses DataModule, DateUtils;

// 행사기간 입력시 몇박 몇일을 자동으로 계산
procedure TfrmEvent.EventDateExit(Sender: TObject);
var
  fromDate, toDate : TDate;
  Night: Integer;
begin
  fromDate := EncodeDate(StrToInt(edtStartYear.Text),
    StrToInt(edtStartMonth.Text), StrToInt(edtStartDay.Text));
  toDate := EncodeDate(StrToInt(edtEndYear.Text),
    StrToInt(edtEndMonth.Text), StrToInt(edtEndDay.Text));

  Night := DaysBetween(toDate, fromDate);
  with FDTable1 do
  begin
    Edit;
    FieldByName('night').AsString := IntToStr(Night);
    DBEditNight.Text := IntToStr(Night);
    FieldByName('day').AsString := IntToStr(Night + 1);
    DBEditDay.Text := IntToStr(Night + 1);
  end;
end;

procedure TfrmEvent.FDTable1AfterScroll(DataSet: TDataSet);
var
  Year, Month, Day, Hour, Minute, Second, Mili: Word;
begin
  with FDTable1 do
  begin
    // DB의 행사기간을 TEdit.Text에 반영
    DecodeDate(FieldByName('event_start_date').AsDateTime, Year, Month, Day);
    edtStartYear.Text := IntToStr(Year);
    edtStartMonth.Text := IntToStr(Month);
    edtStartDay.Text := IntToStr(Day);

    DecodeDate(FieldByName('event_end_date').AsDateTime, Year, Month, Day);
    edtEndYear.Text := IntToStr(Year);
    edtEndMonth.Text := IntToStr(Month);
    edtEndDay.Text := IntToStr(Day);

    // DB의 항공 출발시간을 TEdit.Text에 반영
    if FieldByName('start_time').AsString = '' then
    begin
      edtDepartMonth.Text   := '';
      edtDepartDay.Text     := '';
      edtDepartHour.Text    := '';
      edtDepartMinute.Text  := '';
    end
    else begin
      DecodeDateTime(FieldByName('start_time').AsDateTime,
        Year, Month, Day, Hour, Minute, Second, Mili);
      edtDepartMonth.Text   := IntToStr(Month);
      edtDepartDay.Text     := IntToStr(Day);
      edtDepartHour.Text    := IntToStr(Hour);
      edtDepartMinute.Text  := IntToStr(Minute);
    end;

    if FieldByName('local_start_time').AsString = '' then
    begin
      edtLocalMonth.Text   := '';
      edtLocalDay.Text     := '';
      edtLocalHour.Text    := '';
      edtLocalMinute.Text  := '';
    end
    else begin
      DecodeDateTime(FieldByName('local_start_time').AsDateTime,
        Year, Month, Day, Hour, Minute, Second, Mili);
      edtLocalMonth.Text   := IntToStr(Month);
      edtLocalDay.Text     := IntToStr(Day);
      edtLocalHour.Text    := IntToStr(Hour);
      edtLocalMinute.Text  := IntToStr(Minute);
    end;
  end;
end;

procedure TfrmEvent.FDTable1BeforePost(DataSet: TDataSet);
var
  EventStartDate, EventEndDate: TDate;
  DepartTime, LocalTime: TDateTime;
begin
  // 행사기간
  EventStartDate := EncodeDate(StrToInt(edtStartYear.Text),
    StrToInt(edtStartMonth.Text), StrToInt(edtStartDay.Text));
  EventEndDate := EncodeDate(StrToInt(edtEndYear.Text),
    StrToInt(edtEndMonth.Text), StrToInt(edtEndDay.Text));

  // 항공 출발 시간
  DepartTime := EncodeDateTime(StrToInt(edtStartYear.Text),
    StrToInt(edtDepartMonth.Text), StrToInt(edtDepartDay.Text),
    StrToInt(edtDepartHour.Text), StrToInt(edtDepartMinute.Text), 0, 0);

  LocalTime := EncodeDateTime(StrToInt(edtStartYear.Text),
    StrToInt(edtLocalMonth.Text), StrToInt(edtLocalDay.Text),
    StrToInt(edtLocalHour.Text), StrToInt(edtLocalMinute.Text), 0, 0);

  with FDTable1 do
  begin
    FieldByName('event_start_date').AsDateTime := EventStartDate;
    FieldByName('event_end_date').AsDateTime := EventEndDate;
    FieldByName('modified_at').AsDateTime := now;
  end;
end;

procedure TfrmEvent.FDTable1NewRecord(DataSet: TDataSet);
var
  NowDate: string;
  NewSerial: string;
  Serial: Integer;
begin
  NowDate := formatDateTime('yyyy-mm-dd', now);

  with FDQuerySerial do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT serial FROM event WHERE serial like "'
      + formatDateTime('yyyymmdd', now) + '%" ORDER BY serial DESC');
    Open;

    // 오늘날짜의 예약이 없을 때
    if FieldByName('serial').AsString = '' then
      NewSerial := formatDateTime('yyyymmdd', now) + '001'
    else begin
      Serial := StrToInt(Copy(FieldByName('serial').AsString, 7, 3));
      NewSerial := formatDateTime('yyyymmdd', now) + IntToStr(Serial + 1);
    end;
  end;

  with FDTable1 do
  begin
    FieldByName('serial').AsString := NewSerial;
    FieldByName('reservation_date').AsString := NowDate;
    FieldByName('process_date').AsString := NowDate;
    FieldByName('manager_name').AsString := DataModule1.FDQueryManager.FieldByName('name').AsString;
    FieldByName('created_at').AsDateTime := now;
  end;
  DBTextReservationDate.Field.AsString := NowDate;

  // 행사기간 TEdit.Text 초기화
  edtStartYear.Text := '';
  edtStartMonth.Text := '';
  edtStartDay.Text := '';
  edtEndYear.Text := '';
  edtEndMonth.Text := '';
  edtEndDay.Text := '';
end;


procedure TfrmEvent.FormActivate(Sender: TObject);
begin
  FDTable1.Open;
end;

procedure TfrmEvent.FormDeactivate(Sender: TObject);
begin
  FDTable1.Close;
end;

procedure TfrmEvent.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    SelectNext(Activecontrol, True, True);
end;


end.
