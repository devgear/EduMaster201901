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
    object btnClose: TButton
      Left = 761
      Top = 7
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #45803#44592
      TabOrder = 0
      OnClick = btnCloseClick
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
        ActivePage = TabSheet2
        Align = alClient
        TabOrder = 0
        object TabSheet1: TTabSheet
          Caption = #54924#50896#51221#48372
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Panel1: TPanel
            Left = 0
            Top = 0
            Width = 546
            Height = 41
            Align = alTop
            TabOrder = 0
            ExplicitLeft = 2
            ExplicitTop = -6
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
          object grdList: TDBGrid
            Left = 0
            Top = 41
            Width = 546
            Height = 445
            Align = alClient
            DataSource = DM.UserSource
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
                FieldName = 'USERCODE'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NAME'
                Width = 54
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SCHOOL'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PHONE'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ID'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PASSWORD'
                Visible = True
              end>
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
          object DBGrid1: TDBGrid
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
          Top = 119
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
          Left = 3
          Top = 165
          Width = 33
          Height = 13
          Caption = #50672#46973#52376
        end
        object Label8: TLabel
          Left = 103
          Top = 165
          Width = 33
          Height = 13
          Caption = #54617#44368#47749
        end
        object Label9: TLabel
          Left = 103
          Top = 119
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
        object btnFindUser: TButton
          Left = 103
          Top = 47
          Width = 162
          Height = 25
          Caption = #54924#50896#53076#46300' '#44160#49353
          TabOrder = 0
          OnClick = btnFindUserClick
        end
        object edtUserName: TDBEdit
          Left = 3
          Top = 138
          Width = 94
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          DataField = 'ID'
          DataSource = DM.UserSource
          TabOrder = 1
        end
        object edtUserBirth: TDBEdit
          Left = 3
          Top = 49
          Width = 94
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          DataField = 'USERCODE'
          DataSource = DM.UserSource
          TabOrder = 2
        end
        object edtUserPhone: TDBEdit
          Left = 3
          Top = 181
          Width = 94
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          DataField = 'PHONE'
          DataSource = DM.UserSource
          TabOrder = 3
        end
        object DBEdit1: TDBEdit
          Left = 103
          Top = 181
          Width = 162
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          DataField = 'SCHOOL'
          DataSource = DM.UserSource
          TabOrder = 4
        end
        object DBEdit2: TDBEdit
          Left = 103
          Top = 138
          Width = 162
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          DataField = 'PASSWORD'
          DataSource = DM.UserSource
          TabOrder = 5
        end
        object DBEdit4: TDBEdit
          Left = 3
          Top = 92
          Width = 94
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          DataField = 'NAME'
          DataSource = DM.UserSource
          TabOrder = 6
        end
      end
      object GroupBox2: TGroupBox
        Left = 6
        Top = 281
        Width = 275
        Height = 193
        Anchors = [akLeft, akTop, akRight]
        Caption = #49345#54408' '#51221#48372
        TabOrder = 1
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
          Left = 159
          Top = 32
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
          Left = 160
          Top = 48
          Width = 112
          Height = 137
          TabOrder = 0
          object imgBook: TImage
            Left = 2
            Top = 3
            Width = 108
            Height = 132
            Proportional = True
            Stretch = True
          end
        end
        object btnFindBook: TButton
          Left = 3
          Top = 160
          Width = 142
          Height = 25
          Caption = #49345#54408' '#44160#49353
          TabOrder = 1
          OnClick = btnFindBookClick
        end
        object edtBookTitle: TDBEdit
          Left = 3
          Top = 82
          Width = 142
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          DataField = 'NAME'
          DataSource = DM.ProductSource
          TabOrder = 2
        end
        object DBEdit3: TDBEdit
          Left = 3
          Top = 36
          Width = 142
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          DataField = 'CODE'
          DataSource = DM.ProductSource
          TabOrder = 3
        end
        object DBEdit5: TDBEdit
          Left = 3
          Top = 126
          Width = 142
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          DataField = 'NAME'
          DataSource = DM.ProductSource
          TabOrder = 4
        end
      end
      object btnRent: TButton
        Left = 6
        Top = 480
        Width = 75
        Height = 25
        Caption = #49345#54408#49688#51221
        TabOrder = 2
        OnClick = btnRentClick
      end
      object btnReturn: TButton
        Left = 87
        Top = 480
        Width = 75
        Height = 25
        Caption = #49345#54408#46321#47197
        TabOrder = 3
        OnClick = btnReturnClick
      end
      object btnCancel: TButton
        Left = 206
        Top = 480
        Width = 75
        Height = 25
        Anchors = [akTop, akRight]
        Caption = #49325#51228
        TabOrder = 4
        OnClick = btnCancelClick
      end
      object Button1: TButton
        Left = 6
        Top = 233
        Width = 75
        Height = 25
        Caption = #54924#50896#46321#47197
        TabOrder = 5
      end
      object Button2: TButton
        Left = 87
        Top = 233
        Width = 75
        Height = 25
        Caption = #54924#50896#49688#51221
        TabOrder = 6
      end
      object Button3: TButton
        Left = 206
        Top = 233
        Width = 75
        Height = 25
        Anchors = [akTop, akRight]
        Caption = #51200#51109
        TabOrder = 7
        OnClick = btnCancelClick
      end
    end
  end
end
