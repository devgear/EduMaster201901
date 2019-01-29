object Udata: TUdata
  Left = 0
  Top = 0
  Caption = 'Udata'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object FDConnection1: TFDConnection
    Params.Strings = (
      'ConnectionDef=66')
    Connected = True
    LoginPrompt = False
    Left = 40
    Top = 48
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    Left = 152
    Top = 48
  end
end
