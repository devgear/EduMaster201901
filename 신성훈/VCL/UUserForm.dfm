object frmUser: TfrmUser
  Left = 0
  Top = 0
  Caption = #54924#50896' '#44288#47532
  ClientHeight = 354
  ClientWidth = 784
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object pnlHeader: TPanel
    Left = 0
    Top = 0
    Width = 784
    Height = 41
    Align = alTop
    TabOrder = 0
    DesignSize = (
      784
      41)
    object lblCaption: TLabel
      Left = 16
      Top = 14
      Width = 44
      Height = 13
      Caption = #54924#50896#44288#47532
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnClose: TButton
      Left = 689
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
    Width = 784
    Height = 313
    Align = alClient
    TabOrder = 1
    object Splitter1: TSplitter
      Left = 453
      Top = 1
      Height = 311
      Align = alRight
      ExplicitLeft = 392
      ExplicitTop = 176
      ExplicitHeight = 100
    end
    object pnlGrid: TPanel
      Left = 1
      Top = 1
      Width = 452
      Height = 311
      Align = alClient
      TabOrder = 0
      object pnlGridHeader: TPanel
        Left = 1
        Top = 1
        Width = 450
        Height = 41
        Align = alTop
        TabOrder = 0
        object Label1: TLabel
          Left = 14
          Top = 16
          Width = 22
          Height = 13
          Caption = #44160#49353
        end
        object edtSearch: TEdit
          Left = 50
          Top = 10
          Width = 121
          Height = 21
          TabOrder = 0
        end
      end
      object DBGrid1: TDBGrid
        Left = 1
        Top = 42
        Width = 450
        Height = 268
        Align = alClient
        DataSource = DataSource1
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
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NAME'
            Title.Caption = #51060#47492
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SCHOOL'
            Title.Caption = #54617#44368
            Width = 110
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
            FieldName = 'PASSWORD'
            Title.Caption = #48708#48128#48264#54840
            Width = 80
            Visible = True
          end>
      end
    end
    object pnlInput: TPanel
      Left = 456
      Top = 1
      Width = 327
      Height = 311
      Align = alRight
      TabOrder = 1
      DesignSize = (
        327
        311)
      object Label4: TLabel
        Left = 168
        Top = 59
        Width = 46
        Height = 13
        Caption = 'Password'
      end
      object Label5: TLabel
        Left = 168
        Top = 107
        Width = 33
        Height = 13
        Caption = #50672#46973#52376
      end
      object Label3: TLabel
        Left = 16
        Top = 107
        Width = 33
        Height = 13
        Caption = #54617#44368#47749
      end
      object Label6: TLabel
        Left = 16
        Top = 59
        Width = 11
        Height = 13
        Caption = 'ID'
      end
      object Label2: TLabel
        Left = 16
        Top = 14
        Width = 44
        Height = 13
        Caption = #54924#50896#53076#46300
      end
      object Label7: TLabel
        Left = 168
        Top = 14
        Width = 22
        Height = 13
        Caption = #51060#47492
      end
      object edtPhone: TDBEdit
        Left = 168
        Top = 80
        Width = 137
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        DataField = 'PASSWORD'
        DataSource = DM.UserSource
        TabOrder = 0
      end
      object edtMail: TDBEdit
        Left = 167
        Top = 126
        Width = 137
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        DataField = 'PHONE'
        DataSource = DM.UserSource
        TabOrder = 1
      end
      object btnClearImage: TButton
        Left = 151
        Top = 165
        Width = 75
        Height = 25
        Anchors = [akTop, akRight]
        Caption = #52488#44592#54868
        TabOrder = 2
      end
      object btnLoadImage: TButton
        Left = 232
        Top = 165
        Width = 73
        Height = 25
        Anchors = [akTop, akRight]
        Caption = #48520#47084#50724#44592
        TabOrder = 3
      end
      object btnDelete: TButton
        Left = 16
        Top = 224
        Width = 75
        Height = 25
        Caption = #54924#50896#53448#53748
        TabOrder = 4
      end
      object btnSave: TButton
        Left = 151
        Top = 224
        Width = 75
        Height = 25
        Caption = #51200#51109
        TabOrder = 5
      end
      object btnCancel: TButton
        Left = 232
        Top = 224
        Width = 73
        Height = 25
        Caption = #52712#49548
        TabOrder = 6
      end
      object DBEdit1: TDBEdit
        Left = 16
        Top = 78
        Width = 137
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        DataField = 'ID'
        DataSource = DM.UserSource
        TabOrder = 7
      end
      object DBEdit2: TDBEdit
        Left = 16
        Top = 126
        Width = 137
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        DataField = 'SCHOOL'
        DataSource = DM.UserSource
        TabOrder = 8
      end
      object edtName: TDBEdit
        Left = 16
        Top = 33
        Width = 137
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        DataField = 'USERCODE'
        DataSource = DM.UserSource
        TabOrder = 9
      end
      object DBEdit3: TDBEdit
        Left = 168
        Top = 33
        Width = 137
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        DataField = 'NAME'
        DataSource = DM.UserSource
        TabOrder = 10
      end
      object btnAdd: TButton
        Left = 16
        Top = 165
        Width = 75
        Height = 25
        Anchors = [akTop, akRight]
        Caption = #49888#44508' '#46321#47197
        TabOrder = 11
        OnClick = btnAddClick
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = DM.UserQuery
    Left = 480
    Top = 16
  end
end
