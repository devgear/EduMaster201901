object frmCustomer: TfrmCustomer
  Left = 0
  Top = 0
  Caption = #44256#44061#44288#47532
  ClientHeight = 576
  ClientWidth = 783
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 18
  object CategoryPanelGroup1: TCategoryPanelGroup
    Left = 0
    Top = 41
    Width = 783
    Height = 535
    VertScrollBar.Position = 283
    VertScrollBar.Tracking = True
    Align = alClient
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -11
    HeaderFont.Name = 'Tahoma'
    HeaderFont.Style = []
    TabOrder = 0
    ExplicitTop = 0
    ExplicitHeight = 576
    object CategoryPanel8: TCategoryPanel
      Top = 374
      Caption = #44160#49353#47785#47197
      TabOrder = 0
      object DBText1: TDBText
        Left = 352
        Top = 96
        Width = 65
        Height = 17
      end
      object DBText2: TDBText
        Left = 552
        Top = -616
        Width = 65
        Height = 17
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 762
        Height = 174
        Align = alClient
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
            FieldName = 'serial'
            Title.Caption = #44256#44061#48264#54840
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
            FieldName = 'office_name'
            Title.Caption = #51649#51109
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'office_position'
            Title.Caption = #51649#50948
            Visible = True
          end>
      end
      object DBEdit16: TDBEdit
        Left = 584
        Top = -608
        Width = 121
        Height = 26
        TabOrder = 1
      end
    end
    object CategoryPanel7: TCategoryPanel
      Top = 174
      Caption = #44160#49353#51312#44148
      TabOrder = 1
      object Label16: TLabel
        Left = 15
        Top = 16
        Width = 49
        Height = 18
        Caption = 'Label16'
      end
      object Edit1: TEdit
        Left = 64
        Top = 8
        Width = 121
        Height = 26
        TabOrder = 0
        Text = 'Edit1'
      end
      object Edit2: TEdit
        Left = 248
        Top = 8
        Width = 121
        Height = 26
        TabOrder = 1
        Text = 'Edit2'
      end
    end
    object CategoryPanel6: TCategoryPanel
      Top = 46
      Height = 128
      Caption = #47700#47784
      TabOrder = 2
      object DBMemo1: TDBMemo
        Left = 0
        Top = 0
        Width = 762
        Height = 102
        Align = alClient
        DataSource = DataSource1
        TabOrder = 0
      end
    end
    object CategoryPanel3: TCategoryPanel
      Top = -18
      Height = 64
      Caption = #51649#51109' '#51221#48372
      TabOrder = 3
      object Label7: TLabel
        Left = 25
        Top = 16
        Width = 39
        Height = 18
        Caption = #51649#51109#47749
      end
      object Label8: TLabel
        Left = 191
        Top = 11
        Width = 52
        Height = 18
        Caption = #51649#51109#51204#54868
      end
      object Label9: TLabel
        Left = 392
        Top = 15
        Width = 26
        Height = 18
        Caption = #48512#49436
      end
      object Label10: TLabel
        Left = 592
        Top = 11
        Width = 26
        Height = 18
        Caption = #51649#50948
      end
      object DBEdit7: TDBEdit
        Left = 64
        Top = 8
        Width = 121
        Height = 26
        DataField = 'office_name'
        DataSource = DataSource1
        TabOrder = 0
      end
      object DBEdit8: TDBEdit
        Left = 248
        Top = 8
        Width = 121
        Height = 26
        DataField = 'office_phone'
        DataSource = DataSource1
        TabOrder = 1
      end
      object DBEdit9: TDBEdit
        Left = 424
        Top = 8
        Width = 121
        Height = 26
        DataField = 'office_part'
        DataSource = DataSource1
        TabOrder = 2
      end
      object DBEdit10: TDBEdit
        Left = 624
        Top = 8
        Width = 121
        Height = 26
        DataField = 'office_position'
        DataSource = DataSource1
        TabOrder = 3
      end
    end
    object CategoryPanel5: TCategoryPanel
      Top = -106
      Height = 88
      Caption = #44592#45392#51068
      TabOrder = 4
      object Label14: TLabel
        Left = 37
        Top = 11
        Width = 26
        Height = 18
        Caption = #49373#51068
      end
      object Label15: TLabel
        Left = 359
        Top = 11
        Width = 65
        Height = 18
        Caption = #44208#54844#44592#45392#51068
      end
      object DBEdit14: TDBEdit
        Left = 64
        Top = 8
        Width = 121
        Height = 26
        DataField = 'birhtday'
        DataSource = DataSource1
        TabOrder = 0
      end
      object DBEdit15: TDBEdit
        Left = 424
        Top = 8
        Width = 121
        Height = 26
        DataField = 'anniversary'
        DataSource = DataSource1
        TabOrder = 1
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 191
        Top = 8
        Width = 130
        Height = 49
        Caption = #49373#51068' '#44396#48516
        Columns = 2
        Items.Strings = (
          #50577#47141
          #51020#47141)
        TabOrder = 2
      end
    end
    object CategoryPanel4: TCategoryPanel
      Top = -178
      Height = 72
      Caption = #44288#49900#49324
      TabOrder = 5
      object Label11: TLabel
        Left = 37
        Top = 11
        Width = 26
        Height = 18
        Caption = #51649#50629
      end
      object Label12: TLabel
        Left = 222
        Top = 11
        Width = 26
        Height = 18
        Caption = #51333#44368
      end
      object Label13: TLabel
        Left = 392
        Top = 11
        Width = 26
        Height = 18
        Caption = #52712#48120
      end
      object DBEdit11: TDBEdit
        Left = 64
        Top = 8
        Width = 121
        Height = 26
        DataField = 'job'
        DataSource = DataSource1
        TabOrder = 0
      end
      object DBEdit12: TDBEdit
        Left = 248
        Top = 8
        Width = 121
        Height = 26
        DataField = 'religion'
        DataSource = DataSource1
        TabOrder = 1
      end
      object DBEdit13: TDBEdit
        Left = 424
        Top = 8
        Width = 121
        Height = 26
        DataField = 'hobby'
        DataSource = DataSource1
        TabOrder = 2
      end
    end
    object CategoryPanel1: TCategoryPanel
      Top = -283
      Height = 105
      Caption = #44592#48376#51221#48372
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      object Label1: TLabel
        Left = 25
        Top = 16
        Width = 39
        Height = 18
        Caption = #44256#44061#47749
      end
      object Label2: TLabel
        Left = 209
        Top = 11
        Width = 39
        Height = 18
        Caption = #50689#47928#47749
      end
      object Label3: TLabel
        Left = 384
        Top = 43
        Width = 39
        Height = 18
        Caption = #44144#47000#52376
      end
      object Label4: TLabel
        Left = 579
        Top = 43
        Width = 39
        Height = 18
        Caption = #45812#45817#51088
      end
      object Label5: TLabel
        Left = 25
        Top = 48
        Width = 39
        Height = 18
        Caption = #55092#45824#54256
      end
      object Label6: TLabel
        Left = 209
        Top = 43
        Width = 39
        Height = 18
        Caption = #51060#47700#51068
      end
      object Label18: TLabel
        Left = 566
        Top = 16
        Width = 52
        Height = 18
        Caption = #44256#44061#48264#54840
      end
      object DBEdit1: TDBEdit
        Left = 64
        Top = 8
        Width = 121
        Height = 26
        DataField = 'name'
        DataSource = DataSource1
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 248
        Top = 8
        Width = 121
        Height = 26
        DataField = 'name_english'
        DataSource = DataSource1
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 424
        Top = 40
        Width = 121
        Height = 26
        DataField = 'partner'
        DataSource = DataSource1
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 624
        Top = 40
        Width = 121
        Height = 26
        DataField = 'manager'
        DataSource = DataSource1
        TabOrder = 3
      end
      object DBEdit5: TDBEdit
        Left = 64
        Top = 40
        Width = 121
        Height = 26
        DataField = 'phone'
        DataSource = DataSource1
        TabOrder = 4
      end
      object DBEdit6: TDBEdit
        Left = 248
        Top = 40
        Width = 121
        Height = 26
        DataField = 'email'
        DataSource = DataSource1
        TabOrder = 5
      end
      object DBEdit18: TDBEdit
        Left = 624
        Top = 8
        Width = 121
        Height = 26
        DataField = 'serial'
        DataSource = DataSource1
        ReadOnly = True
        TabOrder = 6
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 783
    Height = 41
    Align = alTop
    TabOrder = 1
    ExplicitLeft = 304
    ExplicitTop = 288
    ExplicitWidth = 185
    object DBNavigator1: TDBNavigator
      Left = 272
      Top = 8
      Width = 240
      Height = 25
      DataSource = DataSource1
      TabOrder = 0
    end
  end
  object DataSource1: TDataSource
    DataSet = FDTable1
    Left = 480
    Top = 441
  end
  object FDTable1: TFDTable
    Active = True
    IndexFieldNames = 'serial'
    Connection = DataModule1.FDConnection1
    UpdateOptions.UpdateTableName = 'customer'
    TableName = 'customer'
    Left = 440
    Top = 441
  end
end
