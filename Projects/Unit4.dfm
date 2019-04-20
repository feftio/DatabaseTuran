object Form4: TForm4
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1072
  ClientHeight = 478
  ClientWidth = 848
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 848
    Height = 478
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = '"'#1044#1077#1088#1077#1074#1086'"'
      object GroupBox1: TGroupBox
        Left = 24
        Top = 27
        Width = 201
        Height = 110
        Caption = #1056#1072#1079#1084#1077#1088#1099' "'#1044#1077#1088#1077#1074#1072'"'
        Color = clSkyBlue
        ParentBackground = False
        ParentColor = False
        TabOrder = 0
        object Label1: TLabel
          Left = 14
          Top = 35
          Width = 64
          Height = 19
          Caption = #1064#1080#1088#1080#1085#1072':'
        end
        object Label2: TLabel
          Left = 20
          Top = 70
          Width = 58
          Height = 19
          Caption = #1064#1088#1080#1092#1090':'
        end
        object SpinEdit1: TSpinEdit
          Left = 99
          Top = 32
          Width = 86
          Height = 29
          MaxValue = 500
          MinValue = 135
          TabOrder = 0
          Value = 135
        end
        object SpinEdit2: TSpinEdit
          Left = 99
          Top = 67
          Width = 86
          Height = 29
          MaxValue = 20
          MinValue = 5
          TabOrder = 1
          Value = 5
        end
      end
      object GroupBox2: TGroupBox
        Left = 24
        Top = 158
        Width = 137
        Height = 171
        Caption = #1044#1086#1087'. '#1053#1072#1089#1090#1088#1086#1081#1082#1080
        Color = clSkyBlue
        ParentBackground = False
        ParentColor = False
        TabOrder = 1
        object CheckBox1: TCheckBox
          Left = 20
          Top = 40
          Width = 97
          Height = 17
          Caption = #1050#1083#1080#1082' '#1055#1050#1052
          TabOrder = 0
        end
        object CheckBox2: TCheckBox
          Left = 20
          Top = 72
          Width = 81
          Height = 17
          Caption = #1057#1090#1088#1077#1083#1082#1080
          TabOrder = 1
        end
        object CheckBox3: TCheckBox
          Left = 20
          Top = 104
          Width = 69
          Height = 17
          Caption = #1051#1080#1085#1080#1080
          TabOrder = 2
        end
        object CheckBox4: TCheckBox
          Left = 20
          Top = 136
          Width = 101
          Height = 17
          Caption = #1042#1099#1076#1077#1083#1077#1085#1080#1077
          TabOrder = 3
        end
      end
      object Button1: TButton
        Left = 24
        Top = 376
        Width = 674
        Height = 49
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
        TabOrder = 2
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 704
        Top = 376
        Width = 121
        Height = 49
        Caption = #1055#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
        TabOrder = 3
      end
      object GroupBox3: TGroupBox
        Left = 184
        Top = 248
        Width = 185
        Height = 81
        Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080' BoxPreview'
        Color = clSkyBlue
        ParentBackground = False
        ParentColor = False
        TabOrder = 4
        object Label3: TLabel
          Left = 16
          Top = 40
          Width = 58
          Height = 19
          Caption = #1064#1088#1080#1092#1090':'
        end
        object SpinEdit3: TSpinEdit
          Left = 88
          Top = 37
          Width = 81
          Height = 29
          MaxValue = 20
          MinValue = 5
          TabOrder = 0
          Value = 5
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'TabSheet2'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
    end
    object TabSheet3: TTabSheet
      Caption = 'TabSheet3'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
    end
  end
end
