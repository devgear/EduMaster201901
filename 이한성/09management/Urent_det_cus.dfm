object frm_rent_det_cus: Tfrm_rent_det_cus
  Left = 0
  Top = 0
  Caption = #51204#54364#51089#49457'-'#44144#47000#52376#49440#53469
  ClientHeight = 589
  ClientWidth = 896
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object 거래처명: TLabel
    Left = 48
    Top = 123
    Width = 44
    Height = 13
    Caption = #44144#47000#52376#47749
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 200
    Width = 833
    Height = 345
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
    Left = 112
    Top = 120
    Width = 121
    Height = 21
    DataField = 'CUS_NAME'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DataSource1: TDataSource
    DataSet = udata.CUSQUERY
    Left = 512
    Top = 80
  end
end
