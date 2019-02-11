object frm_rent_det: Tfrm_rent_det
  Left = 0
  Top = 0
  Caption = #51204#54364#51089#49457
  ClientHeight = 601
  ClientWidth = 1050
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    1050
    601)
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 40
    Top = 224
    Width = 979
    Height = 356
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DataSource1
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBEdit1: TDBEdit
    Left = 96
    Top = 160
    Width = 121
    Height = 21
    DataSource = DataSource1
    TabOrder = 1
  end
  object Button1: TButton
    Left = 512
    Top = 144
    Width = 75
    Height = 25
    Caption = #44144#47000#52376#49440#53469
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 640
    Top = 144
    Width = 75
    Height = 25
    Caption = #44277#44396#49440#53469
    TabOrder = 3
    OnClick = Button2Click
  end
  object Edit1: TEdit
    Left = 96
    Top = 112
    Width = 121
    Height = 21
    TabOrder = 4
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 248
    Top = 112
    Width = 121
    Height = 21
    TabOrder = 5
    Text = 'Edit2'
  end
  object DataSource1: TDataSource
    DataSet = udata.rent_detquery
    Left = 384
    Top = 112
  end
end
