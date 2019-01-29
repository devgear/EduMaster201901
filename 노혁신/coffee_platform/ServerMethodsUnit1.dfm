object ServerMethods1: TServerMethods1
  OldCreateOrder = False
  Height = 407
  Width = 594
  object FDConnection1: TFDConnection
    Params.Strings = (
      'ConnectionDef=Coffee')
    Connected = True
    LoginPrompt = False
    Left = 24
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
  object Tb_Biz: TFDTable
    Active = True
    IndexFieldNames = 'BIZ_NUM'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'TB_BIZ'
    TableName = 'TB_BIZ'
    Left = 24
    Top = 72
  end
  object Tb_BizProvider: TDataSetProvider
    DataSet = Tb_Biz
    Left = 24
    Top = 128
  end
  object SignUpQuery: TFDQuery
    ConnectionName = 'Coffee'
    SQL.Strings = (
      
        'insert into tb_biz (biz_num, pw, name, addr) values ( :biz_num, ' +
        ':pw, :name, :addr )'
      '')
    Left = 280
    Top = 176
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
  object Tb_Biz_Info: TFDTable
    Active = True
    IndexFieldNames = 'BIZ_CODE'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'TB_BIZ_INFO'
    TableName = 'TB_BIZ_INFO'
    Left = 96
    Top = 72
    object Tb_Biz_InfoBIZ_CODE: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'BIZ_CODE'
      Origin = 'BIZ_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Tb_Biz_InfoCONTENT: TStringField
      FieldName = 'CONTENT'
      Origin = 'CONTENT'
      Size = 50
    end
    object Tb_Biz_InfoAMENITY: TStringField
      FieldName = 'AMENITY'
      Origin = 'AMENITY'
      Size = 100
    end
    object Tb_Biz_InfoSIG_IMG: TBlobField
      FieldName = 'SIG_IMG'
      Origin = 'SIG_IMG'
    end
    object Tb_Biz_InfoSIG_NAME: TStringField
      FieldName = 'SIG_NAME'
      Origin = 'SIG_NAME'
      Size = 50
    end
    object Tb_Biz_InfoIMG_1: TBlobField
      FieldName = 'IMG_1'
      Origin = 'IMG_1'
    end
    object Tb_Biz_InfoIMG_2: TBlobField
      FieldName = 'IMG_2'
      Origin = 'IMG_2'
    end
    object Tb_Biz_InfoIMG_3: TBlobField
      FieldName = 'IMG_3'
      Origin = 'IMG_3'
    end
    object Tb_Biz_InfoIMG_4: TBlobField
      FieldName = 'IMG_4'
      Origin = 'IMG_4'
    end
    object Tb_Biz_InfoCOUPON: TIntegerField
      FieldName = 'COUPON'
      Origin = 'COUPON'
    end
  end
  object Tb_Biz_InfoProvider: TDataSetProvider
    DataSet = Tb_Biz_Info
    Left = 96
    Top = 128
  end
end
