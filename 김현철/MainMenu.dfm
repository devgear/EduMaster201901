object Menu: TMenu
  Left = 0
  Top = 0
  Caption = #50668#54665#49324' '#44256#44061' '#50696#50557#44288#47532' '#49884#49828#53596
  ClientHeight = 505
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
  object btnEvent: TButton
    Left = 352
    Top = 64
    Width = 75
    Height = 25
    Caption = #50696#50557#44288#47532
    Enabled = False
    TabOrder = 0
    OnClick = btnEventClick
  end
  object edtPass: TEdit
    Left = 111
    Top = 63
    Width = 121
    Height = 27
    TabOrder = 1
  end
  object btnPass: TButton
    Left = 238
    Top = 64
    Width = 75
    Height = 25
    Caption = #47196#44536#51064
    TabOrder = 2
    OnClick = btnPassClick
  end
  object btnManager: TButton
    Left = 488
    Top = 312
    Width = 75
    Height = 25
    Caption = #50516#54840#44288#47532
    Enabled = False
    TabOrder = 3
    OnClick = btnManagerClick
  end
  object FDQuery1: TFDQuery
    ConnectionName = 'TTMS'
    SQL.Strings = (
      'SELECT * '
      'FROM manager'
      'WHERE pass = :pass')
    Left = 216
    Top = 280
    ParamData = <
      item
        Name = 'PASS'
        ParamType = ptInput
      end>
  end
  object FDConnection1: TFDConnection
    Left = 128
    Top = 280
  end
end
