object frmManager: TfrmManager
  Left = 0
  Top = 0
  Caption = #50516#54840#44288#47532
  ClientHeight = 474
  ClientWidth = 634
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
  object DBGrid1: TDBGrid
    Left = 0
    Top = 291
    Width = 634
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
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Title.Caption = 'ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pass'
        Title.Caption = #48708#48128#48264#54840
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'name'
        Title.Caption = #51060#47492
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'phone'
        Title.Caption = #50672#46973#52376
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'email'
        Title.Caption = 'Email'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'auth_reservation'
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 89
    Width = 634
    Height = 202
    Align = alClient
    TabOrder = 1
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 632
      Height = 41
      Align = alTop
      Caption = #51089' '#50629' '#44428' '#54620
      TabOrder = 0
    end
    object DBCheckBox1: TDBCheckBox
      Left = 24
      Top = 64
      Width = 97
      Height = 17
      Caption = #50696#50557#44288#47532
      DataField = 'auth_reservation'
      DataSource = DataSource1
      TabOrder = 1
    end
    object DBCheckBox2: TDBCheckBox
      Left = 152
      Top = 64
      Width = 97
      Height = 17
      Caption = #54665#49324#44288#47532
      DataField = 'auth_event'
      DataSource = DataSource1
      TabOrder = 2
    end
    object DBCheckBox3: TDBCheckBox
      Left = 288
      Top = 64
      Width = 97
      Height = 17
      Caption = #47784#44061#54788#54889
      DataField = 'auth_mogaek'
      DataSource = DataSource1
      TabOrder = 3
    end
    object DBCheckBox4: TDBCheckBox
      Left = 416
      Top = 64
      Width = 97
      Height = 17
      Caption = #44144#47000#52376#44288#47532
      DataField = 'auth_partner'
      DataSource = DataSource1
      TabOrder = 4
    end
    object DBCheckBox5: TDBCheckBox
      Left = 24
      Top = 96
      Width = 97
      Height = 17
      Caption = #51221#49328#44288#47532
      DataField = 'auth_calculate'
      DataSource = DataSource1
      TabOrder = 5
    end
    object DBCheckBox6: TDBCheckBox
      Left = 152
      Top = 96
      Width = 97
      Height = 17
      Caption = #49689#49548#44288#47532
      DataField = 'auth_hotel'
      DataSource = DataSource1
      TabOrder = 6
    end
    object DBCheckBox7: TDBCheckBox
      Left = 288
      Top = 96
      Width = 97
      Height = 17
      Caption = #49688#48520#44288#47532
      DataField = 'auth_subul'
      DataSource = DataSource1
      TabOrder = 7
    end
    object DBCheckBox8: TDBCheckBox
      Left = 24
      Top = 128
      Width = 97
      Height = 17
      Caption = #51077#52636#44552#44288#47532
      DataField = 'auth_banking'
      DataSource = DataSource1
      TabOrder = 8
    end
    object DBCheckBox9: TDBCheckBox
      Left = 288
      Top = 128
      Width = 97
      Height = 17
      Caption = #52712#49548#54788#54889
      DataField = 'auth_cancel'
      DataSource = DataSource1
      TabOrder = 9
    end
    object DBCheckBox10: TDBCheckBox
      Left = 152
      Top = 128
      Width = 97
      Height = 17
      Caption = #54056#53412#51648#44288#47532
      DataField = 'auth_package'
      DataSource = DataSource1
      TabOrder = 10
    end
    object DBCheckBox11: TDBCheckBox
      Left = 416
      Top = 128
      Width = 97
      Height = 17
      Caption = #51088#47308#48372#44288
      DataField = 'auth_backup'
      DataSource = DataSource1
      TabOrder = 11
    end
    object DBCheckBox12: TDBCheckBox
      Left = 24
      Top = 160
      Width = 97
      Height = 17
      Caption = #50516#54840#44288#47532
      DataField = 'auth_manager'
      DataSource = DataSource1
      TabOrder = 12
    end
    object DBCheckBox13: TDBCheckBox
      Left = 416
      Top = 96
      Width = 97
      Height = 17
      Caption = #44256#44061#44288#47532
      DataField = 'auth_customer'
      DataSource = DataSource1
      TabOrder = 13
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 634
    Height = 89
    Align = alTop
    TabOrder = 2
    object Label1: TLabel
      Left = 24
      Top = 23
      Width = 26
      Height = 18
      Caption = #49457#47749
    end
    object Label2: TLabel
      Left = 256
      Top = 23
      Width = 26
      Height = 18
      Caption = #50516#54840
    end
    object DBEdit1: TDBEdit
      Left = 56
      Top = 15
      Width = 121
      Height = 26
      DataField = 'name'
      DataSource = DataSource1
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 288
      Top = 15
      Width = 121
      Height = 26
      DataField = 'pass'
      DataSource = DataSource1
      TabOrder = 1
    end
    object DBNavigator1: TDBNavigator
      Left = 56
      Top = 56
      Width = 240
      Height = 25
      DataSource = DataSource1
      TabOrder = 2
    end
  end
  object DataSource1: TDataSource
    DataSet = FDTable1
    Left = 336
    Top = 368
  end
  object FDTable1: TFDTable
    IndexFieldNames = 'id'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'manager'
    TableName = 'manager'
    Left = 264
    Top = 368
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=C:\Users\healt\Documents\GitProject\'#44608#54788#52384'\ttms.sdb'
      'ConnectionDef=TTMS')
    Left = 184
    Top = 376
  end
end
