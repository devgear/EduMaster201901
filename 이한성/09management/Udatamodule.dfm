object udata: Tudata
  OldCreateOrder = False
  Height = 283
  Width = 566
  object FDConnection1: TFDConnection
    Params.Strings = (
      'ConnectionDef=data')
    Connected = True
    LoginPrompt = False
    Left = 40
    Top = 48
  end
  object CUSQUERY: TFDQuery
    Active = True
    Connection = FDConnection1
    UpdateOptions.AutoIncFields = 'CUS_NUMBER'
    SQL.Strings = (
      'SELECT * FROM CUSTOMER1')
    Left = 112
    Top = 48
    object CUSQUERYCUS_NUMBER: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = #44144#47000#52376#48264#54840
      DisplayWidth = 5
      FieldName = 'CUS_NUMBER'
      Origin = 'CUS_NUMBER'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CUSQUERYCUS_NAME: TWideStringField
      DisplayLabel = #44144#47000#52376#47749
      DisplayWidth = 10
      FieldName = 'CUS_NAME'
      Origin = 'CUS_NAME'
      FixedChar = True
      Size = 80
    end
    object CUSQUERYCUS_CUSNUM: TWideStringField
      DisplayLabel = #44144#47000#52376#51204#54868#48264#54840
      DisplayWidth = 10
      FieldName = 'CUS_CUSNUM'
      Origin = 'CUS_CUSNUM'
      FixedChar = True
      Size = 44
    end
    object CUSQUERYCUS_EMAIL: TWideStringField
      DisplayLabel = #51060#47700#51068
      DisplayWidth = 10
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
      FieldName = 'CUS_PHONE'
      Origin = 'CUS_PHONE'
      FixedChar = True
      Size = 44
    end
    object CUSQUERYCUS_NAME1: TWideStringField
      DisplayLabel = #45812#45817#51088#51060#47492
      FieldName = 'CUS_NAME1'
      Origin = 'CUS_NAME1'
      FixedChar = True
      Size = 40
    end
    object CUSQUERYCUS_CARNUM: TWideStringField
      DisplayLabel = #52264#51333
      FieldName = 'CUS_CARNUM'
      Origin = 'CUS_CARNUM'
      FixedChar = True
      Size = 40
    end
    object CUSQUERYCUS_BIGO: TWideStringField
      DisplayLabel = #48708#44256
      FieldName = 'CUS_BIGO'
      Origin = 'CUS_BIGO'
      FixedChar = True
      Size = 2000
    end
    object CUSQUERYCUS_COPY: TBlobField
      FieldName = 'CUS_COPY'
      Origin = 'CUS_COPY'
    end
  end
  object itemquery: TFDQuery
    Active = True
    Connection = FDConnection1
    UpdateOptions.AutoIncFields = 'ITEM_NUMBER'
    SQL.Strings = (
      'SELECT * FROM Itemlist')
    Left = 176
    Top = 48
    object itemqueryITEM_NUMBER: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = #44277#44396#48264#54840
      DisplayWidth = 10
      FieldName = 'ITEM_NUMBER'
      Origin = 'ITEM_NUMBER'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object itemqueryItem_category: TStringField
      DisplayLabel = #52852#53580#44256#47532
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'Item_category'
      Size = 15
      Calculated = True
    end
    object itemqueryITEM_NAME: TWideStringField
      DisplayLabel = #44277#44396#51060#47492
      DisplayWidth = 23
      FieldName = 'ITEM_NAME'
      Origin = 'ITEM_NAME'
      FixedChar = True
      Size = 80
    end
    object itemqueryITEM_MAKER: TWideStringField
      DisplayLabel = #51228#51312#49324
      DisplayWidth = 21
      FieldName = 'ITEM_MAKER'
      Origin = 'ITEM_MAKER'
      FixedChar = True
      Size = 44
    end
    object itemqueryITEM_OWNERT: TWideStringField
      DisplayLabel = #49548#50976#44396#48516
      DisplayWidth = 10
      FieldName = 'ITEM_OWNERT'
      Origin = 'ITEM_OWNERT'
      FixedChar = True
      Size = 40
    end
    object itemqueryITEM_LASTRENT: TWideStringField
      DisplayLabel = #52572#44540' '#45824#50668#51068
      DisplayWidth = 23
      FieldName = 'ITEM_LASTRENT'
      Origin = 'ITEM_LASTRENT'
      FixedChar = True
      Size = 320
    end
    object itemqueryITEM_LASTCUS: TWideStringField
      DisplayLabel = #52572#44540' '#45824#50668#51088
      DisplayWidth = 12
      FieldName = 'ITEM_LASTCUS'
      Origin = 'ITEM_LASTCUS'
      FixedChar = True
      Size = 44
    end
    object itemqueryITEM_BIGO: TWideStringField
      DisplayLabel = #48708#44256
      DisplayWidth = 400
      FieldName = 'ITEM_BIGO'
      Origin = 'ITEM_BIGO'
      FixedChar = True
      Size = 400
    end
    object itemqueryITEM_PHOTO: TBlobField
      DisplayLabel = #49324#51652
      DisplayWidth = 10
      FieldName = 'ITEM_PHOTO'
      Origin = 'ITEM_PHOTO'
    end
  end
  object rentquery: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM RENTLIST')
    Left = 240
    Top = 48
    object rentqueryRENT_NUM: TIntegerField
      DisplayLabel = #51204#54364#48264#54840
      FieldName = 'RENT_NUM'
      Origin = 'RENT_NUM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object rentqueryRENT_CUS_NUM: TWideStringField
      DisplayLabel = #44144#47000#52376#48264#54840
      FieldName = 'RENT_CUS_NUM'
      Origin = 'RENT_CUS_NUM'
      FixedChar = True
      Size = 80
    end
    object rentqueryRENT_DATE: TWideStringField
      DisplayLabel = #45824#50668#51068
      FieldName = 'RENT_DATE'
      Origin = 'RENT_DATE'
      FixedChar = True
      Size = 44
    end
    object rentqueryRENT_PHOTO: TBlobField
      DisplayLabel = #49324#51652
      FieldName = 'RENT_PHOTO'
      Origin = 'RENT_PHOTO'
    end
  end
  object rent_detquery: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM rent_det_rentlist')
    Left = 304
    Top = 48
    object rent_detqueryRENT_RENT_NUM: TIntegerField
      DisplayLabel = #49692#48264
      FieldName = 'RENT_RENT_NUM'
      Origin = 'RENT_RENT_NUM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object rent_detqueryRENT_RENT_CUS: TWideStringField
      DisplayLabel = #44144#47000#52376#48264#54840
      FieldName = 'RENT_RENT_CUS'
      Origin = 'RENT_RENT_CUS'
      FixedChar = True
      Size = 80
    end
    object rent_detqueryRENT_RENT_ITEM_NUM: TWideStringField
      DisplayLabel = #44277#44396#48264#54840
      FieldName = 'RENT_RENT_ITEM_NUM'
      Origin = 'RENT_RENT_ITEM_NUM'
      FixedChar = True
      Size = 44
    end
    object rent_detqueryRENT_RENT_LASTDATE: TBlobField
      DisplayLabel = #52572#51333#45824#50668#51068
      FieldName = 'RENT_RENT_LASTDATE'
      Origin = 'RENT_RENT_LASTDATE'
    end
  end
  object fdtRent_detExec: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM rent_det_rentlist')
    Left = 464
    Top = 48
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
  object fdtRent_det: TFDTable
    Active = True
    Filtered = True
    IndexFieldNames = 'RENT_RENT_NUM'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'Rent_det_rentlist'
    TableName = 'Rent_det_rentlist'
    Left = 400
    Top = 48
  end
  object fdtrent_item: TFDTable
    Active = True
    Filtered = True
    IndexFieldNames = 'RENT_RENT_ITEM_NUM'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'RENT_DET_RENTLIST'
    TableName = 'RENT_DET_RENTLIST'
    Left = 344
    Top = 136
  end
end
