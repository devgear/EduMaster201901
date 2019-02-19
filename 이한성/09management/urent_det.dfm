object frm_rent_det: Tfrm_rent_det
  Left = 0
  Top = 0
  Caption = #51204#54364#51089#49457
  ClientHeight = 587
  ClientWidth = 1031
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    1031
    587)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 264
    Top = 36
    Width = 58
    Height = 13
    Caption = #49440#53469#46108' '#44277#44396
  end
  object Label2: TLabel
    Left = 32
    Top = 36
    Width = 69
    Height = 13
    Caption = #49440#53469#46108' '#44144#47000#52376
  end
  object Label3: TLabel
    Left = 480
    Top = 32
    Width = 44
    Height = 13
    Caption = #51204#54364#48264#54840
  end
  object DBGrid1: TDBGrid
    Left = 32
    Top = 104
    Width = 957
    Height = 475
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DataSource2
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'RENT_RENT_INDEX'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RENT_RENT_NUM'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RENT_RENT_ITEM_NUM'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RENT_RENT_DATE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RENT_RENT_LASTDATE'
        Width = 484
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RENT_RENT_PHOTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'item'
        Visible = True
      end>
  end
  object btncus: TButton
    Left = 671
    Top = 26
    Width = 75
    Height = 25
    Caption = #44144#47000#52376#49440#53469
    TabOrder = 1
    OnClick = btncusClick
  end
  object btn_item: TButton
    Left = 752
    Top = 26
    Width = 75
    Height = 25
    Caption = #44277#44396#49440#53469
    TabOrder = 2
    OnClick = btn_itemClick
  end
  object Edit1: TEdit
    Left = 121
    Top = 33
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Edit2: TEdit
    Left = 328
    Top = 29
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object save: TButton
    Left = 914
    Top = 26
    Width = 75
    Height = 25
    Caption = #51200#51109
    TabOrder = 5
    OnClick = saveClick
  end
  object Edit3: TEdit
    Left = 544
    Top = 29
    Width = 121
    Height = 21
    TabOrder = 6
    Text = 'Edit3'
  end
  object btnreturn: TButton
    Left = 833
    Top = 26
    Width = 75
    Height = 25
    Caption = #48152#45225#52376#47532
    TabOrder = 7
    OnClick = btnreturnClick
  end
  object DataSource2: TDataSource
    DataSet = udata.rent_detquery
    Left = 528
    Top = 144
  end
end
