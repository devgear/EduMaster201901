object DM: TDM
  OldCreateOrder = False
  Height = 520
  Width = 709
  object FDPhysIBDriverLink1: TFDPhysIBDriverLink
    Left = 608
    Top = 32
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 536
    Top = 32
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'ConnectionDef=Project')
    Connected = True
    LoginPrompt = False
    Left = 184
    Top = 72
  end
  object UserTable: TFDTable
    Active = True
    IndexFieldNames = 'ID'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'USERTABLE'
    TableName = 'USERTABLE'
    Left = 40
    Top = 136
    object UserTableUSERCODE: TWideStringField
      DisplayWidth = 10
      FieldName = 'USERCODE'
      Origin = 'USERCODE'
      Required = True
      Size = 40
    end
    object UserTableSCHOOL: TWideStringField
      DisplayWidth = 16
      FieldName = 'SCHOOL'
      Origin = 'SCHOOL'
      Required = True
      Size = 80
    end
    object UserTablePHONE: TWideStringField
      DisplayWidth = 18
      FieldName = 'PHONE'
      Origin = 'PHONE'
      Required = True
      Size = 80
    end
    object UserTableID: TWideStringField
      DisplayWidth = 10
      FieldName = 'ID'
      Origin = 'ID'
      Required = True
      Size = 200
    end
    object UserTablePASSWORD: TWideStringField
      DisplayWidth = 12
      FieldName = 'PASSWORD'
      Origin = '"PASSWORD"'
      Required = True
      Size = 200
    end
    object UserTableNAME: TWideStringField
      DisplayWidth = 20
      FieldName = 'NAME'
      Origin = 'NAME'
      Required = True
      Size = 40
    end
  end
  object UserSource: TDataSource
    DataSet = UserTable
    Left = 40
    Top = 192
  end
  object UserQuery: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM USERTABLE')
    Left = 224
    Top = 136
  end
  object FDQuery2: TFDQuery
    Connection = FDConnection1
    Left = 224
    Top = 192
  end
  object ProductTable: TFDTable
    Active = True
    IndexFieldNames = 'CODE'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'PRODUCTTABLE'
    TableName = 'PRODUCTTABLE'
    Left = 120
    Top = 136
    object ProductTableCODE: TWideStringField
      DisplayWidth = 10
      FieldName = 'CODE'
      Origin = 'CODE'
      Required = True
      Size = 40
    end
    object ProductTableNAME: TWideStringField
      DisplayWidth = 30
      FieldName = 'NAME'
      Origin = 'NAME'
      Required = True
      Size = 200
    end
    object ProductTableEXPLANATION: TWideStringField
      DisplayWidth = 500
      FieldName = 'EXPLANATION'
      Origin = 'EXPLANATION'
      Size = 2000
    end
  end
  object ProductSource: TDataSource
    DataSet = ProductTable
    Left = 120
    Top = 192
  end
end
