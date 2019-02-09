object frmPartner: TfrmPartner
  Left = 0
  Top = 0
  Caption = 'frmPartner'
  ClientHeight = 546
  ClientWidth = 853
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
    Top = 0
    Width = 853
    Height = 225
    Align = alTop
    TabOrder = 0
    ExplicitTop = -6
    object Label1: TLabel
      Left = 33
      Top = 32
      Width = 49
      Height = 18
      Caption = #49345#54840#47749' :'
    end
    object Label2: TLabel
      Left = 32
      Top = 64
      Width = 49
      Height = 18
      Caption = #45824#54364#51088' :'
    end
    object Label3: TLabel
      Left = 33
      Top = 97
      Width = 49
      Height = 18
      Caption = #50672#46973#52376' :'
    end
    object Label4: TLabel
      Left = 239
      Top = 95
      Width = 36
      Height = 18
      Caption = 'FAX :'
    end
    object Label5: TLabel
      Left = 438
      Top = 95
      Width = 40
      Height = 18
      Caption = 'Web :'
    end
    object Label6: TLabel
      Left = 216
      Top = 64
      Width = 62
      Height = 18
      Caption = #45812#45817#48512#49436' :'
    end
    object Label7: TLabel
      Left = 429
      Top = 64
      Width = 49
      Height = 18
      Caption = #45812#45817#51088' :'
    end
    object DBNavigator1: TDBNavigator
      Left = 376
      Top = 176
      Width = 240
      Height = 25
      DataSource = DataSource1
      TabOrder = 0
    end
    object DBEdit1: TDBEdit
      Left = 88
      Top = 24
      Width = 121
      Height = 26
      DataField = 'name'
      DataSource = DataSource1
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 88
      Top = 56
      Width = 121
      Height = 26
      DataField = 'president'
      DataSource = DataSource1
      TabOrder = 2
    end
    object DBEdit3: TDBEdit
      Left = 88
      Top = 88
      Width = 121
      Height = 26
      DataField = 'phone'
      DataSource = DataSource1
      TabOrder = 5
    end
    object DBEdit4: TDBEdit
      Left = 280
      Top = 88
      Width = 121
      Height = 26
      DataField = 'fax'
      DataSource = DataSource1
      TabOrder = 6
    end
    object DBEdit5: TDBEdit
      Left = 480
      Top = 92
      Width = 121
      Height = 26
      DataField = 'website'
      DataSource = DataSource1
      TabOrder = 7
    end
    object DBMemo1: TDBMemo
      Left = 88
      Top = 121
      Width = 265
      Height = 89
      DataField = 'memo'
      DataSource = DataSource1
      TabOrder = 8
    end
    object DBEdit6: TDBEdit
      Left = 280
      Top = 56
      Width = 121
      Height = 26
      DataField = 'department'
      DataSource = DataSource1
      TabOrder = 3
    end
    object DBEdit7: TDBEdit
      Left = 480
      Top = 56
      Width = 121
      Height = 26
      DataField = 'manager'
      DataSource = DataSource1
      TabOrder = 4
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 225
    Width = 853
    Height = 321
    Align = alClient
    DataSource = DataSource1
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
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
        Width = 182
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'president'
        Width = 187
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'phone'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fax'
        Width = 122
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'website'
        Visible = True
      end>
  end
  object FDTable1: TFDTable
    IndexFieldNames = 'serial'
    Connection = DataModule1.FDConnection1
    UpdateOptions.UpdateTableName = 'partner'
    TableName = 'partner'
    Left = 248
    Top = 320
  end
  object DataSource1: TDataSource
    DataSet = FDTable1
    Left = 352
    Top = 328
  end
end
