object ServerMethods1: TServerMethods1
  OldCreateOrder = False
  Height = 336
  Width = 606
  object FDConnection1: TFDConnection
    Params.Strings = (
      'ConnectionDef=SIGNEDUP_PROJECT_DB')
    Connected = True
    LoginPrompt = False
    Left = 56
    Top = 40
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 136
    Top = 40
  end
  object Subject_Log: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from SUBJECT_LOG, SUBJECT_TYPE'
      
        'where SUBJECT_TYPE = SEQ_SUBJECT_TYPE and SEQ_SUBJECT_TYPE = :SE' +
        'Q_SUBJECT_TYPE and GRADE = :Grade')
    Left = 56
    Top = 144
    ParamData = <
      item
        Name = 'SEQ_SUBJECT_TYPE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'GRADE'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object SignedUp: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from SIGNEDUP')
    Left = 120
    Top = 144
  end
  object Subject_logProvider: TDataSetProvider
    DataSet = Subject_Log
    Left = 56
    Top = 208
  end
  object SignedUpProvider: TDataSetProvider
    DataSet = SignedUp
    Left = 120
    Top = 208
  end
  object qryLogInProvider: TDataSetProvider
    DataSet = qryLogIn
    Left = 184
    Top = 208
  end
  object qryLogIn: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from USER_LOG'
      'where STUDENT_CODE = :STUDENT_CODE')
    Left = 184
    Top = 144
    ParamData = <
      item
        Name = 'STUDENT_CODE'
        DataType = ftString
        ParamType = ptInput
        Size = 20
        Value = Null
      end>
  end
  object qrySignedUp: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from SIGNEDUP'
      
        'where SUBJECT_CODE = :SUBJECT_CODE and STUDENT_CODE = :STUDENT_C' +
        'ODE and SIGNEDUP_TYPE = :SIGNEDUP_TYPE')
    Left = 248
    Top = 144
    ParamData = <
      item
        Name = 'SUBJECT_CODE'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 20
        Value = Null
      end
      item
        Name = 'STUDENT_CODE'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 20
      end
      item
        Name = 'SIGNEDUP_TYPE'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object SignedUpDropProvider: TDataSetProvider
    DataSet = qrySignedUp
    Left = 248
    Top = 208
  end
  object qrySignedUpSearch: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from SUBJECT_LOG, SIGNEDUP'
      
        'where STUDENT_CODE = :STUDENT_CODE and SIGNEDUP_TYPE = :SIGNEDUP' +
        '_TYPE'
      'and SUBJECT_LOG.SUBJECT_CODE = SIGNEDUP.SUBJECT_CODE')
    Left = 376
    Top = 144
    ParamData = <
      item
        Name = 'STUDENT_CODE'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 20
        Value = Null
      end
      item
        Name = 'SIGNEDUP_TYPE'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object SignedUpSearchProvider: TDataSetProvider
    DataSet = qrySignedUpSearch
    Left = 376
    Top = 208
  end
  object qryBasketDetail: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from SIGNEDUP'
      
        'where SUBJECT_CODE = :SUBJECT_CODE and STUDENT_CODE = :STUDENT_C' +
        'ODE and SIGNEDUP_TYPE = :SIGNEDUP_TYPE')
    Left = 472
    Top = 144
    ParamData = <
      item
        Name = 'SUBJECT_CODE'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 20
        Value = Null
      end
      item
        Name = 'STUDENT_CODE'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end
      item
        Name = 'SIGNEDUP_TYPE'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object BasketDetailProvider: TDataSetProvider
    DataSet = qryBasketDetail
    Left = 472
    Top = 208
  end
  object Subject_Type: TFDTable
    IndexFieldNames = 'SEQ_SUBJECT_TYPE'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'SUBJECT_TYPE'
    TableName = 'SUBJECT_TYPE'
    Left = 376
    Top = 48
  end
  object Subject_TypeProvider: TDataSetProvider
    DataSet = Subject_Type
    Left = 456
    Top = 48
  end
end
