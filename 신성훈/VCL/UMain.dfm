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
          object DBGrid1: TDBGrid
            Left = 0
            Top = 41
            Width = 546
            Height = 445
            Align = alClient
            DataSource = MainUserSource
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
                Width = -1
                Visible = False
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
          Top = 109
          Width = 11
          Height = 13
          Caption = 'ID'
        end
        object Label4: TLabel
          Left = 171
          Top = 69
          Width = 33
          Height = 13
          Caption = #50672#46973#52376
        end
        object Label8: TLabel
          Left = 3
          Top = 69
          Width = 33
          Height = 13
          Caption = #54617#44368#47749
        end
        object Label9: TLabel
          Left = 103
          Top = 109
          Width = 48
          Height = 13
          Caption = 'PassWord'
        end
        object Label6: TLabel
          Left = 3
          Top = 24
          Width = 22
          Height = 13
          Caption = #51060#47492
        end
        object EdtID: TDBEdit
          Left = 3
          Top = 128
          Width = 94
          Height = 25
          Anchors = [akLeft, akTop, akRight]
          DataField = 'ID'
          DataSource = MainUserSource
          TabOrder = 3
        end
        object EdtPhone: TDBEdit
          Left = 171
          Top = 86
          Width = 94
          Height = 25
          Anchors = [akLeft, akTop, akRight]
          DataField = 'PHONE'
          DataSource = MainUserSource
          TabOrder = 1
        end
        object EdtSchool: TDBEdit
          Left = 3
          Top = 86
          Width = 162
          Height = 25
          Anchors = [akLeft, akTop, akRight]
          DataField = 'SCHOOL'
          DataSource = MainUserSource
          TabOrder = 2
        end
        object EdtPW: TDBEdit
          Left = 103
          Top = 128
          Width = 162
          Height = 25
          Anchors = [akLeft, akTop, akRight]
          DataField = 'PW'
          DataSource = MainUserSource
          TabOrder = 4
        end
        object EdtUserName: TDBEdit
          Left = 3
          Top = 43
          Width = 94
          Height = 25
          Anchors = [akLeft, akTop, akRight]
          DataField = 'NAME'
          DataSource = MainUserSource
          TabOrder = 0
        end
        object BtnCancel: TButton
          Left = 122
          Top = 165
          Width = 75
          Height = 25
          Caption = #52712#49548
          TabOrder = 5
          OnClick = BtnCancelClick
        end
        object BtnUserDelete: TButton
          Left = 3
          Top = 165
          Width = 75
          Height = 25
          Caption = #54924#50896#51221#48372#49325#51228
          TabOrder = 6
          OnClick = BtnUserDeleteClick
        end
        object BtnUserSave: TButton
          Left = 197
          Top = 165
          Width = 75
          Height = 25
          Caption = #51200#51109
          TabOrder = 7
          OnClick = BtnUserSaveClick
        end
      end
      object GroupBox2: TGroupBox
        Left = 6
        Top = 257
        Width = 275
        Height = 193
        Anchors = [akLeft, akTop, akRight]
        Caption = #49345#54408' '#51221#48372
        TabOrder = 5
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
        Top = 456
        Width = 75
        Height = 25
        Caption = #49345#54408#49688#51221
        TabOrder = 3
      end
      object BtnPrNew: TButton
        Left = 6
        Top = 456
        Width = 75
        Height = 25
        Caption = #49345#54408#46321#47197
        TabOrder = 2
      end
      object BtnPrCancel: TButton
        Left = 165
        Top = 422
        Width = 108
        Height = 25
        Anchors = [akTop, akRight]
        Caption = #49325#51228
        TabOrder = 6
      end
      object BtnUserNew: TButton
        Left = 109
        Top = 62
        Width = 162
        Height = 25
        Caption = #49888#44508#46321#47197
        TabOrder = 1
        OnClick = BtnUserNewClick
      end
      object BtnPrSave: TButton
        Left = 206
        Top = 456
        Width = 75
        Height = 25
        Caption = #49345#54408#51200#51109
        TabOrder = 4
      end
    end
  end
  object MainUserSource: TDataSource
    DataSet = DM.UserQuery
    OnStateChange = MainUserSourceStateChange
    Left = 248
    Top = 320
  end
end
