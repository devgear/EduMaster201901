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
      FieldName = 'CUS_PHONE'
      Origin = 'CUS_PHONE'
      FixedChar = True
      Size = 44
    end
    object CUSQUERYCUS_NAME1: TWideStringField
      FieldName = 'CUS_NAME1'
      Origin = 'CUS_NAME1'
      FixedChar = True
      Size = 40
    end
    object CUSQUERYCUS_CARNUM: TWideStringField
      FieldName = 'CUS_CARNUM'
      Origin = 'CUS_CARNUM'
      FixedChar = True
      Size = 40
    end
    object CUSQUERYCUS_BIGO: TWideStringField
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
  end
  object rent_detquery: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM rent_det_rentlist')
    Left = 304
    Top = 48
  end
end
