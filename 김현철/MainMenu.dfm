object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
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
  object Button1: TButton
    Left = 352
    Top = 64
    Width = 75
    Height = 25
    Caption = #50696#50557#44288#47532
    Enabled = False
    TabOrder = 0
    OnClick = Button1Click
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
    Caption = 'btnPass'
    TabOrder = 2
    OnClick = btnPassClick
  end
  object FDQuery1: TFDQuery
    ConnectionName = 'TTMS'
    SQL.Strings = (
      'SELECT * '
      'FROM manager'
      'WHERE pass = :pass')
    Left = 352
    Top = 272
    ParamData = <
      item
        Name = 'PASS'
        ParamType = ptInput
      end>
  end
  object FDConnection1: TFDConnection
    Left = 160
    Top = 232
  end
end
