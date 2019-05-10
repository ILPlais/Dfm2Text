object FormMain: TFormMain
  Left = 0
  Top = 0
  Caption = 'Convertions DFM'
  ClientHeight = 221
  ClientWidth = 617
  Color = clBtnFace
  Constraints.MaxHeight = 260
  Constraints.MinHeight = 260
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GrpDFMBin: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 611
    Height = 105
    Align = alTop
    Caption = 'DFM binaire vers texte'
    TabOrder = 0
    ExplicitWidth = 629
    object GpDFMBin: TGridPanel
      Left = 2
      Top = 15
      Width = 607
      Height = 88
      Align = alClient
      BevelOuter = bvNone
      Caption = 'GpDFMBin'
      ColumnCollection = <
        item
          Value = 25.000000000000000000
        end
        item
          Value = 75.000000000000000000
        end>
      ControlCollection = <
        item
          Column = 0
          Control = LblSourceBin
          Row = 0
        end
        item
          Column = 0
          Control = LblDestBin
          Row = 1
        end
        item
          Column = 1
          Control = EdtDestBin
          Row = 1
        end
        item
          Column = 0
          Control = BtnConvBin
          Row = 2
        end
        item
          Column = 1
          Control = PnlSourceBin
          Row = 0
        end>
      RowCollection = <
        item
          Value = 33.333333333333340000
        end
        item
          Value = 33.333333333333340000
        end
        item
          Value = 33.333333333333340000
        end>
      ShowCaption = False
      TabOrder = 0
      ExplicitLeft = 1
      ExplicitTop = 17
      ExplicitWidth = 625
      object LblSourceBin: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 145
        Height = 23
        Align = alClient
        Caption = '&Source'#160':'
        FocusControl = EdtSourceBin
        Layout = tlCenter
        ExplicitWidth = 40
        ExplicitHeight = 13
      end
      object LblDestBin: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 32
        Width = 145
        Height = 23
        Align = alClient
        Caption = '&Destination'#160':'
        FocusControl = EdtDestBin
        Layout = tlCenter
        ExplicitWidth = 61
        ExplicitHeight = 13
      end
      object EdtDestBin: TEdit
        AlignWithMargins = True
        Left = 154
        Top = 32
        Width = 450
        Height = 23
        Align = alClient
        TabOrder = 1
        ExplicitLeft = 252
        ExplicitTop = 36
        ExplicitWidth = 121
        ExplicitHeight = 21
      end
      object BtnConvBin: TButton
        AlignWithMargins = True
        Left = 3
        Top = 61
        Width = 145
        Height = 24
        Align = alClient
        Caption = '&Convertir'
        Enabled = False
        TabOrder = 2
        OnClick = BtnConvBinClick
        ExplicitLeft = 276
        ExplicitTop = 32
        ExplicitWidth = 75
        ExplicitHeight = 25
      end
      object PnlSourceBin: TPanel
        Left = 151
        Top = 0
        Width = 456
        Height = 29
        Align = alClient
        BevelOuter = bvNone
        Caption = 'PnlSourceBin'
        ShowCaption = False
        TabOrder = 0
        ExplicitLeft = 220
        ExplicitTop = 24
        ExplicitWidth = 185
        ExplicitHeight = 41
        object BtnSourceBin: TButton
          AlignWithMargins = True
          Left = 427
          Top = 3
          Width = 26
          Height = 23
          Align = alRight
          Caption = #8230
          TabOrder = 1
          OnClick = BtnSourceBinClick
          ExplicitLeft = 440
        end
        object EdtSourceBin: TEdit
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 418
          Height = 23
          Align = alClient
          TabOrder = 0
          OnChange = EdtSourceBinChange
          ExplicitLeft = 159
          ExplicitWidth = 463
          ExplicitHeight = 21
        end
      end
    end
  end
  object GrpDFMTexte: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 114
    Width = 611
    Height = 105
    Align = alTop
    Caption = 'DFM texte vers binaire'
    TabOrder = 1
    ExplicitLeft = 6
    ExplicitTop = 7
    ExplicitWidth = 629
    object GpDFMTexte: TGridPanel
      Left = 2
      Top = 15
      Width = 607
      Height = 88
      Align = alClient
      BevelOuter = bvNone
      Caption = 'GpDFMBin'
      ColumnCollection = <
        item
          Value = 25.000000000000000000
        end
        item
          Value = 75.000000000000000000
        end>
      ControlCollection = <
        item
          Column = 0
          Control = LblSourceTexte
          Row = 0
        end
        item
          Column = 0
          Control = LblDestTexte
          Row = 1
        end
        item
          Column = 1
          Control = EdtDestTexte
          Row = 1
        end
        item
          Column = 0
          Control = BtnConvTexte
          Row = 2
        end
        item
          Column = 1
          Control = PnlSourceTexte
          Row = 0
        end>
      RowCollection = <
        item
          Value = 33.333333333333340000
        end
        item
          Value = 33.333333333333340000
        end
        item
          Value = 33.333333333333340000
        end>
      ShowCaption = False
      TabOrder = 0
      ExplicitWidth = 625
      object LblSourceTexte: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 145
        Height = 23
        Align = alClient
        Caption = '&Source'#160':'
        FocusControl = EdtSourceTexte
        Layout = tlCenter
        ExplicitWidth = 40
        ExplicitHeight = 13
      end
      object LblDestTexte: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 32
        Width = 145
        Height = 23
        Align = alClient
        Caption = '&Destination'#160':'
        FocusControl = EdtDestTexte
        Layout = tlCenter
        ExplicitWidth = 61
        ExplicitHeight = 13
      end
      object EdtDestTexte: TEdit
        AlignWithMargins = True
        Left = 154
        Top = 32
        Width = 450
        Height = 23
        Align = alClient
        TabOrder = 1
        ExplicitLeft = 159
        ExplicitWidth = 463
        ExplicitHeight = 21
      end
      object BtnConvTexte: TButton
        AlignWithMargins = True
        Left = 3
        Top = 61
        Width = 145
        Height = 24
        Align = alClient
        Caption = '&Convertir'
        Enabled = False
        TabOrder = 2
        OnClick = BtnConvTexteClick
        ExplicitWidth = 150
      end
      object PnlSourceTexte: TPanel
        Left = 151
        Top = 0
        Width = 456
        Height = 29
        Align = alClient
        BevelOuter = bvNone
        Caption = 'PnlSourceTexte'
        ShowCaption = False
        TabOrder = 0
        ExplicitLeft = 220
        ExplicitTop = 24
        ExplicitWidth = 185
        ExplicitHeight = 41
        object BtnSourceTexte: TButton
          AlignWithMargins = True
          Left = 427
          Top = 3
          Width = 26
          Height = 23
          Align = alRight
          Caption = #8230
          TabOrder = 1
          OnClick = BtnSourceTexteClick
          ExplicitLeft = 443
          ExplicitTop = 6
          ExplicitHeight = 24
        end
        object EdtSourceTexte: TEdit
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 418
          Height = 23
          Align = alClient
          TabOrder = 0
          OnChange = EdtSourceTexteChange
          ExplicitLeft = 159
          ExplicitWidth = 463
          ExplicitHeight = 21
        end
      end
    end
  end
  object dlgOpenDFM: TOpenDialog
    Filter = 'Fiche Delphi (*.dfm)|*.DFM'
    Options = [ofHideReadOnly, ofFileMustExist, ofEnableSizing]
    Left = 468
    Top = 96
  end
end
