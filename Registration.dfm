object Registrat: TRegistrat
  Left = 0
  Top = 0
  Caption = 'Registrat'
  ClientHeight = 200
  ClientWidth = 426
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 183
    Top = 0
    Width = 242
    Height = 41
  end
  object lbtmp: TLabel
    Left = 16
    Top = 144
    Width = 69
    Height = 13
    Caption = #1058#1080#1087' '#1082#1072#1088#1090#1086#1095#1082#1080
  end
  object Label1: TLabel
    Left = 192
    Top = 8
    Width = 126
    Height = 19
    Caption = #1053#1086#1084#1077#1088' '#1082#1072#1088#1090#1086#1095#1082#1080':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbNumber: TLabel
    Left = 328
    Top = 8
    Width = 5
    Height = 19
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object cbCardType: TComboBox
    Left = 16
    Top = 163
    Width = 145
    Height = 21
    TabOrder = 2
    OnChange = cbCardTypeChange
    Items.Strings = (
      #1047#1072#1088#1087#1083#1072#1090#1085#1072
      #1057#1090#1080#1087#1077#1085#1076#1110#1072#1083#1100#1085#1072
      #1050#1088#1077#1076#1080#1090#1085#1072)
  end
  object edPass: TLabeledEdit
    Left = 16
    Top = 74
    Width = 145
    Height = 21
    EditLabel.Width = 37
    EditLabel.Height = 13
    EditLabel.Caption = #1055#1072#1088#1086#1083#1100
    PasswordChar = '*'
    TabOrder = 1
  end
  object edBalance: TLabeledEdit
    Left = 16
    Top = 117
    Width = 145
    Height = 21
    EditLabel.Width = 35
    EditLabel.Height = 13
    EditLabel.Caption = #1041#1072#1083#1072#1085#1089
    TabOrder = 3
    Text = '0'
  end
  object btnClose: TButton
    Left = 296
    Top = 158
    Width = 107
    Height = 25
    Caption = #1047#1072#1082#1088#1080#1090#1080
    TabOrder = 4
    OnClick = btnCloseClick
  end
  object btnAdd: TButton
    Left = 296
    Top = 115
    Width = 107
    Height = 25
    Caption = #1057#1090#1074#1086#1088#1080#1090#1080
    TabOrder = 5
    OnClick = btnAddClick
  end
  object edName: TLabeledEdit
    Left = 16
    Top = 32
    Width = 145
    Height = 21
    EditLabel.Width = 22
    EditLabel.Height = 13
    EditLabel.Caption = #1030#1084'`'#1103
    TabOrder = 0
  end
end
