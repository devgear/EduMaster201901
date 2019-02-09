object frmManageEvent: TfrmManageEvent
  Left = 0
  Top = 0
  Caption = #54665#49324#47749' '#44288#47532
  ClientHeight = 515
  ClientWidth = 478
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnDeactivate = FormDeactivate
  PixelsPerInch = 96
  TextHeight = 18
  object Panel1: TPanel
    Left = 0
    Top = 424
    Width = 478
    Height = 91
    Align = alBottom
    TabOrder = 0
    object DBNavigator1: TDBNavigator
      Left = 112
      Top = 32
      Width = 240
      Height = 22
      DataSource = DataSource1
      TabOrder = 0
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 81
    Width = 478
    Height = 343
    Align = alClient
    DataSource = DataSource1
    Options = [dgEditing, dgAlwaysShowEditor, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'name'
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 478
    Height = 81
    Align = alTop
    TabOrder = 2
    object Label1: TLabel
      Left = 8
      Top = 31
      Width = 49
      Height = 18
      Caption = #54665#49324#47749' :'
    end
    object DBEdit1: TDBEdit
      Left = 63
      Top = 28
      Width = 121
      Height = 26
      DataField = 'name'
      DataSource = DataSource1
      TabOrder = 0
    end
  end
  object FDTable1: TFDTable
    IndexFieldNames = 'name'
    Connection = DataModule1.FDConnection1
    UpdateOptions.UpdateTableName = 'event_name'
    TableName = 'event_name'
    Left = 232
    Top = 264
  end
  object DataSource1: TDataSource
    DataSet = FDTable1
    Left = 296
    Top = 264
  end
end
