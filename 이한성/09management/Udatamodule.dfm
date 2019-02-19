object udata: Tudata
  OldCreateOrder = False
  Height = 136
  Width = 721
  object FDConnection1: TFDConnection
    Params.Strings = (
      'ConnectionDef=data')
    Connected = True
    LoginPrompt = False
    Left = 32
    Top = 16
  end
  object CUSQUERY: TFDQuery
    Active = True
    Connection = FDConnection1
    UpdateOptions.AutoIncFields = 'CUS_NUMBER'
    SQL.Strings = (
      'SELECT * FROM CUSTOMER1')
    Left = 104
    Top = 16
    object CUSQUERYCUS_NUMBER: TFDAutoIncField
      DisplayLabel = #44144#47000#52376#48264#54840
      DisplayWidth = 5
      FieldName = 'CUS_NUMBER'
      Origin = 'CUS_NUMBER'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      IdentityInsert = True
    end
    object CUSQUERYCUS_NAME: TWideStringField
      DisplayLabel = #44144#47000#52376#47749
      DisplayWidth = 6
      FieldName = 'CUS_NAME'
      Origin = 'CUS_NAME'
      FixedChar = True
      Size = 80
    end
    object CUSQUERYCUS_EMAIL: TWideStringField
      DisplayLabel = #51060#47700#51068
      DisplayWidth = 12
      FieldName = 'CUS_EMAIL'
      Origin = 'CUS_EMAIL'
      FixedChar = True
      Size = 120
    end
    object CUSQUERYCUS_ADRS: TWideStringField
      DisplayLabel = #51452#49548
      DisplayWidth = 10
      FieldName = 'CUS_ADRS'
      Origin = 'CUS_ADRS'
      FixedChar = True
      Size = 320
    end
    object CUSQUERYCUS_PHONE: TWideStringField
      DisplayLabel = #51204#54868#48264#54840
      DisplayWidth = 12
      FieldName = 'CUS_PHONE'
      Origin = 'CUS_PHONE'
      FixedChar = True
      Size = 44
    end
    object CUSQUERYCUS_NAME1: TWideStringField
      DisplayLabel = #45812#45817#51088#47749
      DisplayWidth = 3
      FieldName = 'CUS_NAME1'
      Origin = 'CUS_NAME1'
      FixedChar = True
      Size = 40
    end
    object CUSQUERYCUS_CARNUM: TWideStringField
      DisplayLabel = #52264#47049#48264#54840
      DisplayWidth = 8
      FieldName = 'CUS_CARNUM'
      Origin = 'CUS_CARNUM'
      FixedChar = True
      Size = 40
    end
    object CUSQUERYCUS_BIGO: TWideStringField
      DisplayLabel = #48708#44256
      DisplayWidth = 10
      FieldName = 'CUS_BIGO'
      Origin = 'CUS_BIGO'
      FixedChar = True
      Size = 2000
    end
    object CUSQUERYCUS_COPY: TBlobField
      DisplayLabel = #49324#50629#51088#49324#48376
      FieldName = 'CUS_COPY'
      Origin = 'CUS_COPY'
    end
    object CUSQUERYCUS_CUSNUM: TIntegerField
      DisplayLabel = #49324#50629#51088#48264#54840
      FieldName = 'CUS_CUSNUM'
      Origin = 'CUS_CUSNUM'
    end
  end
  object itemquery: TFDQuery
    Active = True
    CachedUpdates = True
    Connection = FDConnection1
    UpdateOptions.AutoIncFields = 'ITEM_NUMBER'
    SQL.Strings = (
      'SELECT * FROM Itemlist')
    Left = 168
    Top = 16
    object itemqueryITEM_NUMBER: TFDAutoIncField
      DisplayLabel = #44277#44396#48264#54840
      DisplayWidth = 3
      FieldName = 'ITEM_NUMBER'
      Origin = 'ITEM_NUMBER'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      IdentityInsert = True
    end
    object itemqueryITEM_NAME: TWideStringField
      DisplayLabel = #44277#44396#47749
      DisplayWidth = 3
      FieldName = 'ITEM_NAME'
      Origin = 'ITEM_NAME'
      FixedChar = True
      Size = 80
    end
    object itemqueryITEM_MAKER: TWideStringField
      DisplayLabel = #51228#51312#49324
      DisplayWidth = 3
      FieldName = 'ITEM_MAKER'
      Origin = 'ITEM_MAKER'
      FixedChar = True
      Size = 44
    end
    object itemqueryITEM_OWNERT: TWideStringField
      DisplayLabel = #49548#50976#51452
      DisplayWidth = 3
      FieldName = 'ITEM_OWNERT'
      Origin = 'ITEM_OWNERT'
      FixedChar = True
      Size = 40
    end
    object itemqueryITEM_LASTRENT: TWideStringField
      DisplayLabel = #52572#51333#45824#50668#51068
      DisplayWidth = 10
      FieldName = 'ITEM_LASTRENT'
      Origin = 'ITEM_LASTRENT'
      FixedChar = True
      Size = 320
    end
    object itemqueryITEM_LASTCUS: TWideStringField
      DisplayLabel = #52572#51333#45824#50668#51088
      DisplayWidth = 5
      FieldName = 'ITEM_LASTCUS'
      Origin = 'ITEM_LASTCUS'
      FixedChar = True
      Size = 44
    end
    object itemqueryITEM_BIGO: TWideStringField
      DisplayLabel = #49324#51652
      DisplayWidth = 10
      FieldName = 'ITEM_BIGO'
      Origin = 'ITEM_BIGO'
      FixedChar = True
      Size = 400
    end
    object itemqueryITEM_PHOTO: TBlobField
      FieldName = 'ITEM_PHOTO'
      Origin = 'ITEM_PHOTO'
    end
  end
  object rentquery: TFDQuery
    Active = True
    Connection = FDConnection1
    UpdateOptions.AutoIncFields = 'RENT_NUM'
    SQL.Strings = (
      'SELECT * FROM RENTLIST')
    Left = 368
    Top = 16
    object rentqueryRENT_NUM: TFDAutoIncField
      FieldName = 'RENT_NUM'
      Origin = 'RENT_NUM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      IdentityInsert = True
    end
    object rentqueryRENT_DATE: TWideStringField
      FieldName = 'RENT_DATE'
      Origin = 'RENT_DATE'
      FixedChar = True
      Size = 44
    end
    object rentqueryRENT_PHOTO: TBlobField
      FieldName = 'RENT_PHOTO'
      Origin = 'RENT_PHOTO'
    end
    object rentqueryRENT_CUS_NUM: TIntegerField
      FieldName = 'RENT_CUS_NUM'
      Origin = 'RENT_CUS_NUM'
    end
  end
  object rent_detquery: TFDQuery
    Active = True
    IndexFieldNames = 'RENT_RENT_NUM'
    Connection = FDConnection1
    UpdateOptions.AutoIncFields = 'RENT_RENT_NUM'
    SQL.Strings = (
      'SELECT * FROM rent_det_rentlist'
      'WHERE RENT_RENT_index = :RENT_NUM')
    Left = 304
    Top = 16
    ParamData = <
      item
        Name = 'RENT_NUM'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object rent_detqueryRENT_RENT_INDEX: TIntegerField
      FieldName = 'RENT_RENT_INDEX'
      Origin = 'RENT_RENT_INDEX'
    end
    object rent_detqueryRENT_RENT_NUM: TFDAutoIncField
      FieldName = 'RENT_RENT_NUM'
      Origin = 'RENT_RENT_NUM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      IdentityInsert = True
    end
    object rent_detqueryRENT_RENT_ITEM_NUM: TIntegerField
      FieldName = 'RENT_RENT_ITEM_NUM'
      Origin = 'RENT_RENT_ITEM_NUM'
    end
    object rent_detqueryRENT_RENT_DATE: TDateField
      FieldName = 'RENT_RENT_DATE'
      Origin = 'RENT_RENT_DATE'
    end
    object rent_detqueryRENT_RENT_LASTDATE: TDateField
      FieldName = 'RENT_RENT_LASTDATE'
      Origin = 'RENT_RENT_LASTDATE'
    end
    object rent_detqueryRENT_RENT_PHOTO: TBlobField
      FieldName = 'RENT_RENT_PHOTO'
      Origin = 'RENT_RENT_PHOTO'
    end
  end
  object fdtRent_detExec: TFDQuery
    IndexFieldNames = 'RENT_RENT_NUM'
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM rent_det_rentlist')
    Left = 456
    Top = 16
    object IntegerField1: TIntegerField
      FieldName = 'RENT_RENT_NUM'
      Origin = 'RENT_RENT_NUM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object WideStringField1: TWideStringField
      FieldName = 'RENT_RENT_CUS'
      Origin = 'RENT_RENT_CUS'
      FixedChar = True
      Size = 80
    end
    object WideStringField2: TWideStringField
      FieldName = 'RENT_RENT_ITEM_NUM'
      Origin = 'RENT_RENT_ITEM_NUM'
      FixedChar = True
      Size = 44
    end
    object BlobField1: TBlobField
      FieldName = 'RENT_RENT_LASTDATE'
      Origin = 'RENT_RENT_LASTDATE'
    end
  end
  object fdtrent_item: TFDTable
    Active = True
    Filtered = True
    IndexFieldNames = 'RENT_RENT_NUM'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'RENT_DET_RENTLIST'
    TableName = 'RENT_DET_RENTLIST'
    Left = 536
    Top = 16
    object fdtrent_itemRENT_RENT_INDEX: TIntegerField
      FieldName = 'RENT_RENT_INDEX'
      Origin = 'RENT_RENT_INDEX'
    end
    object fdtrent_itemRENT_RENT_NUM: TIntegerField
      FieldName = 'RENT_RENT_NUM'
      Origin = 'RENT_RENT_NUM'
      Required = True
    end
    object fdtrent_itemRENT_RENT_ITEM_NUM: TIntegerField
      FieldName = 'RENT_RENT_ITEM_NUM'
      Origin = 'RENT_RENT_ITEM_NUM'
    end
    object fdtrent_itemRENT_RENT_DATE: TDateField
      FieldName = 'RENT_RENT_DATE'
      Origin = 'RENT_RENT_DATE'
    end
    object fdtrent_itemRENT_RENT_LASTDATE: TDateField
      FieldName = 'RENT_RENT_LASTDATE'
      Origin = 'RENT_RENT_LASTDATE'
    end
    object fdtrent_itemRENT_RENT_PHOTO: TBlobField
      FieldName = 'RENT_RENT_PHOTO'
      Origin = 'RENT_RENT_PHOTO'
    end
  end
  object FDQuery1: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT MAX(RENT_NUM) FROM RENTLIST')
    Left = 616
    Top = 16
  end
  object fdtRent_det: TFDTable
    Active = True
    IndexFieldNames = 'RENT_RENT_NUM'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'RENT_DET_RENTLIST'
    UpdateOptions.AutoIncFields = 'RENT_RENT_NUM'
    TableName = 'RENT_DET_RENTLIST'
    Left = 232
    Top = 16
    object fdtRent_detRENT_RENT_INDEX: TIntegerField
      DisplayLabel = #51204#54364#48264#54840
      DisplayWidth = 5
      FieldName = 'RENT_RENT_INDEX'
      Origin = 'RENT_RENT_INDEX'
    end
    object fdtRent_detRENT_RENT_NUM: TFDAutoIncField
      DisplayLabel = #49692#48264
      DisplayWidth = 5
      FieldName = 'RENT_RENT_NUM'
      Origin = 'RENT_RENT_NUM'
      ProviderFlags = [pfInUpdate, pfInWhere]
      IdentityInsert = True
    end
    object fdtRent_detRENT_RENT_ITEM_NUM: TIntegerField
      DisplayLabel = #44277#44396#48264#54840
      DisplayWidth = 5
      FieldName = 'RENT_RENT_ITEM_NUM'
      Origin = 'RENT_RENT_ITEM_NUM'
    end
    object fdtRent_detRENT_RENT_DATE: TDateField
      DisplayLabel = #45824#50668#51068#51088
      DisplayWidth = 5
      FieldName = 'RENT_RENT_DATE'
      Origin = 'RENT_RENT_DATE'
    end
    object fdtRent_detRENT_RENT_LASTDATE: TDateField
      DisplayLabel = #48152#45225#51068
      DisplayWidth = 5
      FieldName = 'RENT_RENT_LASTDATE'
      Origin = 'RENT_RENT_LASTDATE'
    end
    object fdtRent_detRENT_RENT_PHOTO: TBlobField
      DisplayLabel = #49324#51652
      DisplayWidth = 5
      FieldName = 'RENT_RENT_PHOTO'
      Origin = 'RENT_RENT_PHOTO'
    end
  end
end
