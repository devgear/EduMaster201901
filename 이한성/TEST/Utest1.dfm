object Form6: TForm6
  Left = 0
  Top = 0
  Caption = 'Form6'
  ClientHeight = 523
  ClientWidth = 1037
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  DesignSize = (
    1037
    523)
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 24
    Top = 200
    Width = 989
    Height = 285
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DataSource1
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnEnter = DBGrid1Enter
  end
  object Edit1: TEdit
    Left = 88
    Top = 56
    Width = 249
    Height = 21
    TabOrder = 1
    OnChange = Edit1Change
  end
  object Button1: TButton
    Left = 496
    Top = 110
    Width = 75
    Height = 25
    Caption = #52628#44032
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 608
    Top = 110
    Width = 75
    Height = 25
    Caption = #49688#51221
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 760
    Top = 110
    Width = 75
    Height = 25
    Caption = #49325#51228
    TabOrder = 4
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 400
    Top = 120
    Width = 75
    Height = 25
    Caption = #47592#48145#51460' '#49341#51077
    TabOrder = 5
    OnClick = Button4Click
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'ConnectionDef=temp')
    Connected = True
    LoginPrompt = False
    Left = 72
    Top = 112
  end
  object FDQuery1: TFDQuery
    Active = True
    Connection = FDConnection1
    UpdateOptions.AutoIncFields = 'ITEM_NUMBER'
    SQL.Strings = (
      'SELECT * FROM ITEMLIST')
    Left = 144
    Top = 112
    object FDQuery1ITEM_NUMBER: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = #44277#44396#48264#54840
      FieldName = 'ITEM_NUMBER'
      Origin = 'ITEM_NUMBER'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDQuery1ITEM_NAME: TWideStringField
      DisplayLabel = #44277#44396#47749
      DisplayWidth = 20
      FieldName = 'ITEM_NAME'
      Origin = 'ITEM_NAME'
      FixedChar = True
      Size = 80
    end
    object FDQuery1ITEM_MAKER: TWideStringField
      DisplayLabel = #51228#51312#49324
      DisplayWidth = 20
      FieldName = 'ITEM_MAKER'
      Origin = 'ITEM_MAKER'
      FixedChar = True
      Size = 44
    end
    object FDQuery1ITEM_OWNERT: TWideStringField
      DisplayLabel = #49548#50976#51452
      DisplayWidth = 10
      FieldName = 'ITEM_OWNERT'
      Origin = 'ITEM_OWNERT'
      FixedChar = True
      Size = 40
    end
    object FDQuery1ITEM_LASTRENT: TWideStringField
      DisplayLabel = #47560#51648#47561#45824#50668#51068
      DisplayWidth = 30
      FieldName = 'ITEM_LASTRENT'
      Origin = 'ITEM_LASTRENT'
      FixedChar = True
      Size = 320
    end
    object FDQuery1ITEM_LASTCUS: TWideStringField
      DisplayLabel = #47560#51648#47561#45824#50668#51088
      DisplayWidth = 20
      FieldName = 'ITEM_LASTCUS'
      Origin = 'ITEM_LASTCUS'
      FixedChar = True
      Size = 44
    end
    object FDQuery1ITEM_BIGO: TWideStringField
      DisplayLabel = #48708#44256
      DisplayWidth = 10
      FieldName = 'ITEM_BIGO'
      Origin = 'ITEM_BIGO'
      FixedChar = True
      Size = 400
    end
    object FDQuery1ITEM_PHOTO: TBlobField
      DisplayLabel = #49324#51652
      FieldName = 'ITEM_PHOTO'
      Origin = 'ITEM_PHOTO'
    end
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 216
    Top = 112
  end
end
