object frm_item_list: Tfrm_item_list
  Left = 0
  Top = 0
  Caption = #44277#44396' '#51221#48372#51077#47141'/'#49688#51221
  ClientHeight = 597
  ClientWidth = 1103
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 40
    Top = 125
    Width = 33
    Height = 13
    Caption = #44277#44396#47749
  end
  object Label2: TLabel
    Left = 40
    Top = 181
    Width = 33
    Height = 13
    Caption = #51228#51312#49324
  end
  object Label3: TLabel
    Left = 40
    Top = 229
    Width = 22
    Height = 13
    Caption = #49324#51652
  end
  object Label4: TLabel
    Left = 40
    Top = 285
    Width = 33
    Height = 13
    Caption = #49548#50976#51452
  end
  object Label5: TLabel
    Left = 40
    Top = 341
    Width = 44
    Height = 13
    Caption = #52852#53580#44256#47532
  end
  object CUS_DNAME: TDBEdit
    Left = 176
    Top = 282
    Width = 121
    Height = 21
    DataField = 'ITEM_OWNERT'
    DataSource = DataSource1
    TabOrder = 0
  end
  object CUS_DPHONE: TDBEdit
    Left = 176
    Top = 338
    Width = 121
    Height = 21
    DataField = 'Item_category'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit1: TDBEdit
    Left = 176
    Top = 178
    Width = 121
    Height = 21
    DataField = 'ITEM_MAKER'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 176
    Top = 226
    Width = 121
    Height = 21
    DataField = 'ITEM_PHOTO'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBEdit3: TDBEdit
    Left = 176
    Top = 122
    Width = 121
    Height = 21
    DataField = 'ITEM_NAME'
    DataSource = DataSource1
    TabOrder = 4
  end
  object DBGrid1: TDBGrid
    Left = 320
    Top = 122
    Width = 737
    Height = 438
    DataSource = DataSource1
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 480
    Top = 64
    Width = 75
    Height = 25
    Caption = #47592' '#48145#50640' '#52628#44032
    TabOrder = 6
  end
  object Button2: TButton
    Left = 624
    Top = 64
    Width = 75
    Height = 25
    Caption = #52628#44032
    TabOrder = 7
  end
  object Button3: TButton
    Left = 760
    Top = 64
    Width = 75
    Height = 25
    Caption = #49325#51228
    TabOrder = 8
  end
  object DataSource1: TDataSource
    DataSet = udata.itemquery
    Left = 480
  end
end
