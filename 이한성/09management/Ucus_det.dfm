object frm_cus_detail: Tfrm_cus_detail
  Left = 0
  Top = 0
  Caption = #44144#47000#52376' '#51221#48372
  ClientHeight = 717
  ClientWidth = 1167
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  DesignSize = (
    1167
    717)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 40
    Top = 57
    Width = 44
    Height = 13
    Caption = #44144#47000#52376#47749
  end
  object Label2: TLabel
    Left = 40
    Top = 113
    Width = 44
    Height = 13
    Caption = #51204#54868#48264#54840
  end
  object Label3: TLabel
    Left = 40
    Top = 161
    Width = 22
    Height = 13
    Caption = #51452#49548
  end
  object Label4: TLabel
    Left = 40
    Top = 217
    Width = 44
    Height = 13
    Caption = #45812#45817#51088#47749
  end
  object Label5: TLabel
    Left = 40
    Top = 273
    Width = 80
    Height = 13
    Caption = #45812#45817#51088' '#51204#54868#48264#54840
  end
  object Label7: TLabel
    Left = 40
    Top = 423
    Width = 22
    Height = 13
    Caption = #48708#44256
  end
  object Label8: TLabel
    Left = 40
    Top = 327
    Width = 33
    Height = 13
    Caption = #51060#47700#51068
  end
  object Label9: TLabel
    Left = 40
    Top = 375
    Width = 55
    Height = 13
    Caption = #51088#46041#52264#48264#54840
  end
  object Label10: TLabel
    Left = 40
    Top = 470
    Width = 58
    Height = 13
    Caption = #49324#50629#51088' '#49324#48376
  end
  object Image1: TImage
    Left = 176
    Top = 458
    Width = 121
    Height = 105
  end
  object CUS_DNAME: TDBEdit
    Left = 176
    Top = 214
    Width = 121
    Height = 21
    DataField = 'CUS_NAME1'
    DataSource = frm_cus_list.customersource
    TabOrder = 7
  end
  object CUS_DPHONE: TDBEdit
    Left = 176
    Top = 270
    Width = 121
    Height = 21
    DataField = 'CUS_PHONE'
    DataSource = frm_cus_list.customersource
    TabOrder = 8
  end
  object CUS_EMAIL: TDBEdit
    Left = 176
    Top = 324
    Width = 121
    Height = 21
    DataField = 'CUS_EMAIL'
    DataSource = frm_cus_list.customersource
    TabOrder = 9
  end
  object CUS_CARNUM: TDBEdit
    Left = 176
    Top = 372
    Width = 121
    Height = 21
    DataField = 'CUS_CARNUM'
    DataSource = frm_cus_list.customersource
    TabOrder = 10
  end
  object CUS_BIGO: TDBEdit
    Left = 176
    Top = 420
    Width = 121
    Height = 21
    DataField = 'CUS_BIGO'
    DataSource = frm_cus_list.customersource
    TabOrder = 11
  end
  object BTNINS: TButton
    Left = 104
    Top = 8
    Width = 55
    Height = 25
    Caption = #46321#47197
    TabOrder = 0
    OnClick = BTNINSClick
  end
  object BTNDEL: TButton
    Left = 248
    Top = 8
    Width = 49
    Height = 25
    Caption = #49325#51228
    TabOrder = 1
    OnClick = BTNDELClick
  end
  object btnmodify: TButton
    Left = 176
    Top = 8
    Width = 49
    Height = 25
    Caption = #49688#51221
    TabOrder = 2
  end
  object DBEdit1: TDBEdit
    Left = 176
    Top = 110
    Width = 121
    Height = 21
    DataField = 'CUS_CUSNUM'
    DataSource = frm_cus_list.customersource
    TabOrder = 5
  end
  object DBEdit2: TDBEdit
    Left = 176
    Top = 158
    Width = 121
    Height = 21
    DataField = 'CUS_ADRS'
    DataSource = frm_cus_list.customersource
    TabOrder = 6
  end
  object DBGrid1: TDBGrid
    Left = 360
    Top = 57
    Width = 697
    Height = 536
    DataSource = DataSource1
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBEdit3: TDBEdit
    Left = 176
    Top = 54
    Width = 121
    Height = 21
    DataField = 'CUS_NAME'
    DataSource = frm_cus_list.customersource
    TabOrder = 4
  end
  object btnLoadImage: TButton
    Left = -82
    Top = 514
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Caption = #48520#47084#50724#44592
    TabOrder = 12
    OnClick = btnLoadImageClick
  end
  object DBImage1: TDBImage
    Left = 176
    Top = 458
    Width = 121
    Height = 129
    DataField = 'CUS_COPY'
    DataSource = DataSource1
    TabOrder = 13
  end
  object DataSource1: TDataSource
    DataSet = udata.CUSQUERY
    Left = 392
    Top = 8
  end
  object dlgLoadImage: TOpenDialog
    FileName = 'C:\Users\home\Desktop\images.jpg'
    Left = 96
    Top = 570
  end
end
