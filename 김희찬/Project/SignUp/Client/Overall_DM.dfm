object OverallDM: TOverallDM
  OldCreateOrder = False
  Height = 333
  Width = 556
  object DSProviderConnection1: TDSProviderConnection
    ServerClassName = 'TServerMethods1'
    Connected = True
    SQLConnection = SQLConnection1
    Left = 112
    Top = 40
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
        'Token=91d62ebb5b0d1b1b'
      'Filters={}')
    Connected = True
    Left = 32
    Top = 40
    UniqueId = '{79909507-016C-4B6B-A775-A56B00D8D594}'
  end
  object Subject_Log: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'Subject_logProvider'
    RemoteServer = DSProviderConnection1
    Left = 120
    Top = 136
  end
  object SignedUp: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'SignedUpProvider'
    RemoteServer = DSProviderConnection1
    Left = 208
    Top = 136
  end
  object Basket: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'BasketProvider'
    RemoteServer = DSProviderConnection1
    Left = 296
    Top = 136
  end
  object User_Log: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'qryLogInProvider'
    RemoteServer = DSProviderConnection1
    Left = 384
    Top = 136
  end
end
