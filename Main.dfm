object Mains: TMains
  Left = 0
  Top = 0
  Caption = 'Mains'
  ClientHeight = 369
  ClientWidth = 446
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 136
    Top = 5
    Width = 2
    Height = 50
  end
  object Bevel2: TBevel
    Left = 288
    Top = 5
    Width = 2
    Height = 50
  end
  object sg: TStringGrid
    Left = 16
    Top = 61
    Width = 417
    Height = 273
    ColCount = 6
    FixedCols = 0
    RowCount = 100
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
    TabOrder = 0
  end
  object btnRegist: TButton
    Left = 16
    Top = 21
    Width = 105
    Height = 25
    Caption = #1056#1077#1075#1110#1089#1090#1088#1072#1094#1110#1103
    TabOrder = 1
    OnClick = btnRegistClick
  end
  object edPass: TLabeledEdit
    Left = 152
    Top = 23
    Width = 121
    Height = 21
    EditLabel.Width = 78
    EditLabel.Height = 13
    EditLabel.Caption = #1042#1074#1077#1076#1110#1090#1100' '#1087#1072#1088#1086#1083#1100
    PasswordChar = '*'
    TabOrder = 2
  end
  object Операції: TBitBtn
    Left = 312
    Top = 21
    Width = 121
    Height = 25
    Caption = #1054#1087#1077#1088#1072#1094#1110#1111
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 3
    OnClick = ОпераціїClick
  end
  object btnClose: TBitBtn
    Left = 320
    Top = 340
    Width = 113
    Height = 25
    Caption = #1042#1080#1081#1090#1080
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 4
    OnClick = btnCloseClick
  end
end
