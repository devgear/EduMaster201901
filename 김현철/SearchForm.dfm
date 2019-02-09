object frmSearch: TfrmSearch
  Left = 0
  Top = 0
  Caption = 'frmSearch'
  ClientHeight = 397
  ClientWidth = 515
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 18
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 515
    Height = 73
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 27
      Width = 54
      Height = 18
      Caption = #54665#49324#47749' : '
    end
    object Edit1: TEdit
      Left = 72
      Top = 24
      Width = 121
      Height = 26
      TabOrder = 0
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 73
    Width = 515
    Height = 324
    Align = alClient
    DataSource = DataSource1
    Options = [dgEditing, dgAlwaysShowEditor, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'name'
        Visible = True
      end>
  end
  object DataSource1: TDataSource
    DataSet = FDTablePartner
    Left = 328
    Top = 168
  end
  object FDTableEvent: TFDTable
    IndexFieldNames = 'serial'
    Connection = DataModule1.FDConnection1
    UpdateOptions.UpdateTableName = 'event_name'
    TableName = 'event_name'
    Left = 192
    Top = 168
  end
  object FDTablePartner: TFDTable
    IndexFieldNames = 'serial'
    Connection = DataModule1.FDConnection1
    UpdateOptions.UpdateTableName = 'partner'
    TableName = 'partner'
    Left = 192
    Top = 232
  end
end
