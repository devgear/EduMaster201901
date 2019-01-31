object ServerMethods1: TServerMethods1
  OldCreateOrder = False
  Height = 343
  Width = 545
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
      'select * from SUBJECT_LOG')
    Left = 56
    Top = 144
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
  object Basket: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from BASKET')
    Left = 128
    Top = 144
    object BasketSUBJECT_CODE: TIntegerField
      DisplayLabel = #44284#47785#53076#46300
      FieldName = 'SUBJECT_CODE'
      Origin = 'SUBJECT_CODE'
    end
    object BasketSTUDENT_CODE: TIntegerField
      DisplayLabel = #54617#48264
      FieldName = 'STUDENT_CODE'
      Origin = 'STUDENT_CODE'
    end
  end
  object SignedUp: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from SIGNEDUP')
    Left = 200
    Top = 144
    object SignedUpSUBJECT_CODE: TIntegerField
      FieldName = 'SUBJECT_CODE'
      Origin = 'SUBJECT_CODE'
    end
    object SignedUpSTUDENT_CODE: TIntegerField
      FieldName = 'STUDENT_CODE'
      Origin = 'STUDENT_CODE'
    end
  end
  object Subject_logProvider: TDataSetProvider
    DataSet = Subject_Log
    Left = 56
    Top = 208
  end
  object BasketProvider: TDataSetProvider
    DataSet = Basket
    Left = 128
    Top = 208
  end
  object SignedUpProvider: TDataSetProvider
    DataSet = SignedUp
    Left = 200
    Top = 208
  end
  object qryLogInProvider: TDataSetProvider
    DataSet = qryLogIn
    Left = 384
    Top = 208
  end
  object qryLogIn: TFDQuery
    Connection = FDConnection1
    Left = 384
    Top = 144
  end
  object qrySignedUp: TFDQuery
    Connection = FDConnection1
    Left = 360
    Top = 48
  end
end
