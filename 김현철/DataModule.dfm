object DataModule1: TDataModule1
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 169
  Width = 294
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=D:\DelphiProject\EduMaster201901\'#44608#54788#52384'\ttms.sdb'
      'DriverID=SQLite')
    Connected = True
    Left = 55
    Top = 96
  end
  object FDQueryManager: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * '
      'FROM manager'
      'WHERE pass = :pass')
    Left = 159
    Top = 94
    ParamData = <
      item
        Name = 'PASS'
        DataType = ftString
        ParamType = ptInput
        Value = '1234'
      end>
  end
end
