object Umain_form: TUmain_form
  Left = 0
  Top = 0
  Caption = #44277#44396#45824#50668' '#44288#47532
  ClientHeight = 574
  ClientWidth = 894
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 894
    Height = 89
    ButtonHeight = 86
    ButtonWidth = 85
    Caption = 'ToolBar1'
    HotImages = ImageList1
    Images = ImageList1
    List = True
    ShowCaptions = True
    TabOrder = 0
    ExplicitTop = -6
    ExplicitWidth = 647
    object ToolButton1: TToolButton
      Left = 0
      Top = 0
      Caption = #44144#47000#52376
      ImageIndex = 0
      Style = tbsTextButton
      OnClick = ToolButton1Click
    end
    object ToolButton2: TToolButton
      Left = 85
      Top = 0
      Caption = #44277#44396#51312#54924
      ImageIndex = 1
      OnClick = ToolButton2Click
    end
    object ToolButton3: TToolButton
      Left = 170
      Top = 0
      Caption = 'ToolButton3'
      ImageIndex = 2
    end
    object ToolButton4: TToolButton
      Left = 255
      Top = 0
      Caption = #45824#50668
      ImageIndex = 3
      OnClick = ToolButton4Click
    end
    object ToolButton5: TToolButton
      Left = 340
      Top = 0
      Caption = 'ToolButton5'
      ImageIndex = 4
    end
    object ToolButton7: TToolButton
      Left = 425
      Top = 0
      Caption = 'ToolButton7'
      ImageIndex = 6
    end
  end
  object pnllayout: TPanel
    Left = 0
    Top = 89
    Width = 894
    Height = 485
    Align = alClient
    TabOrder = 1
    ExplicitTop = 95
    ExplicitWidth = 647
  end
  object ImageList1: TImageList
    Height = 80
    Left = 264
    Top = 208
  end
end
