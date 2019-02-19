object ServerMethods1: TServerMethods1
  OldCreateOrder = False
  Height = 295
  Width = 490
  object FDConnection1: TFDConnection
    Params.Strings = (
      'ConnectionDef=UserInfo')
    Connected = True
    LoginPrompt = False
    Left = 48
    Top = 32
  end
  object UserInfoProvider: TDataSetProvider
    DataSet = UserInfo
    Left = 112
    Top = 120
  end
  object FDPhysIBDriverLink1: TFDPhysIBDriverLink
    Left = 112
    Top = 32
  end
  object UserInfo: TFDTable
    IndexFieldNames = 'USER_SEQ'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'USER_LOG'
    TableName = 'USER_LOG'
    Left = 48
    Top = 120
    object UserInfoUSER_SEQ: TIntegerField
      FieldName = 'USER_SEQ'
      Origin = 'USER_SEQ'
      Required = True
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
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 200
    Top = 32
  end
end
