object frm_item_list: Tfrm_item_list
  Left = 0
  Top = 0
  Caption = 'frm_item_list'
  ClientHeight = 597
  ClientWidth = 851
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DataSource1: TDataSource
    DataSet = udata.itemquery
    Left = 320
    Top = 160
  end
end
