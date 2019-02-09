object frmEvent: TfrmEvent
  Left = 0
  Top = 0
  Caption = 'frmEvent'
  ClientHeight = 648
  ClientWidth = 682
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnActivate = FormActivate
  OnDeactivate = FormDeactivate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 18
  object DBGrid1: TDBGrid
    Left = 0
    Top = 433
    Width = 682
    Height = 215
    TabStop = False
    Align = alClient
    DataSource = DataSource1
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 682
    Height = 433
    Align = alTop
    TabOrder = 1
    object DBText1: TDBText
      Left = 82
      Top = 22
      Width = 119
      Height = 17
      DataField = 'serial'
      DataSource = DataSource1
    end
    object Label1: TLabel
      Left = 14
      Top = 21
      Width = 62
      Height = 18
      Caption = #54665#49324#48264#54840' :'
    end
    object Label2: TLabel
      Left = 226
      Top = 21
      Width = 62
      Height = 18
      Caption = #51217#49688#51068#51088' :'
    end
    object Label3: TLabel
      Left = 421
      Top = 21
      Width = 62
      Height = 18
      Caption = #51652#54665#51068#51088' :'
    end
    object Label4: TLabel
      Left = 24
      Top = 56
      Width = 39
      Height = 18
      Caption = #45812#45817#51088
    end
    object Label5: TLabel
      Left = 224
      Top = 56
      Width = 39
      Height = 18
      Caption = #44144#47000#52376
    end
    object Label6: TLabel
      Left = 24
      Top = 96
      Width = 39
      Height = 18
      Caption = #54665#49324#47749
    end
    object Label7: TLabel
      Left = 24
      Top = 144
      Width = 52
      Height = 18
      Caption = #54665#49324#44592#44036
    end
    object Label8: TLabel
      Left = 24
      Top = 192
      Width = 52
      Height = 18
      Caption = #44256#44061#49457#47749
    end
    object Label9: TLabel
      Left = 24
      Top = 232
      Width = 52
      Height = 18
      Caption = #51204#54868#48264#54840
    end
    object Label10: TLabel
      Left = 376
      Top = 232
      Width = 39
      Height = 18
      Caption = #54648#46300#54256
    end
    object Label11: TLabel
      Left = 24
      Top = 272
      Width = 52
      Height = 18
      Caption = #52636#48156#51068#49884
    end
    object Label12: TLabel
      Left = 376
      Top = 272
      Width = 39
      Height = 18
      Caption = #51665#44208#51648
    end
    object Label13: TLabel
      Left = 24
      Top = 312
      Width = 52
      Height = 18
      Caption = #54788#51648#52636#48156
    end
    object Label14: TLabel
      Left = 376
      Top = 312
      Width = 39
      Height = 18
      Caption = #51665#44208#51648
    end
    object Label15: TLabel
      Left = 27
      Top = 352
      Width = 39
      Height = 18
      Caption = #49689#49548#47749
    end
    object Label16: TLabel
      Left = 374
      Top = 352
      Width = 39
      Height = 18
      Caption = #44061#49892#47749
    end
    object Label17: TLabel
      Left = 470
      Top = 352
      Width = 39
      Height = 18
      Caption = #44061#49892#49688
    end
    object DBTextReservationDate: TDBText
      Left = 294
      Top = 21
      Width = 111
      Height = 17
      DataField = 'reservation_date'
      DataSource = DataSource1
    end
    object DBTextProcessDate: TDBText
      Left = 489
      Top = 21
      Width = 158
      Height = 17
      DataField = 'process_date'
      DataSource = DataSource1
    end
    object Label18: TLabel
      Left = 520
      Top = 145
      Width = 13
      Height = 18
      Caption = #48149
    end
    object Label19: TLabel
      Left = 584
      Top = 145
      Width = 13
      Height = 18
      Caption = #51068
    end
    object Label20: TLabel
      Left = 389
      Top = 192
      Width = 26
      Height = 18
      Caption = #51064#50896
    end
    object Label21: TLabel
      Left = 508
      Top = 192
      Width = 26
      Height = 18
      Caption = #45824#51064
    end
    object Label22: TLabel
      Left = 593
      Top = 192
      Width = 26
      Height = 18
      Caption = #49548#51064
    end
    object Label23: TLabel
      Left = 573
      Top = 352
      Width = 39
      Height = 18
      Caption = #44061#49892#49688
    end
    object Label24: TLabel
      Left = 260
      Top = 140
      Width = 11
      Height = 18
      Caption = '~'
    end
    object Label25: TLabel
      Left = 207
      Top = 272
      Width = 13
      Height = 18
      Caption = #49884
    end
    object Label26: TLabel
      Left = 245
      Top = 272
      Width = 13
      Height = 18
      Caption = #48516
    end
    object Label27: TLabel
      Left = 206
      Top = 311
      Width = 13
      Height = 18
      Caption = #49884
    end
    object Label28: TLabel
      Left = 244
      Top = 311
      Width = 13
      Height = 18
      Caption = #48516
    end
    object Label29: TLabel
      Left = 127
      Top = 140
      Width = 13
      Height = 18
      Caption = #45380
    end
    object Label30: TLabel
      Left = 179
      Top = 140
      Width = 13
      Height = 18
      Caption = #50900
    end
    object Label31: TLabel
      Left = 231
      Top = 140
      Width = 13
      Height = 18
      Caption = #51068
    end
    object Label32: TLabel
      Left = 332
      Top = 140
      Width = 13
      Height = 18
      Caption = #45380
    end
    object Label33: TLabel
      Left = 384
      Top = 140
      Width = 13
      Height = 18
      Caption = #50900
    end
    object Label34: TLabel
      Left = 436
      Top = 140
      Width = 13
      Height = 18
      Caption = #51068
    end
    object Label35: TLabel
      Left = 115
      Top = 272
      Width = 13
      Height = 18
      Caption = #50900
    end
    object Label36: TLabel
      Left = 167
      Top = 272
      Width = 13
      Height = 18
      Caption = #51068
    end
    object Label37: TLabel
      Left = 115
      Top = 311
      Width = 13
      Height = 18
      Caption = #50900
    end
    object Label38: TLabel
      Left = 167
      Top = 311
      Width = 13
      Height = 18
      Caption = #51068
    end
    object DBNavigator1: TDBNavigator
      Left = 186
      Top = 391
      Width = 240
      Height = 25
      DataSource = DataSource1
      TabOrder = 0
    end
    object DBEditManagerName: TDBEdit
      Left = 80
      Top = 52
      Width = 121
      Height = 26
      DataField = 'manager_name'
      DataSource = DataSource1
      TabOrder = 1
    end
    object edtPartner: TDBEdit
      Left = 288
      Top = 52
      Width = 121
      Height = 26
      DataField = 'partner_name'
      DataSource = DataSource1
      TabOrder = 2
    end
    object DBEdit3: TDBEdit
      Left = 82
      Top = 93
      Width = 323
      Height = 26
      DataField = 'event_name'
      DataSource = DataSource1
      TabOrder = 3
      OnDblClick = DBEdit3DblClick
    end
    object DBEditNight: TDBEdit
      Left = 489
      Top = 137
      Width = 25
      Height = 26
      DataField = 'night'
      DataSource = DataSource1
      TabOrder = 10
    end
    object DBEditDay: TDBEdit
      Left = 551
      Top = 137
      Width = 27
      Height = 26
      DataField = 'day'
      DataSource = DataSource1
      TabOrder = 11
    end
    object DBEdit8: TDBEdit
      Left = 82
      Top = 189
      Width = 267
      Height = 26
      DataField = 'customer_name'
      DataSource = DataSource1
      TabOrder = 12
    end
    object DBEdit9: TDBEdit
      Left = 421
      Top = 189
      Width = 29
      Height = 26
      DataSource = DataSource1
      TabOrder = 13
    end
    object DBEdit10: TDBEdit
      Left = 540
      Top = 189
      Width = 29
      Height = 26
      DataField = 'adult_total'
      DataSource = DataSource1
      TabOrder = 14
    end
    object DBEdit11: TDBEdit
      Left = 625
      Top = 189
      Width = 29
      Height = 26
      DataField = 'child_total'
      DataSource = DataSource1
      TabOrder = 15
    end
    object DBEdit12: TDBEdit
      Left = 82
      Top = 229
      Width = 121
      Height = 26
      DataField = 'phone'
      DataSource = DataSource1
      TabOrder = 16
    end
    object DBEdit13: TDBEdit
      Left = 421
      Top = 229
      Width = 233
      Height = 26
      DataField = 'mobile'
      DataSource = DataSource1
      TabOrder = 17
    end
    object DBEdit15: TDBEdit
      Left = 421
      Top = 269
      Width = 233
      Height = 26
      DataField = 'start_site'
      DataSource = DataSource1
      TabOrder = 22
    end
    object DBEdit17: TDBEdit
      Left = 421
      Top = 309
      Width = 233
      Height = 26
      DataField = 'local_start_site'
      DataSource = DataSource1
      TabOrder = 27
    end
    object DBEdit18: TDBEdit
      Left = 82
      Top = 349
      Width = 267
      Height = 26
      DataField = 'hotel_name'
      DataSource = DataSource1
      TabOrder = 28
    end
    object DBEdit19: TDBEdit
      Left = 419
      Top = 349
      Width = 121
      Height = 26
      DataField = 'room_name'
      DataSource = DataSource1
      TabOrder = 29
    end
    object DBEdit20: TDBEdit
      Left = 618
      Top = 349
      Width = 36
      Height = 26
      DataField = 'room_number'
      DataSource = DataSource1
      TabOrder = 30
    end
    object edtDepartHour: TEdit
      Left = 186
      Top = 269
      Width = 20
      Height = 26
      TabOrder = 20
    end
    object edtDepartMinute: TEdit
      Left = 226
      Top = 269
      Width = 20
      Height = 26
      TabOrder = 21
    end
    object edtLocalHour: TEdit
      Left = 187
      Top = 309
      Width = 20
      Height = 26
      TabOrder = 25
    end
    object edtLocalMinute: TEdit
      Left = 225
      Top = 308
      Width = 20
      Height = 26
      TabOrder = 26
    end
    object edtFromYear: TEdit
      Left = 83
      Top = 137
      Width = 38
      Height = 26
      TabOrder = 4
      OnExit = EventDateExit
    end
    object edtFromMonth: TEdit
      Left = 146
      Top = 137
      Width = 27
      Height = 26
      TabOrder = 5
      OnExit = EventDateExit
    end
    object edtFromDay: TEdit
      Left = 198
      Top = 137
      Width = 27
      Height = 26
      TabOrder = 6
      OnExit = EventDateExit
    end
    object edtToYear: TEdit
      Left = 288
      Top = 137
      Width = 38
      Height = 26
      TabOrder = 7
      OnExit = EventDateExit
    end
    object edtToMonth: TEdit
      Left = 351
      Top = 137
      Width = 27
      Height = 26
      TabOrder = 8
      OnExit = EventDateExit
    end
    object edtToDay: TEdit
      Left = 403
      Top = 137
      Width = 27
      Height = 26
      TabOrder = 9
      OnExit = EventDateExit
    end
    object edtDepartMonth: TEdit
      Left = 82
      Top = 269
      Width = 27
      Height = 26
      TabOrder = 18
      OnExit = EventDateExit
    end
    object edtDepartDay: TEdit
      Left = 134
      Top = 269
      Width = 27
      Height = 26
      TabOrder = 19
      OnExit = EventDateExit
    end
    object edtLocalMonth: TEdit
      Left = 82
      Top = 308
      Width = 27
      Height = 26
      TabOrder = 23
      OnExit = EventDateExit
    end
    object edtLocalDay: TEdit
      Left = 134
      Top = 308
      Width = 27
      Height = 26
      TabOrder = 24
      OnExit = EventDateExit
    end
    object btnPost: TButton
      Left = 80
      Top = 392
      Width = 75
      Height = 25
      Caption = #51200#51109
      TabOrder = 31
      OnClick = btnPostClick
    end
  end
  object DataSource1: TDataSource
    DataSet = FDTable1
    Left = 528
    Top = 56
  end
  object FDTable1: TFDTable
    BeforePost = FDTable1BeforePost
    AfterScroll = FDTable1AfterScroll
    OnNewRecord = FDTable1NewRecord
    IndexFieldNames = 'serial'
    Connection = DataModule1.FDConnection1
    UpdateOptions.UpdateTableName = 'event'
    TableName = 'event'
    Left = 456
    Top = 56
  end
  object FDQuerySerial: TFDQuery
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'SELECT serial'
      'FROM event'
      'WHERE serial like '#39'20190130%'#39
      'ORDER BY serial DESC')
    Left = 456
    Top = 384
  end
end
