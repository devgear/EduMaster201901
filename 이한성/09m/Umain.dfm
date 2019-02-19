object Umain_form: TUmain_form
  Left = 0
  Top = 0
  Caption = #44277#44396#45824#50668' '#44288#47532
  ClientHeight = 574
  ClientWidth = 647
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
    Width = 647
    Height = 19
    ButtonHeight = 19
    ButtonWidth = 70
    Caption = 'ToolBar1'
    List = True
    ShowCaptions = True
    TabOrder = 0
    object ToolButton1: TToolButton
      Left = 0
      Top = 0
      Caption = #44144#47000#52376
      ImageIndex = 0
      Style = tbsTextButton
      OnClick = ToolButton1Click
    end
    object ToolButton2: TToolButton
      Left = 70
      Top = 0
      Caption = #44277#44396#51312#54924
      ImageIndex = 1
      OnClick = ToolButton2Click
    end
    object ToolButton3: TToolButton
      Left = 140
      Top = 0
      Caption = 'ToolButton3'
      ImageIndex = 2
    end
    object ToolButton4: TToolButton
      Left = 210
      Top = 0
      Caption = #45824#50668
      ImageIndex = 3
      OnClick = ToolButton4Click
    end
    object ToolButton5: TToolButton
      Left = 280
      Top = 0
      Caption = 'ToolButton5'
      ImageIndex = 4
    end
    object ToolButton7: TToolButton
      Left = 350
      Top = 0
      Caption = 'ToolButton7'
      ImageIndex = 6
    end
  end
  object pnllayout: TPanel
    Left = 0
    Top = 19
    Width = 647
    Height = 555
    Align = alClient
    TabOrder = 1
  end
end
