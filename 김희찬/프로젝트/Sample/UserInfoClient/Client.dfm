object FrmClient: TFrmClient
  Left = 0
  Top = 0
  Caption = 'FrmClient'
  ClientHeight = 435
  ClientWidth = 808
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 32
    Top = 112
    Width = 417
    Height = 225
    DataSource = UserInfoSource
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'USER_SEQ'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USER_NAME'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USER_SEX'
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USER_PHONE'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USER_BIRTH'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USER_IMAGE'
        Visible = False
      end>
  end
  object SaveBtn: TButton
    Left = 262
    Top = 81
    Width = 75
    Height = 25
    Caption = 'Save'
    TabOrder = 1
  end
  object LoadBtn: TButton
    Left = 343
    Top = 81
    Width = 75
    Height = 25
    Caption = 'Load'
    TabOrder = 2
  end
  object InsertBtn: TButton
    Left = 343
    Top = 32
    Width = 75
    Height = 25
    Caption = 'Insert'
    TabOrder = 3
    OnClick = InsertBtnClick
  end
  object DelBtn: TButton
    Left = 424
    Top = 32
    Width = 75
    Height = 25
    Caption = 'Delete'
    TabOrder = 4
    OnClick = DelBtnClick
  end
  object CancelBtn: TButton
    Left = 505
    Top = 32
    Width = 75
    Height = 25
    Caption = 'Cancel'
    TabOrder = 5
    OnClick = CancelBtnClick
  end
  object DBEdit1: TDBEdit
    Left = 472
    Top = 112
    Width = 121
    Height = 21
    DataField = 'USER_NAME'
    DataSource = UserInfoSource
    TabOrder = 6
  end
  object DBEdit2: TDBEdit
    Left = 472
    Top = 152
    Width = 121
    Height = 21
    DataField = 'USER_PHONE'
    DataSource = UserInfoSource
    TabOrder = 7
  end
  object DateTimePicker: TDateTimePicker
    Left = 472
    Top = 280
    Width = 121
    Height = 21
    Date = 43493.000000000000000000
    Time = 0.600973796295875200
    TabOrder = 8
    OnCloseUp = DateTimePickerCloseUp
  end
  object DBRadioGroup1: TDBRadioGroup
    Left = 472
    Top = 200
    Width = 104
    Height = 58
    Caption = 'DBRadioGroup1'
    Columns = 2
    DataField = 'USER_SEX'
    DataSource = UserInfoSource
    Items.Strings = (
      #45224
      #50668)
    TabOrder = 9
    Values.Strings = (
      'True'
      'False')
  end
  object ApplyBtn: TButton
    Left = 472
    Top = 81
    Width = 75
    Height = 25
    Caption = 'Apply'
    TabOrder = 10
    OnClick = ApplyBtnClick
  end
  object UserInfo: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'UserInfoProvider'
    RemoteServer = DSProviderConnection1
    Left = 216
    Top = 32
    object UserInfoUSER_SEQ: TIntegerField
      FieldName = 'USER_SEQ'
      Origin = 'USER_SEQ'
      Required = True
      Visible = False
    end
    object UserInfoUSER_NAME: TWideStringField
      FieldName = 'USER_NAME'
      Origin = 'USER_NAME'
      Required = True
      Size = 80
    end
    object UserInfoUSER_SEX: TBooleanField
      FieldName = 'USER_SEX'
      Origin = 'USER_SEX'
      Required = True
    end
    object UserInfoUSER_PHONE: TWideStringField
      FieldName = 'USER_PHONE'
      Origin = 'USER_PHONE'
      Required = True
      Size = 80
    end
    object UserInfoUSER_BIRTH: TDateField
      FieldName = 'USER_BIRTH'
      Origin = 'USER_BIRTH'
      Required = True
    end
    object UserInfoUSER_IMAGE: TBlobField
      FieldName = 'USER_IMAGE'
      Origin = 'USER_IMAGE'
    end
  end
  object SQLConnection1: TSQLConnection
    DriverName = 'DataSnap'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DBXDataSnap'
      'HostName=localhost'
      'Port=211'
      'CommunicationProtocol=tcp/ip'
      'DatasnapContext=datasnap/'
      
        'DriverAssemblyLoader=Borland.Data.TDBXClientDriverLoader,Borland' +
        '.Data.DbxClientDriver,Version=24.0.0.0,Culture=neutral,PublicKey' +
        'Token=91d62ebb5b0d1b1b')
    Connected = True
    Left = 40
    Top = 32
    UniqueId = '{0B41E4BF-0C59-47E8-A318-D475AAD6AB2E}'
  end
  object DSProviderConnection1: TDSProviderConnection
    ServerClassName = 'TServerMethods1'
    Connected = True
    SQLConnection = SQLConnection1
    Left = 128
    Top = 32
  end
  object UserInfoSource: TDataSource
    DataSet = UserInfo
    Left = 272
    Top = 32
  end
end
