object frm_itemquery: Tfrm_itemquery
  Left = 0
  Top = 0
  Caption = #51228#54408#51312#54924
  ClientHeight = 680
  ClientWidth = 1032
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
  object label1: TLabel
    Left = 40
    Top = 74
    Width = 33
    Height = 13
    Caption = #44277#44396#47749
  end
  object DBGrid1: TDBGrid
    Left = 40
    Top = 200
    Width = 913
    Height = 409
    DataSource = itemsource
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Edit1: TEdit
    Left = 96
    Top = 71
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'Edit1'
  end
  object chk1: TCheckBox
    Left = 250
    Top = 73
    Width = 71
    Height = 17
    Caption = #45824#50668#44032#45733
    Checked = True
    State = cbChecked
    TabOrder = 2
  end
  object chk2: TCheckBox
    Left = 353
    Top = 73
    Width = 56
    Height = 17
    Caption = #45824#50668#51473
    TabOrder = 3
  end
  object DBLookupListBox1: TDBLookupListBox
    Left = 584
    Top = 49
    Width = 369
    Height = 121
    TabOrder = 4
  end
  object btnclose: TButton
    Left = 752
    Top = 8
    Width = 75
    Height = 25
    Caption = 'btnclose'
    TabOrder = 5
    OnClick = btncloseClick
  end
  object Button1: TButton
    Left = 432
    Top = 74
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 6
    OnClick = Button1Click
  end
  object itemsource: TDataSource
    DataSet = udata.itemquery
    Left = 528
    Top = 72
  end
end
