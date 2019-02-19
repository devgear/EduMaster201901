object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = #49368#48173
  ClientHeight = 650
  ClientWidth = 872
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
    Width = 872
    Height = 41
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 790
    DesignSize = (
      872
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
      Left = 780
      Top = 7
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #45803#44592
      TabOrder = 0
      OnClick = BtnCloseClick
      ExplicitLeft = 698
    end
  end
  object pnlContent: TPanel
    Left = 0
    Top = 41
    Width = 872
    Height = 609
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 790
    ExplicitHeight = 711
    object pnlGrid: TPanel
      Left = 1
      Top = 1
      Width = 870
      Height = 607
      Align = alClient
      TabOrder = 0
      ExplicitWidth = 493
      ExplicitHeight = 709
      object TabControl1: TPageControl
        Left = 1
        Top = 1
        Width = 868
        Height = 605
        ActivePage = TabSheet1
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 491
        ExplicitHeight = 707
        object TabSheet1: TTabSheet
          Caption = #54924#50896#51221#48372
          ExplicitWidth = 483
          ExplicitHeight = 679
          object Splitter2: TSplitter
            Left = 565
            Top = 41
            Height = 536
            Align = alRight
            ExplicitLeft = 648
            ExplicitTop = 6
            ExplicitHeight = 633
          end
          object Panel1: TPanel
            Left = 0
            Top = 0
            Width = 860
            Height = 41
            Align = alTop
            TabOrder = 0
            ExplicitWidth = 483
            object Label12: TLabel
              Left = 0
              Top = 14
              Width = 22
              Height = 13
              Caption = #44160#49353
            end
            object EdtUserSearch: TEdit
              Left = 28
              Top = 9
              Width = 151
              Height = 21
              TabOrder = 0
              OnKeyUp = EdtUserSearchKeyUp
            end
          end
          object GrdUser: TDBGrid
            Left = 0
            Top = 41
            Width = 565
            Height = 536
            Align = alClient
            DataSource = MainUserSource
            Options = [dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
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
                Title.Caption = #53076#46300#47749
                Width = 40
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NAME'
                Title.Caption = #51060#47492
                Width = 60
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SCHOOL'
                Title.Caption = #54617#44368#47749
                Width = 130
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PHONE'
                Title.Caption = #50672#46973#52376
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ID'
                Title.Caption = #50500#51060#46356
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PW'
                Title.Caption = #48708#48128#48264#54840
                Visible = False
              end>
          end
          object Panel5: TPanel
            Left = 568
            Top = 41
            Width = 292
            Height = 536
            Align = alRight
            TabOrder = 2
            ExplicitLeft = 497
            ExplicitTop = 1
            ExplicitHeight = 709
            DesignSize = (
              292
              536)
            object GroupBox6: TGroupBox
              Left = 6
              Top = 4
              Width = 275
              Height = 189
              Anchors = [akLeft, akTop, akRight]
              Caption = #54924#50896' '#51221#48372
              TabOrder = 0
              object Label23: TLabel
                Left = 7
                Top = 108
                Width = 11
                Height = 14
                Caption = 'ID'
              end
              object Label24: TLabel
                Left = 175
                Top = 65
                Width = 33
                Height = 14
                Caption = #50672#46973#52376
              end
              object Label25: TLabel
                Left = 7
                Top = 65
                Width = 33
                Height = 14
                Caption = #54617#44368#47749
              end
              object Label26: TLabel
                Left = 107
                Top = 108
                Width = 48
                Height = 14
                Caption = 'PassWord'
              end
              object Label27: TLabel
                Left = 7
                Top = 23
                Width = 22
                Height = 14
                Caption = #51060#47492
              end
              object EdtUserID: TDBEdit
                Left = 7
                Top = 123
                Width = 94
                Height = 21
                DataField = 'ID'
                DataSource = MainUserSource
                TabOrder = 3
              end
              object EdtUserPhone: TDBEdit
                Left = 175
                Top = 80
                Width = 94
                Height = 21
                DataField = 'PHONE'
                DataSource = MainUserSource
                TabOrder = 2
              end
              object EdtUserSChool: TDBEdit
                Left = 7
                Top = 80
                Width = 162
                Height = 21
                DataField = 'SCHOOL'
                DataSource = MainUserSource
                TabOrder = 1
              end
              object EdtUserPW: TDBEdit
                Left = 107
                Top = 123
                Width = 162
                Height = 21
                DataField = 'PW'
                DataSource = MainUserSource
                TabOrder = 4
              end
              object EdtUserName: TDBEdit
                Left = 7
                Top = 38
                Width = 94
                Height = 21
                DataField = 'NAME'
                DataSource = MainUserSource
                TabOrder = 0
              end
              object BtnUserCancel: TButton
                Left = 107
                Top = 156
                Width = 75
                Height = 25
                Caption = #52712#49548
                TabOrder = 6
                OnClick = BtnUserCancelClick
              end
              object BtnUserDelete: TButton
                Left = 7
                Top = 156
                Width = 94
                Height = 25
                Caption = #54924#50896#51221#48372#49325#51228
                TabOrder = 7
                OnClick = BtnUserDeleteClick
              end
              object BtnUserSave: TButton
                Left = 194
                Top = 156
                Width = 75
                Height = 25
                Caption = #54924#50896' '#51200#51109
                TabOrder = 5
                OnClick = BtnUserSaveClick
              end
              object BtnUserNew: TButton
                Left = 107
                Top = 34
                Width = 162
                Height = 25
                Caption = #49888#44508#46321#47197
                TabOrder = 8
                OnClick = BtnUserNewClick
              end
            end
          end
        end
        object TabSheet2: TTabSheet
          Caption = #49345#54408#51221#48372
          ImageIndex = 1
          ExplicitWidth = 483
          ExplicitHeight = 679
          object Splitter3: TSplitter
            Left = 565
            Top = 41
            Height = 536
            Align = alRight
            ExplicitLeft = 349
            ExplicitHeight = 633
          end
          object Panel2: TPanel
            Left = 0
            Top = 0
            Width = 860
            Height = 41
            Align = alTop
            TabOrder = 0
            ExplicitWidth = 483
            object Label1: TLabel
              Left = 0
              Top = 16
              Width = 22
              Height = 13
              Caption = #44160#49353
            end
            object EdtPrSearch: TEdit
              Left = 28
              Top = 9
              Width = 151
              Height = 21
              TabOrder = 0
              OnKeyUp = EdtPrSearchKeyUp
            end
          end
          object GridPr: TDBGrid
            Left = 0
            Top = 41
            Width = 565
            Height = 536
            Align = alClient
            DataSource = MainPRSource
            Options = [dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'PRCODE'
                Title.Caption = #53076#46300#47749
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PRNAME'
                Title.Caption = #49345#54408#47749
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'BRAND'
                Title.Caption = #48652#47004#46300#47749
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CT'
                Title.Caption = #52852#53580#44256#47532
                Width = 54
                Visible = True
              end>
          end
          object Panel3: TPanel
            Left = 568
            Top = 41
            Width = 292
            Height = 536
            Align = alRight
            TabOrder = 2
            ExplicitLeft = 497
            ExplicitTop = 1
            ExplicitHeight = 709
            DesignSize = (
              292
              536)
            object GroupBox4: TGroupBox
              Left = 6
              Top = 6
              Width = 275
              Height = 459
              Anchors = [akLeft, akTop, akRight]
              Caption = #49345#54408' '#51221#48372
              TabOrder = 0
              object Label18: TLabel
                Left = 6
                Top = 20
                Width = 33
                Height = 13
                Caption = #49345#54408#47749
              end
              object Label19: TLabel
                Left = 155
                Top = 10
                Width = 55
                Height = 13
                Caption = #49345#54408#51060#48120#51648
              end
              object Label20: TLabel
                Left = 6
                Top = 64
                Width = 44
                Height = 13
                Caption = #48652#47004#46300#47749
              end
              object Label21: TLabel
                Left = 3
                Top = 161
                Width = 44
                Height = 13
                Caption = #49345#49464#49444#47749
              end
              object Label22: TLabel
                Left = 6
                Top = 110
                Width = 44
                Height = 13
                Caption = #52852#53580#44256#47532
              end
              object GroupBox5: TGroupBox
                Left = 156
                Top = 26
                Width = 112
                Height = 115
                TabOrder = 0
                object ImgPr: TImage
                  Left = 2
                  Top = 3
                  Width = 108
                  Height = 108
                  Proportional = True
                  Stretch = True
                end
              end
              object EdtPrName: TDBEdit
                Left = 3
                Top = 37
                Width = 136
                Height = 21
                DataField = 'PRNAME'
                DataSource = MainPRSource
                TabOrder = 1
              end
              object EdtPrBrand: TDBEdit
                Left = 6
                Top = 83
                Width = 136
                Height = 21
                DataField = 'BRAND'
                DataSource = MainPRSource
                TabOrder = 2
              end
              object BtnPrImg: TButton
                Left = 156
                Top = 143
                Width = 112
                Height = 25
                Caption = #48520#47084#50724#44592
                TabOrder = 4
                OnClick = BtnPrimgClick
              end
              object BtnPrNew: TButton
                Left = 6
                Top = 395
                Width = 136
                Height = 25
                Caption = #49345#54408#46321#47197
                TabOrder = 7
                OnClick = BtnPrNewClick
              end
              object BtnPrCancel: TButton
                Left = 148
                Top = 426
                Width = 120
                Height = 25
                Caption = #52712#49548
                TabOrder = 8
              end
              object BtnPrDelete: TButton
                Left = 6
                Top = 426
                Width = 136
                Height = 25
                Caption = #49345#54408#51221#48372#49325#51228
                TabOrder = 9
                OnClick = BtnPrDeleteClick
              end
              object BtnPrSave: TButton
                Left = 148
                Top = 395
                Width = 120
                Height = 25
                Caption = #49345#54408' '#51200#51109
                TabOrder = 6
                OnClick = BtnPrSaveClick
              end
              object MemoPr: TDBMemo
                Left = 3
                Top = 180
                Width = 269
                Height = 209
                DataField = 'EXPLANATION'
                DataSource = MainPRSource
                ScrollBars = ssVertical
                TabOrder = 5
              end
              object CBPrCT: TDBComboBox
                Left = 6
                Top = 129
                Width = 134
                Height = 21
                DataField = 'CT'
                DataSource = MainPRSource
                Items.Strings = (
                  #48152#52268#47448
                  #48165#47448
                  #52236#44060#47448
                  #46356#51200#53944#47448
                  #51020#47308)
                TabOrder = 3
              end
            end
            object BtnSampleReq: TButton
              Left = 6
              Top = 471
              Width = 275
              Height = 25
              Caption = #49368#54540#50836#52397#48372#44592
              TabOrder = 1
              OnClick = BtnSampleReqClick
            end
          end
        end
      end
    end
  end
  object MainUserSource: TDataSource
    DataSet = DM.UserQuery
    OnStateChange = MainUserSourceStateChange
    Left = 200
    Top = 368
  end
  object MainPRSource: TDataSource
    DataSet = DM.PRQuery
    OnStateChange = MainPRSourceStateChange
    OnDataChange = MainPRSourceDataChange
    Left = 344
    Top = 368
  end
  object OpenDialog1: TOpenDialog
    Left = 816
    Top = 144
  end
end
