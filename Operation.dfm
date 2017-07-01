object Operat: TOperat
  Left = 0
  Top = 0
  Caption = 'Operat'
  ClientHeight = 211
  ClientWidth = 354
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 24
    Top = 160
    Width = 297
    Height = 2
  end
  object btnBalance: TBitBtn
    Left = 40
    Top = 24
    Width = 137
    Height = 25
    Caption = #1055#1077#1088#1077#1074#1110#1088#1082#1072' '#1073#1072#1083#1072#1085#1089#1091
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 0
    OnClick = btnBalanceClick
  end
  object btnadd: TBitBtn
    Left = 40
    Top = 72
    Width = 137
    Height = 25
    Caption = #1055#1086#1087#1086#1074#1085#1077#1085#1103'/'#1055#1086#1075#1072#1096#1077#1085#1085#1103
    DoubleBuffered = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentDoubleBuffered = False
    ParentFont = False
    TabOrder = 1
    OnClick = btnaddClick
  end
  object btnGetmony: TBitBtn
    Left = 40
    Top = 120
    Width = 137
    Height = 25
    Caption = #1047#1085#1103#1090#1090#1103' '#1082#1086#1096#1090#1110#1074
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 2
    OnClick = btnGetmonyClick
  end
  object BitBtn1: TBitBtn
    Left = 40
    Top = 178
    Width = 137
    Height = 25
    Caption = #1042#1080#1093#1110#1076
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 3
    OnClick = BitBtn1Click
  end
  object seSet: TSpinEdit
    Left = 200
    Top = 72
    Width = 121
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 4
    Value = 0
  end
  object seGet: TSpinEdit
    Left = 200
    Top = 122
    Width = 121
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 5
    Value = 0
  end
end
