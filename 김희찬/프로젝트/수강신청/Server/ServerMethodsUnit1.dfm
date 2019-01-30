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
      DisplayLabel = #44396#48516
      FieldName = 'TYPE'
      Origin = '"TYPE"'
      Required = True
    end
    object Subject_LogCODE: TIntegerField
      DisplayLabel = #44284#47785#53076#46300
      FieldName = 'CODE'
      Origin = 'CODE'
      Required = True
    end
    object Subject_LogTITLE: TWideStringField
      DisplayLabel = #44368#44284#47785#47749
      FieldName = 'TITLE'
      Origin = 'TITLE'
      Required = True
      Size = 200
    end
    object Subject_LogLECTURER: TWideStringField
      DisplayLabel = #45812#45817#44368#49688
      FieldName = 'LECTURER'
      Origin = 'LECTURER'
      Required = True
      Size = 120
    end
    object Subject_LogTIME: TWideStringField
      DisplayLabel = #49884#44036
      FieldName = 'TIME'
      Origin = '"TIME"'
      Required = True
      Size = 120
    end
    object Subject_LogCLASSROOM: TWideStringField
      DisplayLabel = #44053#51032#49892
      FieldName = 'CLASSROOM'
      Origin = 'CLASSROOM'
      Required = True
      Size = 120
    end
    object Subject_LogCREDIT: TIntegerField
      DisplayLabel = #54617#51216
      FieldName = 'CREDIT'
      Origin = 'CREDIT'
      Required = True
    end
    object Subject_LogGRADE: TIntegerField
      DisplayLabel = #54617#45380
      FieldName = 'GRADE'
      Origin = 'GRADE'
    end
    object Subject_LogCAPACITY: TIntegerField
      DisplayLabel = #51228#54620#51064#50896
      FieldName = 'CAPACITY'
      Origin = 'CAPACITY'
      Required = True
    end
    object Subject_LogDETAIL: TStringField
      DisplayLabel = #48708#44256
      FieldName = 'DETAIL'
      Origin = 'DETAIL'
      Size = 100
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
    object User_LogSTUDENT_CODE: TIntegerField
      DisplayLabel = #54617#48264' (ID)'
      FieldName = 'STUDENT_CODE'
      Origin = 'STUDENT_CODE'
      Required = True
    end
    object User_LogPASSWORD: TStringField
      DisplayLabel = #48708#48128#48264#54840
      FieldName = 'PASSWORD'
      Origin = '"PASSWORD"'
      Required = True
    end
  end
end
