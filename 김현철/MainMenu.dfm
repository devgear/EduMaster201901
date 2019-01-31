object frmMenu: TfrmMenu
  Left = 0
  Top = 0
  ActiveControl = edtPass
  Caption = #50668#54665#49324' '#44256#44061' '#50696#50557#44288#47532' '#49884#49828#53596
  ClientHeight = 398
  ClientWidth = 616
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 19
  object Label1: TLabel
    Left = 20
    Top = 71
    Width = 85
    Height = 19
    Caption = 'PASSWORD'
  end
  object edtPass: TEdit
    Left = 111
    Top = 63
    Width = 121
    Height = 27
    TabOrder = 0
    OnKeyPress = edtPassKeyPress
  end
  object btnPass: TButton
    Left = 238
    Top = 64
    Width = 75
    Height = 25
    Caption = #47196#44536#51064
    TabOrder = 1
  end
  object Panel1: TPanel
    Left = 336
    Top = 24
    Width = 280
    Height = 353
    TabOrder = 2
    object btnReservation: TButton
      Left = 15
      Top = 16
      Width = 122
      Height = 41
      Caption = #50696#50557#44288#47532
      TabOrder = 0
      OnClick = btnReservationClick
    end
    object btnEvent: TButton
      Left = 143
      Top = 16
      Width = 122
      Height = 41
      Caption = #54665#49324#44288#47532
      Enabled = False
      TabOrder = 1
    end
    object btnManager: TButton
      Left = 143
      Top = 298
      Width = 122
      Height = 41
      Caption = #50516#54840#44288#47532
      Enabled = False
      TabOrder = 2
      OnClick = btnManagerClick
    end
    object btnMogaek: TButton
      Left = 15
      Top = 63
      Width = 122
      Height = 41
      Caption = #47784#44061#54788#54889
      Enabled = False
      TabOrder = 3
      OnClick = btnReservationClick
    end
    object btnPartner: TButton
      Left = 143
      Top = 63
      Width = 122
      Height = 41
      Caption = #44144#47000#52376#44288#47532
      Enabled = False
      TabOrder = 4
    end
    object btnCalculate: TButton
      Left = 15
      Top = 110
      Width = 122
      Height = 41
      Caption = #51221#49328#44288#47532
      Enabled = False
      TabOrder = 5
      OnClick = btnReservationClick
    end
    object btnHotel: TButton
      Left = 143
      Top = 110
      Width = 122
      Height = 41
      Caption = #49689#49548#44288#47532
      Enabled = False
      TabOrder = 6
    end
    object btnSubul: TButton
      Left = 15
      Top = 157
      Width = 122
      Height = 41
      Caption = #49688#48520#44288#47532
      Enabled = False
      TabOrder = 7
      OnClick = btnReservationClick
    end
    object btnCustomer: TButton
      Left = 143
      Top = 157
      Width = 122
      Height = 41
      Caption = #44256#44061#44288#47532
      Enabled = False
      TabOrder = 8
    end
    object btnBanking: TButton
      Left = 15
      Top = 204
      Width = 122
      Height = 41
      Caption = #51077#52636#44552#44288#47532
      Enabled = False
      TabOrder = 9
      OnClick = btnReservationClick
    end
    object btnPackage: TButton
      Left = 143
      Top = 204
      Width = 122
      Height = 41
      Caption = #54056#53412#51648#44288#47532
      Enabled = False
      TabOrder = 10
    end
    object btnCancel: TButton
      Left = 15
      Top = 251
      Width = 122
      Height = 41
      Caption = #52712#49548#44288#47532
      Enabled = False
      TabOrder = 11
      OnClick = btnReservationClick
    end
    object btnBackup: TButton
      Left = 143
      Top = 251
      Width = 122
      Height = 41
      Caption = #51088#47308#48372#44288
      Enabled = False
      TabOrder = 12
    end
  end
end
