object ServerMethods1: TServerMethods1
  OldCreateOrder = False
  Height = 588
  Width = 809
  object FDConnection1: TFDConnection
    Params.Strings = (
      'ConnectionDef=USER')
    LoginPrompt = False
    Left = 80
    Top = 56
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 184
    Top = 56
  end
  object FDPhysIBDriverLink1: TFDPhysIBDriverLink
    Left = 288
    Top = 56
  end
  object User: TFDTable
    IndexFieldNames = 'USER_SEQ'
    Connection = FDConnection1
    UpdateOptions.AssignedValues = [uvEDelete, uvGeneratorName, uvCheckRequired]
    UpdateOptions.UpdateTableName = 'USER_LOG'
    UpdateOptions.AutoIncFields = 'USER_SEQ'
    TableName = 'USER_LOG'
    Left = 80
    Top = 152
  end
  object UserProvider: TDataSetProvider
    DataSet = User
    Left = 176
    Top = 152
  end
  object UserDuplicated: TFDQuery
    Connection = FDConnection1
    Left = 80
    Top = 232
  end
end
