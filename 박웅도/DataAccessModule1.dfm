object dm: Tdm
  OldCreateOrder = False
  Height = 355
  Width = 492
  object condevice: TFDConnection
    Params.Strings = (
      'ConnectionDef=telme')
    Connected = True
    Left = 104
    Top = 32
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 240
    Top = 64
  end
  object FDPhysIBDriverLink1: TFDPhysIBDriverLink
    Left = 296
    Top = 64
  end
  object tbdevice: TFDTable
    Active = True
    IndexName = 'I_NAME'
    Connection = condevice
    UpdateOptions.UpdateTableName = 'TABLE1'
    TableName = 'TABLE1'
    Left = 32
    Top = 112
  end
  object dsdevice: TDataSource
    DataSet = tbdevice
    Left = 96
    Top = 112
  end
end
