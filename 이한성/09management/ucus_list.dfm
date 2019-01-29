object frm_cus_list: Tfrm_cus_list
  Left = 0
  Top = 0
  Caption = #44144#47000#52376' '#47532#49828#53944
  ClientHeight = 595
  ClientWidth = 826
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
    Left = 80
    Top = 64
    Width = 44
    Height = 13
    Caption = #44144#47000#52376#47749
  end
  object lable2: TLabel
    Left = 336
    Top = 64
    Width = 44
    Height = 13
    Caption = #51204#54868#48264#54840
  end
  object DBGrid1: TDBGrid
    Left = 25
    Top = 160
    Width = 777
    Height = 369
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Edit1: TEdit
    Left = 141
    Top = 61
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit2: TEdit
    Left = 416
    Top = 61
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object btn_sp: TButton
    Left = 608
    Top = 58
    Width = 113
    Height = 28
    Caption = #44144#47000#52376' '#46321#47197' / '#49688#51221
    TabOrder = 3
    OnClick = btn_spClick
  end
end
