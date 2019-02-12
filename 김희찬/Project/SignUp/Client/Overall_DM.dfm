object OverallDM: TOverallDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 333
  Width = 556
  object DSProviderConnection1: TDSProviderConnection
    ServerClassName = 'TServerMethods1'
    Connected = True
    SQLConnection = SQLConnection1
    Left = 144
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
    Left = 40
    Top = 40
    UniqueId = '{79909507-016C-4B6B-A775-A56B00D8D594}'
  end
  object Subject_Log: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'GRADE'
        ParamType = ptInput
      end>
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
  object User_Log: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftFixedChar
        Name = 'STUDENT_CODE'
        ParamType = ptInput
        Size = 20
      end>
    ProviderName = 'qryLogInProvider'
    RemoteServer = DSProviderConnection1
    Left = 296
    Top = 64
  end
  object SignedUpCheck_ServerMethod: TSqlServerMethod
    Params = <
      item
        DataType = ftWideString
        Precision = 2000
        Name = 'Subject'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Precision = 2000
        Name = 'Student'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'SignedUpType'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'ReturnParameter'
        ParamType = ptResult
        Size = 4
      end>
    SQLConnection = SQLConnection1
    ServerMethodName = 'TServerMethods1.SignedUpCheck'
    Left = 120
    Top = 240
  end
  object SignUpDrop: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftFixedChar
        Name = 'SUBJECT_CODE'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftFixedChar
        Name = 'STUDENT_CODE'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftInteger
        Name = 'SIGNEDUP_TYPE'
        ParamType = ptInput
      end>
    ProviderName = 'SignedUpDropProvider'
    RemoteServer = DSProviderConnection1
    Left = 296
    Top = 136
  end
end
