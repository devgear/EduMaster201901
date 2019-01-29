object frmEvent: TfrmEvent
  Left = 0
  Top = 0
  Caption = 'frmEvent'
  ClientHeight = 559
  ClientWidth = 682
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 18
  object DBText1: TDBText
    Left = 74
    Top = 21
    Width = 65
    Height = 17
    DataField = 'serial'
    DataSource = DataSource1
  end
  object Label1: TLabel
    Left = 16
    Top = 21
    Width = 52
    Height = 18
    Caption = #54665#49324#48264#54840
  end
  object Label2: TLabel
    Left = 218
    Top = 21
    Width = 52
    Height = 18
    Caption = #51217#49688#51068#51088
  end
  object Label3: TLabel
    Left = 472
    Top = 21
    Width = 52
    Height = 18
    Caption = #51652#54665#51068#51088
  end
  object Label4: TLabel
    Left = 16
    Top = 56
    Width = 39
    Height = 18
    Caption = #45812#45817#51088
  end
  object Label5: TLabel
    Left = 216
    Top = 56
    Width = 39
    Height = 18
    Caption = #44144#47000#52376
  end
  object Label6: TLabel
    Left = 16
    Top = 96
    Width = 39
    Height = 18
    Caption = #54665#49324#47749
  end
  object Label7: TLabel
    Left = 16
    Top = 144
    Width = 52
    Height = 18
    Caption = #54665#49324#44592#44036
  end
  object Label8: TLabel
    Left = 16
    Top = 192
    Width = 52
    Height = 18
    Caption = #44256#44061#49457#47749
  end
  object Label9: TLabel
    Left = 16
    Top = 232
    Width = 52
    Height = 18
    Caption = #51204#54868#48264#54840
  end
  object Label10: TLabel
    Left = 368
    Top = 232
    Width = 39
    Height = 18
    Caption = #54648#46300#54256
  end
  object Label11: TLabel
    Left = 16
    Top = 272
    Width = 52
    Height = 18
    Caption = #52636#48156#51068#49884
  end
  object Label12: TLabel
    Left = 368
    Top = 272
    Width = 39
    Height = 18
    Caption = #51665#44208#51648
  end
  object Label13: TLabel
    Left = 16
    Top = 312
    Width = 52
    Height = 18
    Caption = #54788#51648#52636#48156
  end
  object Label14: TLabel
    Left = 368
    Top = 312
    Width = 39
    Height = 18
    Caption = #51665#44208#51648
  end
  object Label15: TLabel
    Left = 19
    Top = 352
    Width = 39
    Height = 18
    Caption = #49689#49548#47749
  end
  object Label16: TLabel
    Left = 366
    Top = 352
    Width = 39
    Height = 18
    Caption = #44061#49892#47749
  end
  object Label17: TLabel
    Left = 462
    Top = 352
    Width = 39
    Height = 18
    Caption = #44061#49892#49688
  end
  object DBTextReservationDate: TDBText
    Left = 276
    Top = 21
    Width = 65
    Height = 17
    DataField = 'serial'
    DataSource = DataSource1
  end
  object DBTextProcessDate: TDBText
    Left = 530
    Top = 21
    Width = 65
    Height = 17
    DataField = 'serial'
    DataSource = DataSource1
  end
  object Label18: TLabel
    Left = 519
    Top = 101
    Width = 13
    Height = 18
    Caption = #48149
  end
  object Label19: TLabel
    Left = 583
    Top = 101
    Width = 13
    Height = 18
    Caption = #51068
  end
  object Label20: TLabel
    Left = 381
    Top = 192
    Width = 26
    Height = 18
    Caption = #51064#50896
  end
  object Label21: TLabel
    Left = 500
    Top = 192
    Width = 26
    Height = 18
    Caption = #45824#51064
  end
  object Label22: TLabel
    Left = 585
    Top = 192
    Width = 26
    Height = 18
    Caption = #49548#51064
  end
  object Label23: TLabel
    Left = 565
    Top = 352
    Width = 39
    Height = 18
    Caption = #44061#49892#49688
  end
  object DBNavigator1: TDBNavigator
    Left = 184
    Top = 400
    Width = 240
    Height = 25
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 439
    Width = 682
    Height = 120
    Align = alBottom
    DataSource = DataSource1
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBEdit1: TDBEdit
    Left = 72
    Top = 52
    Width = 121
    Height = 26
    DataField = 'manager_name'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 276
    Top = 52
    Width = 121
    Height = 26
    DataField = 'partner_name'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBEdit3: TDBEdit
    Left = 74
    Top = 93
    Width = 323
    Height = 26
    DataField = 'event_name'
    DataSource = DataSource1
    TabOrder = 4
  end
  object DBEdit4: TDBEdit
    Left = 74
    Top = 141
    Width = 121
    Height = 26
    DataField = 'event_start_date'
    DataSource = DataSource1
    TabOrder = 5
  end
  object CalendarPicker1: TCalendarPicker
    Left = 201
    Top = 141
    Height = 32
    CalendarHeaderInfo.DaysOfWeekFont.Charset = DEFAULT_CHARSET
    CalendarHeaderInfo.DaysOfWeekFont.Color = clWindowText
    CalendarHeaderInfo.DaysOfWeekFont.Height = -13
    CalendarHeaderInfo.DaysOfWeekFont.Name = 'Segoe UI'
    CalendarHeaderInfo.DaysOfWeekFont.Style = []
    CalendarHeaderInfo.Font.Charset = DEFAULT_CHARSET
    CalendarHeaderInfo.Font.Color = clWindowText
    CalendarHeaderInfo.Font.Height = -20
    CalendarHeaderInfo.Font.Name = 'Segoe UI'
    CalendarHeaderInfo.Font.Style = []
    Color = clWindow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    TextHint = 'select a date'
  end
  object DatePicker1: TDatePicker
    Left = 496
    Top = 141
    Date = 43494.000000000000000000
    DateFormat = 'yyyy/MM/dd'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    TabOrder = 7
  end
  object DBEdit5: TDBEdit
    Left = 369
    Top = 141
    Width = 121
    Height = 26
    DataField = 'event_end_date'
    DataSource = DataSource1
    TabOrder = 8
  end
  object DBEdit6: TDBEdit
    Left = 488
    Top = 93
    Width = 25
    Height = 26
    DataSource = DataSource1
    TabOrder = 9
  end
  object DBEdit7: TDBEdit
    Left = 550
    Top = 93
    Width = 27
    Height = 26
    DataSource = DataSource1
    TabOrder = 10
  end
  object DBEdit8: TDBEdit
    Left = 74
    Top = 189
    Width = 267
    Height = 26
    DataField = 'customer_name'
    DataSource = DataSource1
    TabOrder = 11
  end
  object DBEdit9: TDBEdit
    Left = 413
    Top = 189
    Width = 29
    Height = 26
    DataSource = DataSource1
    TabOrder = 12
  end
  object DBEdit10: TDBEdit
    Left = 532
    Top = 189
    Width = 29
    Height = 26
    DataField = 'adult_total'
    DataSource = DataSource1
    TabOrder = 13
  end
  object DBEdit11: TDBEdit
    Left = 617
    Top = 189
    Width = 29
    Height = 26
    DataField = 'child_total'
    DataSource = DataSource1
    TabOrder = 14
  end
  object DBEdit12: TDBEdit
    Left = 74
    Top = 229
    Width = 121
    Height = 26
    DataField = 'phone'
    DataSource = DataSource1
    TabOrder = 15
  end
  object DBEdit13: TDBEdit
    Left = 413
    Top = 229
    Width = 233
    Height = 26
    DataField = 'mobile'
    DataSource = DataSource1
    TabOrder = 16
  end
  object DateTimePicker1: TDateTimePicker
    Left = 201
    Top = 269
    Width = 140
    Height = 26
    Date = 43494.000000000000000000
    Time = 0.405322615741170000
    TabOrder = 17
  end
  object DBEdit14: TDBEdit
    Left = 74
    Top = 269
    Width = 121
    Height = 26
    DataField = 'start_time'
    DataSource = DataSource1
    TabOrder = 18
  end
  object DBEdit15: TDBEdit
    Left = 413
    Top = 269
    Width = 233
    Height = 26
    DataField = 'start_site'
    DataSource = DataSource1
    TabOrder = 19
  end
  object DBEdit16: TDBEdit
    Left = 74
    Top = 309
    Width = 121
    Height = 26
    DataSource = DataSource1
    TabOrder = 20
  end
  object DateTimePicker2: TDateTimePicker
    Left = 201
    Top = 309
    Width = 140
    Height = 26
    Date = 43494.000000000000000000
    Time = 0.406120844905672100
    TabOrder = 21
  end
  object DBEdit17: TDBEdit
    Left = 413
    Top = 309
    Width = 233
    Height = 26
    DataSource = DataSource1
    TabOrder = 22
  end
  object DBEdit18: TDBEdit
    Left = 74
    Top = 349
    Width = 267
    Height = 26
    DataField = 'hotel_name'
    DataSource = DataSource1
    TabOrder = 23
  end
  object DBEdit19: TDBEdit
    Left = 411
    Top = 349
    Width = 121
    Height = 26
    DataField = 'room_name'
    DataSource = DataSource1
    TabOrder = 24
  end
  object DBEdit20: TDBEdit
    Left = 610
    Top = 349
    Width = 36
    Height = 26
    DataField = 'room_number'
    DataSource = DataSource1
    TabOrder = 25
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'ConnectionDef=TTMS')
    LoginPrompt = False
    Left = 280
    Top = 488
  end
  object DataSource1: TDataSource
    DataSet = FDTable1
    Left = 536
    Top = 488
  end
  object FDTable1: TFDTable
    IndexFieldNames = 'serial'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'event'
    TableName = 'event'
    Left = 464
    Top = 488
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = FDTable1
    ScopeMappings = <>
    Left = 392
    Top = 488
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 596
    Top = 493
  end
end
