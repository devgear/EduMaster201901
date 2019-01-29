object frmManager: TfrmManager
  Left = 0
  Top = 0
  Caption = #50516#54840#44288#47532
  ClientHeight = 439
  ClientWidth = 550
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 18
  object Label1: TLabel
    Left = 104
    Top = 64
    Width = 26
    Height = 18
    Caption = #49457#47749
  end
  object Label2: TLabel
    Left = 336
    Top = 64
    Width = 26
    Height = 18
    Caption = #50516#54840
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 256
    Width = 550
    Height = 183
    Align = alBottom
    DataSource = DataSource1
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 216
    Top = 208
    Width = 240
    Height = 25
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit1: TDBEdit
    Left = 160
    Top = 61
    Width = 121
    Height = 26
    DataField = 'name'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 368
    Top = 61
    Width = 121
    Height = 26
    DataField = 'pass'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DataSource1: TDataSource
    DataSet = FDTable1
    Left = 288
    Top = 144
  end
  object FDTable1: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'manager'
    TableName = 'manager'
    Left = 192
    Top = 144
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'ConnectionDef=TTMS')
    Connected = True
    Left = 96
    Top = 144
  end
end
