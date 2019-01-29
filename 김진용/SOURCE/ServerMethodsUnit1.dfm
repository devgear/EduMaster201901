object ServerMethods1: TServerMethods1
  OldCreateOrder = False
  Height = 478
  Width = 680
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=C:\DB\JY_Project\TESTDB2.IB'
      'User_Name=sysdba'
      'Password=masterkey'
      'CharacterSet=UTF8'
      'DriverID=IB')
    Connected = True
    LoginPrompt = False
    Left = 72
    Top = 48
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 176
    Top = 56
  end
  object tb_DEliveryMan: TFDTable
    Active = True
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'DELIVERYMAN'
    TableName = 'DELIVERYMAN'
    Left = 72
    Top = 152
    object tb_DEliveryManDELI_MAN_SEQ: TIntegerField
      FieldName = 'DELI_MAN_SEQ'
      Origin = 'DELI_MAN_SEQ'
      Required = True
    end
    object tb_DEliveryManDELI_MAN_NM: TWideStringField
      FieldName = 'DELI_MAN_NM'
      Origin = 'DELI_MAN_NM'
      Required = True
      Size = 40
    end
    object tb_DEliveryManDELI_MAN_SEX: TIntegerField
      FieldName = 'DELI_MAN_SEX'
      Origin = 'DELI_MAN_SEX'
      Required = True
    end
    object tb_DEliveryManDELI_MAN_AGE: TIntegerField
      FieldName = 'DELI_MAN_AGE'
      Origin = 'DELI_MAN_AGE'
      Required = True
    end
    object tb_DEliveryManDELI_MAN_PHONE: TWideStringField
      FieldName = 'DELI_MAN_PHONE'
      Origin = 'DELI_MAN_PHONE'
      Required = True
      Size = 80
    end
    object tb_DEliveryManDELI_MAN_OFFICE: TWideStringField
      FieldName = 'DELI_MAN_OFFICE'
      Origin = 'DELI_MAN_OFFICE'
      Required = True
      Size = 120
    end
    object tb_DEliveryManDELI_MAN_ADDR: TWideStringField
      FieldName = 'DELI_MAN_ADDR'
      Origin = 'DELI_MAN_ADDR'
      Required = True
      Size = 800
    end
    object tb_DEliveryManDELI_MAN_DELICOUNT: TIntegerField
      FieldName = 'DELI_MAN_DELICOUNT'
      Origin = 'DELI_MAN_DELICOUNT'
    end
    object tb_DEliveryManDELI_MAN_ST: TWideStringField
      FieldName = 'DELI_MAN_ST'
      Origin = 'DELI_MAN_ST'
      Required = True
      Size = 4
    end
    object tb_DEliveryManDELI_MAN_DNTIME: TWideStringField
      FieldName = 'DELI_MAN_DNTIME'
      Origin = 'DELI_MAN_DNTIME'
      Size = 48
    end
    object tb_DEliveryManDELI_MAN_DLTIME: TWideStringField
      FieldName = 'DELI_MAN_DLTIME'
      Origin = 'DELI_MAN_DLTIME'
      Size = 48
    end
    object tb_DEliveryManDELI_MAN_CMT: TWideStringField
      FieldName = 'DELI_MAN_CMT'
      Origin = 'DELI_MAN_CMT'
      Size = 4000
    end
  end
  object dsp_DeliveryMan: TDataSetProvider
    DataSet = tb_DEliveryMan
    Left = 72
    Top = 216
  end
end
