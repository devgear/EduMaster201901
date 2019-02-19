object frm_cus_list: Tfrm_cus_list
  Left = 0
  Top = 0
  Caption = #44144#47000#52376' '#47532#49828#53944
  ClientHeight = 655
  ClientWidth = 1006
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  DesignSize = (
    1006
    655)
  PixelsPerInch = 96
  TextHeight = 13
  object 거래처명: TLabel
    Left = 17
    Top = 64
    Width = 44
    Height = 13
    Caption = #44144#47000#52376#47749
  end
  object lable2: TLabel
    Left = 216
    Top = 64
    Width = 44
    Height = 13
    Caption = #51204#54868#48264#54840
  end
  object Edit1: TEdit
    Left = 67
    Top = 61
    Width = 121
    Height = 21
    TabOrder = 0
    OnChange = Edit1Change
  end
  object Edit2: TEdit
    Left = 266
    Top = 61
    Width = 121
    Height = 21
    TabOrder = 1
    OnChange = Edit2Change
  end
  object btn_sp: TButton
    Left = 431
    Top = 58
    Width = 97
    Height = 28
    Caption = #44144#47000#52376' '#52628#44032'/'#49688#51221
    TabOrder = 2
    OnClick = btn_spClick
  end
  object Button2: TButton
    Left = 567
    Top = 58
    Width = 98
    Height = 27
    Caption = #44144#47000#52376#49325#51228
    TabOrder = 3
    OnClick = Button2Click
  end
  object DBGrid1: TDBGrid
    Left = 17
    Top = 112
    Width = 953
    Height = 521
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = customersource
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object customersource: TDataSource
    DataSet = udata.CUSQUERY
    Left = 224
    Top = 136
  end
end
