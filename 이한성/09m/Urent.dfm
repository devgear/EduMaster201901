object Frm_Rent: TFrm_Rent
  Left = 0
  Top = 0
  Caption = #45824#50668#47532#49828#53944
  ClientHeight = 652
  ClientWidth = 964
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 48
    Top = 152
    Width = 849
    Height = 417
    DataSource = rentsource
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 552
    Top = 96
    Width = 75
    Height = 25
    Caption = #51204#54364#51089#49457
    TabOrder = 1
    OnClick = Button1Click
  end
  object rentsource: TDataSource
    DataSet = udata.rentquery
    Left = 488
    Top = 56
  end
end
