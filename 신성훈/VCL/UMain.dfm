object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = #49368#48173
  ClientHeight = 559
  ClientWidth = 853
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlHeader: TPanel
    Left = 0
    Top = 0
    Width = 853
    Height = 41
    Align = alTop
    TabOrder = 0
    DesignSize = (
      853
      41)
    object lblCaption: TLabel
      Left = 16
      Top = 14
      Width = 22
      Height = 13
      Caption = #49368#48173
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BtnClose: TButton
      Left = 761
      Top = 7
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #45803#44592
      TabOrder = 0
    end
  end
  object pnlContent: TPanel
    Left = 0
    Top = 41
    Width = 853
    Height = 518
    Align = alClient
    TabOrder = 1
    object Splitter1: TSplitter
      Left = 557
      Top = 1
      Height = 516
      Align = alRight
      ExplicitLeft = 288
      ExplicitTop = 168
      ExplicitHeight = 100
    end
    object pnlGrid: TPanel
      Left = 1
      Top = 1
      Width = 556
      Height = 516
      Align = alClient
      TabOrder = 0
      object TabControl1: TPageControl
        Left = 1
        Top = 1
        Width = 554
        Height = 514
        ActivePage = TabSheet1
        Align = alClient
        TabOrder = 0
        object TabSheet1: TTabSheet
          Caption = #54924#50896#51221#48372
          object Panel1: TPanel
            Left = 0
            Top = 0
            Width = 546
            Height = 41
            Align = alTop
            TabOrder = 0
            object Label12: TLabel
              Left = 6
              Top = 19
              Width = 22
              Height = 13
              Caption = #44160#49353
            end
            object Edit1: TEdit
              Left = 34
              Top = 14
              Width = 151
              Height = 21
              TabOrder = 0
            end
          end
          object GridUser: TStringGrid
            Tag = 6
            Left = 0
            Top = 41
            Width = 546
            Height = 445
            Align = alClient
            ColCount = 6
            FixedCols = 0
            RowCount = 10
            TabOrder = 1
            ColWidths = (
              64
              64
              64
              64
              64
              64)
          end
        end
        object TabSheet2: TTabSheet
          Caption = #49345#54408#51221#48372
          ImageIndex = 1
          object Panel2: TPanel
            Left = 0
            Top = 0
            Width = 546
            Height = 41
            Align = alTop
            TabOrder = 0
            object Label1: TLabel
              Left = 6
              Top = 21
              Width = 22
              Height = 13
              Caption = #44160#49353
            end
            object Edit2: TEdit
              Left = 34
              Top = 14
              Width = 151
              Height = 21
              TabOrder = 0
            end
          end
          object GridPr: TDBGrid
            Left = 0
            Top = 41
            Width = 546
            Height = 445
            Align = alClient
            DataSource = DM.ProductSource
            Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'CODE'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NAME'
                Visible = True
              end>
          end
        end
      end
    end
    object pnlInput: TPanel
      Left = 560
      Top = 1
      Width = 292
      Height = 516
      Align = alRight
      TabOrder = 1
      DesignSize = (
        292
        516)
      object grpUser: TGroupBox
        Left = 6
        Top = 19
        Width = 275
        Height = 208
        Anchors = [akLeft, akTop, akRight]
        Caption = #54924#50896' '#51221#48372
        TabOrder = 0
        DesignSize = (
          275
          208)
        object Label2: TLabel
          Left = 3
          Top = 155
          Width = 11
          Height = 13
          Caption = 'ID'
        end
        object Label3: TLabel
          Left = 3
          Top = 32
          Width = 44
          Height = 13
          Caption = #54924#50896#53076#46300
        end
        object Label4: TLabel
          Left = 171
          Top = 115
          Width = 33
          Height = 13
          Caption = #50672#46973#52376
        end
        object Label8: TLabel
          Left = 3
          Top = 115
          Width = 33
          Height = 13
          Caption = #54617#44368#47749
        end
        object Label9: TLabel
          Left = 103
          Top = 155
          Width = 48
          Height = 13
          Caption = 'PassWord'
        end
        object Label6: TLabel
          Left = 3
          Top = 73
          Width = 22
          Height = 13
          Caption = #51060#47492
        end
        object BtnCodeFind: TButton
          Left = 103
          Top = 47
          Width = 162
          Height = 25
          Caption = #54924#50896#53076#46300' '#44160#49353
          TabOrder = 0
        end
        object EdtID: TDBEdit
          Left = 3
          Top = 174
          Width = 94
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          DataField = 'ID'
          DataSource = DM.UserSource
          TabOrder = 5
        end
        object EdtUserCode: TDBEdit
          Left = 3
          Top = 49
          Width = 94
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          DataField = 'USERCODE'
          DataSource = DM.UserSource
          TabOrder = 1
        end
        object EdtPhone: TDBEdit
          Left = 171
          Top = 132
          Width = 94
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          DataField = 'PHONE'
          DataSource = DM.UserSource
          TabOrder = 3
        end
        object EdtSchool: TDBEdit
          Left = 3
          Top = 132
          Width = 162
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          DataField = 'SCHOOL'
          DataSource = DM.UserSource
          TabOrder = 4
        end
        object EdtPassword: TDBEdit
          Left = 103
          Top = 174
          Width = 162
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          DataField = 'PASSWORD'
          DataSource = DM.UserSource
          TabOrder = 6
        end
        object EdtUserName: TDBEdit
          Left = 3
          Top = 92
          Width = 94
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          DataField = 'NAME'
          DataSource = DM.UserSource
          TabOrder = 2
        end
      end
      object GroupBox2: TGroupBox
        Left = 6
        Top = 281
        Width = 275
        Height = 193
        Anchors = [akLeft, akTop, akRight]
        Caption = #49345#54408' '#51221#48372
        TabOrder = 6
        DesignSize = (
          275
          193)
        object Label5: TLabel
          Left = 3
          Top = 63
          Width = 33
          Height = 13
          Caption = #49345#54408#47749
        end
        object Label7: TLabel
          Left = 152
          Top = 8
          Width = 55
          Height = 13
          Caption = #49345#54408#51060#48120#51648
        end
        object Label10: TLabel
          Left = 3
          Top = 19
          Width = 44
          Height = 13
          Caption = #49345#54408#53076#46300
        end
        object Label11: TLabel
          Left = 3
          Top = 107
          Width = 22
          Height = 13
          Caption = #48516#47448
        end
        object GroupBox3: TGroupBox
          Left = 153
          Top = 24
          Width = 112
          Height = 137
          TabOrder = 0
          object ImgPr: TImage
            Left = 2
            Top = 3
            Width = 108
            Height = 132
            Proportional = True
            Stretch = True
          end
        end
        object BtnPrFind: TButton
          Left = 3
          Top = 165
          Width = 142
          Height = 25
          Caption = #49345#54408' '#44160#49353
          TabOrder = 4
        end
        object EdtPrName: TDBEdit
          Left = 3
          Top = 80
          Width = 142
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          DataField = 'NAME'
          DataSource = DM.ProductSource
          TabOrder = 2
        end
        object EdtPrCode: TDBEdit
          Left = 5
          Top = 36
          Width = 142
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          DataField = 'CODE'
          DataSource = DM.ProductSource
          TabOrder = 1
        end
        object DBEdit5: TDBEdit
          Left = 5
          Top = 126
          Width = 142
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          DataField = 'NAME'
          DataSource = DM.ProductSource
          TabOrder = 3
        end
      end
      object BtnPrRent: TButton
        Left = 87
        Top = 480
        Width = 75
        Height = 25
        Caption = #49345#54408#49688#51221
        TabOrder = 4
      end
      object BtnPrNew: TButton
        Left = 6
        Top = 480
        Width = 75
        Height = 25
        Caption = #49345#54408#46321#47197
        TabOrder = 3
      end
      object BtnPrCancel: TButton
        Left = 165
        Top = 446
        Width = 108
        Height = 25
        Anchors = [akTop, akRight]
        Caption = #49325#51228
        TabOrder = 7
      end
      object BtnUserNew: TButton
        Left = 125
        Top = 233
        Width = 75
        Height = 25
        Caption = #49888#44508#46321#47197
        TabOrder = 1
        OnClick = BtnUserNewClick
      end
      object BtnUserSave: TButton
        Left = 206
        Top = 233
        Width = 75
        Height = 25
        Caption = #51200#51109
        TabOrder = 2
        OnClick = BtnUserSaveClick
      end
      object BtnPrSave: TButton
        Left = 206
        Top = 480
        Width = 75
        Height = 25
        Caption = #49345#54408#51200#51109
        TabOrder = 5
      end
      object BtnUserRent: TButton
        Left = 197
        Top = 97
        Width = 75
        Height = 25
        Caption = #49688#51221#50756#47308
        TabOrder = 8
        OnClick = BtnUserRentClick
      end
      object BtnUserDelete: TButton
        Left = 6
        Top = 233
        Width = 75
        Height = 25
        Caption = #54924#50896#51221#48372#49325#51228
        TabOrder = 9
        OnClick = BtnUserDeleteClick
      end
      object BtnCancel: TButton
        Left = 109
        Top = 97
        Width = 75
        Height = 25
        Caption = #52712#49548
        TabOrder = 10
        OnClick = BtnCancelClick
      end
    end
  end
  object BindSourceDB1: TBindSourceDB
    DataSource = MainUserSource
    ScopeMappings = <>
    Left = 552
    Top = 8
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 476
    Top = 5
    object LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      GridControl = GridUser
      Columns = <
        item
          MemberName = 'USERCODE'
        end
        item
          MemberName = 'NAME'
        end
        item
          MemberName = 'SCHOOL'
        end
        item
          MemberName = 'PHONE'
        end
        item
          MemberName = 'ID'
        end
        item
          MemberName = 'PASSWORD'
        end>
    end
  end
  object MainUserSource: TDataSource
    DataSet = DM.UserTable
    OnStateChange = MainUserSourceStateChange
    Left = 624
    Top = 8
  end
end
