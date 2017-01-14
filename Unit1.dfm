object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Delphi EyeKeeper 0.1'
  ClientHeight = 101
  ClientWidth = 287
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 19
    Width = 87
    Height = 13
    Caption = 'Control Time (min)'
  end
  object Label2: TLabel
    Left = 16
    Top = 48
    Width = 91
    Height = 13
    Caption = 'Time To relax (min)'
  end
  object Label3: TLabel
    Left = 16
    Top = 79
    Width = 3
    Height = 13
  end
  object Edit1: TEdit
    Left = 120
    Top = 16
    Width = 25
    Height = 21
    TabOrder = 0
    Text = '25'
  end
  object Edit2: TEdit
    Left = 120
    Top = 43
    Width = 25
    Height = 21
    TabOrder = 1
    Text = '4'
  end
  object Button1: TButton
    Left = 168
    Top = 19
    Width = 89
    Height = 20
    Caption = 'Start'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 168
    Top = 45
    Width = 89
    Height = 19
    Caption = 'Stop'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 176
    Top = 64
  end
  object Timer2: TTimer
    Enabled = False
    OnTimer = Timer2Timer
    Left = 120
    Top = 64
  end
end
