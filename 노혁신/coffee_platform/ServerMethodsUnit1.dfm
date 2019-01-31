object ServerMethods1: TServerMethods1
  OldCreateOrder = False
  Height = 689
  Width = 594
  object FDConnection1: TFDConnection
    Params.Strings = (
      'ConnectionDef=Coffee')
    Connected = True
    LoginPrompt = False
    Left = 40
    Top = 16
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 530
    Top = 16
  end
  object FDPhysIBDriverLink1: TFDPhysIBDriverLink
    Left = 530
    Top = 64
  end
  object SignUpQuery: TFDQuery
    ConnectionName = 'Coffee'
    SQL.Strings = (
      'INSERT INTO TB_BIZ (BIZ_NUM, PW, NAME, ADDR) '
      'VALUES ( :BIZ_NUM, :PW, :NAME, :ADDR);'
      ''
      ''
      ''
      '')
    Left = 128
    Top = 16
    ParamData = <
      item
        Name = 'BIZ_NUM'
        DataType = ftString
        ParamType = ptInput
        Size = 12
        Value = Null
      end
      item
        Name = 'PW'
        DataType = ftString
        ParamType = ptInput
        Size = 30
      end
      item
        Name = 'NAME'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end
      item
        Name = 'ADDR'
        DataType = ftString
        ParamType = ptInput
        Size = 100
      end>
  end
  object DupChkQuery: TFDQuery
    ConnectionName = 'Coffee'
    SQL.Strings = (
      'SELECT COUNT(BIZ_CODE) AS DUPCNT FROM TB_BIZ'
      'WHERE BIZ_NUM = :BIZ_NUM')
    Left = 296
    Top = 16
    ParamData = <
      item
        Name = 'BIZ_NUM'
        DataType = ftString
        ParamType = ptInput
        Size = 12
        Value = Null
      end>
  end
  object SignUpQuery2: TFDQuery
    ConnectionName = 'Coffee'
    SQL.Strings = (
      'INSERT INTO TB_BIZ_INFO (BIZ_CODE) '
      'VALUES (gen_id(biz_code_gen,0));')
    Left = 208
    Top = 16
  end
  object SignInQuery: TFDQuery
    ConnectionName = 'Coffee'
    SQL.Strings = (
      'SELECT BIZ_CODE FROM TB_BIZ'
      'WHERE BIZ_NUM = :BIZ_NUM AND PW = :PW')
    Left = 40
    Top = 88
    ParamData = <
      item
        Name = 'BIZ_NUM'
        DataType = ftString
        ParamType = ptInput
        Size = 12
        Value = '444-44-44444'
      end
      item
        Name = 'PW'
        DataType = ftString
        ParamType = ptInput
        Size = 30
        Value = '444'
      end>
    object SignInQueryBIZ_CODE: TIntegerField
      FieldName = 'BIZ_CODE'
      Origin = 'BIZ_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object BizInfoQuery: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from tb_biz_info'
      'where biz_code = :biz_code')
    Left = 40
    Top = 216
    ParamData = <
      item
        Name = 'BIZ_CODE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object BizInfoQueryBIZ_CODE: TIntegerField
      FieldName = 'BIZ_CODE'
      Origin = 'BIZ_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object BizInfoQueryCONTENT: TStringField
      FieldName = 'CONTENT'
      Origin = 'CONTENT'
      Size = 200
    end
    object BizInfoQueryAMENITY: TStringField
      FieldName = 'AMENITY'
      Origin = 'AMENITY'
      Size = 400
    end
    object BizInfoQuerySIG_IMG: TBlobField
      FieldName = 'SIG_IMG'
      Origin = 'SIG_IMG'
    end
    object BizInfoQuerySIG_NAME: TStringField
      FieldName = 'SIG_NAME'
      Origin = 'SIG_NAME'
      Size = 200
    end
    object BizInfoQueryIMG_1: TBlobField
      FieldName = 'IMG_1'
      Origin = 'IMG_1'
    end
    object BizInfoQueryIMG_2: TBlobField
      FieldName = 'IMG_2'
      Origin = 'IMG_2'
    end
    object BizInfoQueryIMG_3: TBlobField
      FieldName = 'IMG_3'
      Origin = 'IMG_3'
    end
    object BizInfoQueryIMG_4: TBlobField
      FieldName = 'IMG_4'
      Origin = 'IMG_4'
    end
    object BizInfoQueryCOUPON: TIntegerField
      FieldName = 'COUPON'
      Origin = 'COUPON'
    end
  end
  object SignInQueryProvider: TDataSetProvider
    DataSet = SignInQuery
    Left = 40
    Top = 152
  end
  object BizInfoQueryProvider: TDataSetProvider
    DataSet = BizInfoQuery
    Left = 40
    Top = 280
  end
end
