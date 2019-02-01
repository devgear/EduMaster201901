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
    object Subject_LogTYPE: TIntegerField
      FieldName = 'TYPE'
      Origin = '"TYPE"'
      Required = True
    end
    object Subject_LogSUBJECT_CODE: TIntegerField
      FieldName = 'SUBJECT_CODE'
      Origin = 'SUBJECT_CODE'
      Required = True
    end
    object Subject_LogTITLE: TStringField
      FieldName = 'TITLE'
      Origin = 'TITLE'
      Required = True
      Size = 50
    end
    object Subject_LogLECTURER: TStringField
      FieldName = 'LECTURER'
      Origin = 'LECTURER'
      Required = True
      Size = 30
    end
    object Subject_LogTIME: TStringField
      FieldName = 'TIME'
      Origin = '"TIME"'
      Size = 30
    end
    object Subject_LogCLASSROOM: TStringField
      FieldName = 'CLASSROOM'
      Origin = 'CLASSROOM'
      Size = 30
    end
    object Subject_LogCREDIT: TIntegerField
      FieldName = 'CREDIT'
      Origin = 'CREDIT'
      Required = True
    end
    object Subject_LogGRADE: TIntegerField
      FieldName = 'GRADE'
      Origin = 'GRADE'
    end
    object Subject_LogCAPACITY: TIntegerField
      FieldName = 'CAPACITY'
      Origin = 'CAPACITY'
      Required = True
    end
    object Subject_LogSTUDENTNUM: TIntegerField
      FieldName = 'STUDENTNUM'
      Origin = 'STUDENTNUM'
      Required = True
    end
    object Subject_LogDETAIL: TStringField
      FieldName = 'DETAIL'
      Origin = 'DETAIL'
      Size = 200
    end
  end
  object SignedUp: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'SignedUpProvider'
    RemoteServer = DSProviderConnection1
    Left = 208
    Top = 136
    object SignedUpSUBJECT_CODE: TIntegerField
      FieldName = 'SUBJECT_CODE'
      Origin = 'SUBJECT_CODE'
    end
    object SignedUpSTUDENT_CODE: TIntegerField
      FieldName = 'STUDENT_CODE'
      Origin = 'STUDENT_CODE'
    end
    object SignedUpSIGNEDUP_TYPE: TIntegerField
      FieldName = 'SIGNEDUP_TYPE'
      Origin = 'SIGNEDUP_TYPE'
    end
  end
  object User_Log: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'qryLogInProvider'
    RemoteServer = DSProviderConnection1
    Left = 296
    Top = 64
  end
  object SignedUpCheck_ServerMethod: TSqlServerMethod
    Params = <
      item
        DataType = ftInteger
        Precision = 4
        Name = 'Subject'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
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
    Params = <>
    ProviderName = 'SignedUpDropProvider'
    RemoteServer = DSProviderConnection1
    Left = 296
    Top = 136
  end
end
