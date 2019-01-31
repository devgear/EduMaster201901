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
    object Subject_LogTYPE: TWideStringField
      FieldName = 'TYPE'
      Origin = '"TYPE"'
      Required = True
      Size = 80
    end
    object Subject_LogCODE: TIntegerField
      FieldName = 'CODE'
      Origin = 'CODE'
      Required = True
    end
    object Subject_LogTITLE: TWideStringField
      FieldName = 'TITLE'
      Origin = 'TITLE'
      Required = True
      Size = 200
    end
    object Subject_LogLECTURER: TWideStringField
      FieldName = 'LECTURER'
      Origin = 'LECTURER'
      Required = True
      Size = 120
    end
    object Subject_LogTIME: TWideStringField
      FieldName = 'TIME'
      Origin = '"TIME"'
      Required = True
      Size = 120
    end
    object Subject_LogCLASSROOM: TWideStringField
      FieldName = 'CLASSROOM'
      Origin = 'CLASSROOM'
      Required = True
      Size = 120
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
    object Subject_LogDETAIL: TWideStringField
      FieldName = 'DETAIL'
      Origin = 'DETAIL'
      Size = 400
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
      DisplayLabel = #44284#47785#53076#46300
      FieldName = 'SUBJECT_CODE'
      Origin = 'SUBJECT_CODE'
    end
    object SignedUpSTUDENT_CODE: TIntegerField
      DisplayLabel = #54617#48264
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
  object User_LogProvider: TDataSetProvider
    DataSet = User_Log
    Left = 272
    Top = 208
  end
  object User_Log: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from USER_LOG')
    Left = 272
    Top = 144
    object User_LogSTUDENT_CODE: TStringField
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
  object qryLogIn: TFDQuery
    Connection = FDConnection1
    Left = 384
    Top = 96
  end
end
