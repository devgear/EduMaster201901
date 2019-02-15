object Frm_Rent: TFrm_Rent
  Left = 0
  Top = 0
  Caption = #45824#50668#47532#49828#53944
  ClientHeight = 548
  ClientWidth = 899
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    899
    548)
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 48
    Top = 99
    Width = 784
    Height = 406
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = dsrent
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
  end
  object Button1: TButton
    Left = 613
    Top = 48
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Caption = #51204#54364#51089#49457
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 728
    Top = 48
    Width = 75
    Height = 25
    Caption = #51204#54364#49325#51228
    TabOrder = 2
    OnClick = Button2Click
  end
  object dsrent: TDataSource
    DataSet = udata.rentquery
    Left = 488
    Top = 8
  end
end
