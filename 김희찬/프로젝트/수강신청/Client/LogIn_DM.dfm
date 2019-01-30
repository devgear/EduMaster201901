object LogInDM: TLogInDM
  OldCreateOrder = False
  Height = 299
  Width = 480
  object DSProviderConnection1: TDSProviderConnection
    ServerClassName = 'TServerMethods1'
    Connected = True
    SQLConnection = SQLConnection1
    Left = 128
    Top = 32
  end
  object SQLConnection1: TSQLConnection
    DriverName = 'DataSnap'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DBXDataSnap'
      'HostName=192.168.43.161'
      'Port=211'
      'CommunicationProtocol=tcp/ip'
      'DatasnapContext=datasnap/'
      
        'DriverAssemblyLoader=Borland.Data.TDBXClientDriverLoader,Borland' +
        '.Data.DbxClientDriver,Version=24.0.0.0,Culture=neutral,PublicKey' +
        'Token=91d62ebb5b0d1b1b'
      'Filters={}')
    Connected = True
    Left = 48
    Top = 32
    UniqueId = '{99DCC9ED-A35D-4CC6-B837-DA9080D03BB5}'
  end
  object User_Log: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'User_LogProvider'
    RemoteServer = DSProviderConnection1
    Left = 216
    Top = 32
    object User_LogSTUDENT_CODE: TIntegerField
      FieldName = 'STUDENT_CODE'
      Origin = 'STUDENT_CODE'
      Required = True
    end
    object User_LogPASSWORD: TStringField
      FieldName = 'PASSWORD'
      Origin = '"PASSWORD"'
      Required = True
    end
  end
end
