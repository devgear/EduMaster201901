object ServerMethods1: TServerMethods1
  OldCreateOrder = False
  Height = 689
  Width = 594
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
    Connection = FDConnection1
    SQL.Strings = (
      'INSERT INTO TB_BIZ (BIZ_NUM, PW, NAME, ADDR) '
      'VALUES (:BIZ_NUM, :PW, :NAME, :ADDR);'
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
    Connection = FDConnection1
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
    Connection = FDConnection1
    SQL.Strings = (
      'INSERT INTO TB_BIZ_INFO (BIZ_CODE) '
      'VALUES (GEN_ID(BIZ_CODE_GEN, 0));')
    Left = 208
    Top = 16
  end
  object SignInQuery: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT BIZ_CODE FROM TB_BIZ'
      'WHERE BIZ_NUM = :BIZ_NUM AND PW = :PW')
    Left = 128
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
      'SELECT * FROM TB_BIZ_INFO'
      'WHERE BIZ_CODE = :BIZ_CODE')
    Left = 128
    Top = 160
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
    Left = 208
    Top = 88
  end
  object BizInfoQueryProvider: TDataSetProvider
    DataSet = BizInfoQuery
    Left = 208
    Top = 160
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      
        'Database=C:\workspace\delphi_project\coffee_platForm_git\'#45432#54785#49888'\cof' +
        'fee_platform\DB\COFFEE.IB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'CharacterSet=UTF8'
      'DriverID=IB')
    Connected = True
    Left = 40
    Top = 24
  end
  object NotifyQuery: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM TB_NOTIFY'
      'WHERE BIZ_CODE = :BIZ_CODE'
      'ORDER BY REG_DATE DESC')
    Left = 128
    Top = 232
    ParamData = <
      item
        Name = 'BIZ_CODE'
        DataType = ftString
        ParamType = ptInput
        Value = '1'
      end>
  end
  object NotifyQueryProvider: TDataSetProvider
    DataSet = NotifyQuery
    Left = 208
    Top = 232
  end
  object NotifyInsQuery: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'INSERT INTO TB_NOTIFY (BIZ_CODE, CONTENT) '
      'VALUES (:BIZ_CODE, :CONTENT);'
      ''
      ''
      '')
    Left = 304
    Top = 232
    ParamData = <
      item
        Name = 'BIZ_CODE'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'CONTENT'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
end
