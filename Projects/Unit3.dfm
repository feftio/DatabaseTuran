object Form3: TForm3
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Form3'
  ClientHeight = 465
  ClientWidth = 893
  Color = clWhite
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 893
    Height = 225
    Align = alTop
    ShowCaption = False
    TabOrder = 0
    object GroupBox2: TGroupBox
      Left = 7
      Top = 119
      Width = 874
      Height = 98
      Color = clWhite
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Sitka Text'
      Font.Style = []
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      TabOrder = 0
      object GroupBox3: TGroupBox
        Left = 16
        Top = 16
        Width = 432
        Height = 73
        Caption = #1048#1084#1103' '#1087#1086#1083#1103
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = []
        ParentBackground = False
        ParentColor = False
        ParentFont = False
        TabOrder = 0
        object Edit1: TEdit
          Left = 16
          Top = 32
          Width = 401
          Height = 26
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnChange = Edit1Change
        end
      end
      object GroupBox4: TGroupBox
        Left = 454
        Top = 16
        Width = 129
        Height = 73
        Caption = #1058#1080#1087' '#1087#1086#1083#1103
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = []
        ParentBackground = False
        ParentColor = False
        ParentFont = False
        TabOrder = 1
        object ComboBox1: TComboBox
          Left = 16
          Top = 32
          Width = 97
          Height = 26
          Style = csDropDownList
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Sitka Text'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnChange = ComboBox1Change
        end
      end
      object GroupBox5: TGroupBox
        Left = 589
        Top = 16
        Width = 131
        Height = 73
        Caption = #1044#1083#1080#1085#1072'/'#1047#1085#1072#1095#1077#1085#1080#1077
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = []
        ParentBackground = False
        ParentColor = False
        ParentFont = False
        TabOrder = 2
        object SpinEdit2: TSpinEdit
          Left = 27
          Top = 29
          Width = 78
          Height = 29
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = []
          MaxLength = 3
          MaxValue = 1000
          MinValue = 1
          ParentFont = False
          TabOrder = 0
          Value = 5
          OnChange = SpinEdit2Change
        end
      end
      object GroupBox6: TGroupBox
        Left = 726
        Top = 16
        Width = 130
        Height = 73
        Caption = #1056#1072#1079#1088#1077#1096#1080#1090#1100' NULL'
        Color = clWhite
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = []
        ParentBackground = False
        ParentColor = False
        ParentFont = False
        TabOrder = 3
        object CheckBox1: TCheckBox
          Left = 16
          Top = 32
          Width = 121
          Height = 25
          Caption = #1055#1091#1089#1090#1086#1077' '#1087#1086#1083#1077
          TabOrder = 0
          OnClick = CheckBox1Click
        end
      end
    end
    object GroupBox1: TGroupBox
      Left = 295
      Top = 6
      Width = 145
      Height = 97
      Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1087#1086#1083#1077#1081
      Color = clWhite
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      TabOrder = 1
      object SpinEdit1: TSpinEdit
        Left = 38
        Top = 39
        Width = 65
        Height = 33
        EditorEnabled = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Sitka Text'
        Font.Style = []
        MaxLength = 2
        MaxValue = 99
        MinValue = 1
        ParentFont = False
        TabOrder = 0
        Value = 1
        OnChange = SpinEdit1Change
      end
    end
    object GroupBox7: TGroupBox
      Left = 446
      Top = 6
      Width = 435
      Height = 97
      Align = alCustom
      Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081
      Color = clWhite
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      TabOrder = 2
      object Memo1: TMemo
        Left = 16
        Top = 24
        Width = 401
        Height = 64
        Align = alCustom
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
    object GroupBox8: TGroupBox
      Left = 23
      Top = 6
      Width = 266
      Height = 97
      Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1090#1072#1073#1083#1080#1094#1099
      Color = clWhite
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      TabOrder = 3
      object Memo2: TMemo
        Left = 16
        Top = 24
        Width = 241
        Height = 64
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 0
        OnChange = Memo2Change
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 406
    Width = 893
    Height = 59
    Align = alBottom
    ShowCaption = False
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 1
      Top = 1
      Width = 891
      Height = 57
      Align = alClient
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Sitka Text'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn1Click
    end
  end
  object StringGrid1: TStringGrid
    Left = 0
    Top = 225
    Width = 893
    Height = 181
    Align = alClient
    BevelWidth = 2
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing, goRowMoving, goRowSelect, goThumbTracking]
    ParentFont = False
    TabOrder = 2
    OnRowMoved = StringGrid1RowMoved
    OnSelectCell = StringGrid1SelectCell
    ColWidths = (
      64
      475
      93
      92
      118)
    RowHeights = (
      24
      24
      24
      24
      24)
  end
  object DataSource1: TDataSource
    Left = 791
    Top = 319
  end
  object ZQuery1: TZQuery
    Params = <>
    Left = 712
    Top = 320
  end
end
