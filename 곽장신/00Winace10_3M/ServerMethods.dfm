object ServerMethods1: TServerMethods1
  OldCreateOrder = False
  Height = 491
  Width = 366
  object FDConnection: TFDConnection
    Params.Strings = (
      'ConnectionDef=WAPLUS')
    Connected = True
    LoginPrompt = False
    Left = 38
    Top = 15
  end
  object FDGUIxWaitCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 246
    Top = 16
  end
  object FDPhysFBDriverLink: TFDPhysFBDriverLink
    Left = 134
    Top = 16
  end
  object tqEmpPrgUseInq: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'SELECT EMP.EMPNO, EMP.EMPNAME'
      ' FROM EMP EMP '
      'WHERE EMP.ISPRGUSE=:pIsPrgUse'
      'ORDER BY EMP.EMPCODE')
    Left = 40
    Top = 73
    ParamData = <
      item
        Name = 'PISPRGUSE'
        DataType = ftWideString
        ParamType = ptInput
        Size = 1
        Value = Null
      end>
  end
  object dspEmpPrgUseInq: TDataSetProvider
    DataSet = tqEmpPrgUseInq
    Left = 128
    Top = 73
  end
  object tqCust: TFDQuery
    Connection = FDConnection
    Left = 48
    Top = 377
  end
  object dspCust: TDataSetProvider
    DataSet = tqCust
    Left = 96
    Top = 385
  end
  object tqItem: TFDQuery
    Connection = FDConnection
    Left = 48
    Top = 281
  end
  object dspItem: TDataSetProvider
    DataSet = tqItem
    Left = 104
    Top = 281
  end
  object tqLItem: TFDQuery
    Connection = FDConnection
    Left = 48
    Top = 331
  end
  object dspLItem: TDataSetProvider
    DataSet = tqLItem
    Left = 104
    Top = 331
  end
  object tqEst: TFDQuery
    Connection = FDConnection
    Left = 40
    Top = 171
  end
  object dspEst: TDataSetProvider
    DataSet = tqEst
    Left = 104
    Top = 171
  end
  object tqEstD: TFDQuery
    Connection = FDConnection
    Left = 40
    Top = 219
  end
  object dspEstD: TDataSetProvider
    DataSet = tqEstD
    Left = 104
    Top = 219
  end
  object tqGlobalCCInq: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'SELECT GLOBALDS.G_CLASS , GLOBALDS.G_CODE , GLOBALDS.G_NAME , '
      ' GLOBALDS.G_PARAM1 , GLOBALDS.G_YN , GLOBALDS.G_PARAM2 ,'
      ' GLOBALDS.G_NAME2 , GLOBALDS.G_DEALNO'
      'FROM GLOBALDS GLOBALDS'
      'WHERE GLOBALDS.G_CLASS=:pClass'
      '  AND GLOBALDS.G_CODE=:pCode'
      'ORDER BY GLOBALDS.G_JOBDATETIMEF')
    Left = 40
    Top = 121
    ParamData = <
      item
        Name = 'PCLASS'
        DataType = ftWideString
        ParamType = ptInput
        Size = 50
        Value = Null
      end
      item
        Name = 'PCODE'
        DataType = ftWideString
        ParamType = ptInput
        Size = 50
      end>
    object tqGlobalCCInqG_CLASS: TWideStringField
      FieldName = 'G_CLASS'
      Origin = 'G_CLASS'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 50
    end
    object tqGlobalCCInqG_CODE: TWideStringField
      FieldName = 'G_CODE'
      Origin = 'G_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 50
    end
    object tqGlobalCCInqG_NAME: TWideStringField
      FieldName = 'G_NAME'
      Origin = 'G_NAME'
      Size = 50
    end
    object tqGlobalCCInqG_PARAM1: TWideStringField
      FieldName = 'G_PARAM1'
      Origin = 'G_PARAM1'
      Size = 50
    end
    object tqGlobalCCInqG_YN: TWideStringField
      FieldName = 'G_YN'
      Origin = 'G_YN'
      Size = 1
    end
    object tqGlobalCCInqG_PARAM2: TWideStringField
      FieldName = 'G_PARAM2'
      Origin = 'G_PARAM2'
      Size = 50
    end
    object tqGlobalCCInqG_NAME2: TWideStringField
      FieldName = 'G_NAME2'
      Origin = 'G_NAME2'
      Size = 200
    end
    object tqGlobalCCInqG_DEALNO: TIntegerField
      FieldName = 'G_DEALNO'
      Origin = 'G_DEALNO'
    end
  end
  object dspGlobalCCInq: TDataSetProvider
    DataSet = tqGlobalCCInq
    Left = 128
    Top = 121
  end
end
