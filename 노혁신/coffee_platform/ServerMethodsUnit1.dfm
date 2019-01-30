object ServerMethods1: TServerMethods1
  OldCreateOrder = False
  Height = 689
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
      'INSERT INTO TB_BIZ (BIZ_NUM, PW, NAME, ADDR) '
      'VALUES ( :BIZ_NUM, :PW, :NAME, :ADDR);'
      ''
      ''
      ''
      '')
    Left = 288
    Top = 72
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
    Left = 112
    Top = 72
  end
  object Tb_Biz_InfoProvider: TDataSetProvider
    DataSet = Tb_Biz_Info
    Left = 112
    Top = 128
  end
  object DupChkQuery: TFDQuery
    ConnectionName = 'Coffee'
    SQL.Strings = (
      'SELECT COUNT(BIZ_CODE) AS DUPCNT FROM TB_BIZ'
      'WHERE BIZ_NUM = :BIZ_NUM')
    Left = 208
    Top = 72
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
    Left = 368
    Top = 72
  end
  object SignInQuery: TFDQuery
    Active = True
    ConnectionName = 'Coffee'
    SQL.Strings = (
      'SELECT BIZ_CODE, NAME, ADDR, TEL FROM TB_BIZ'
      'WHERE BIZ_NUM = :BIZ_NUM AND PW = :PW')
    Left = 208
    Top = 192
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
      end>
  end
  object BizInfoQuery: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select * from tb_biz_info'
      'where biz_code = :biz_code')
    Left = 208
    Top = 256
    ParamData = <
      item
        Name = 'BIZ_CODE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object SignInQueryProvider: TDataSetProvider
    DataSet = SignInQuery
    Left = 296
    Top = 192
  end
  object BizInfoQueryProvider: TDataSetProvider
    DataSet = BizInfoQuery
    Left = 296
    Top = 256
  end
end
