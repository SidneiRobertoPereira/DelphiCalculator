object frmMain: TfrmMain
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = '[ Calculator 1.0 ]'
  ClientHeight = 535
  ClientWidth = 545
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object p_fundo: TPanel
    Left = 0
    Top = 0
    Width = 545
    Height = 535
    Align = alClient
    Color = clActiveCaption
    ParentBackground = False
    TabOrder = 0
    object edt_Result: TEdit
      Left = 1
      Top = 1
      Width = 543
      Height = 89
      Align = alTop
      Alignment = taRightJustify
      Color = clInfoBk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -67
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Panel1: TPanel
      Left = 1
      Top = 354
      Width = 543
      Height = 88
      Align = alTop
      Caption = 'Panel1'
      ShowCaption = False
      TabOrder = 1
      object btn_Somar: TButton
        Left = 407
        Top = 1
        Width = 135
        Height = 86
        Cursor = crHandPoint
        Margins.Left = 20
        Margins.Top = 20
        Margins.Right = 20
        Margins.Bottom = 20
        Align = alRight
        Caption = '+'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = btn_SomarClick
      end
      object btn_Hum: TButton
        Left = 1
        Top = 1
        Width = 135
        Height = 86
        Cursor = crHandPoint
        Margins.Left = 20
        Margins.Top = 20
        Margins.Right = 20
        Margins.Bottom = 20
        Align = alLeft
        Caption = '1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = btn_HumClick
      end
      object btn_Dois: TButton
        Left = 136
        Top = 1
        Width = 135
        Height = 86
        Cursor = crHandPoint
        Margins.Left = 20
        Margins.Top = 20
        Margins.Right = 20
        Margins.Bottom = 20
        Align = alLeft
        Caption = '2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnClick = btn_DoisClick
      end
      object btn_Tres: TButton
        Left = 271
        Top = 1
        Width = 135
        Height = 86
        Cursor = crHandPoint
        Margins.Left = 20
        Margins.Top = 20
        Margins.Right = 20
        Margins.Bottom = 20
        Align = alLeft
        Caption = '3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        OnClick = btn_TresClick
      end
    end
    object Panel2: TPanel
      Left = 1
      Top = 90
      Width = 543
      Height = 88
      Align = alTop
      Caption = 'Panel1'
      ShowCaption = False
      TabOrder = 2
      object btn_Clear: TButton
        Left = 1
        Top = 1
        Width = 405
        Height = 86
        Cursor = crHandPoint
        Margins.Left = 20
        Margins.Top = 20
        Margins.Right = 20
        Margins.Bottom = 20
        Align = alLeft
        Caption = 'C'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = btn_ClearClick
      end
      object btn_Dividir: TButton
        Left = 407
        Top = 1
        Width = 135
        Height = 86
        Cursor = crHandPoint
        Margins.Left = 20
        Margins.Top = 20
        Margins.Right = 20
        Margins.Bottom = 20
        Align = alRight
        Caption = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = btn_DividirClick
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 442
      Width = 543
      Height = 88
      Align = alTop
      Caption = 'Panel1'
      ShowCaption = False
      TabOrder = 3
      object btn_Resultado: TButton
        Left = 271
        Top = 1
        Width = 271
        Height = 86
        Cursor = crHandPoint
        Margins.Left = 20
        Margins.Top = 20
        Margins.Right = 20
        Margins.Bottom = 20
        Align = alRight
        Caption = '='
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = btn_ResultadoClick
      end
      object btn_zero: TButton
        Left = 1
        Top = 1
        Width = 135
        Height = 86
        Cursor = crHandPoint
        Margins.Left = 20
        Margins.Top = 20
        Margins.Right = 20
        Margins.Bottom = 20
        Align = alLeft
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = btn_zeroClick
      end
      object btn_Ponto: TButton
        Left = 136
        Top = 1
        Width = 135
        Height = 86
        Cursor = crHandPoint
        Margins.Left = 20
        Margins.Top = 20
        Margins.Right = 20
        Margins.Bottom = 20
        Align = alLeft
        Caption = '.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnClick = btn_PontoClick
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 266
      Width = 543
      Height = 88
      Align = alTop
      Caption = 'Panel1'
      ShowCaption = False
      TabOrder = 4
      object btn_Subtrair: TButton
        Left = 407
        Top = 1
        Width = 135
        Height = 86
        Cursor = crHandPoint
        Margins.Left = 20
        Margins.Top = 20
        Margins.Right = 20
        Margins.Bottom = 20
        Align = alRight
        Caption = '-'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = btn_SubtrairClick
      end
      object btn_Quatro: TButton
        Left = 1
        Top = 1
        Width = 135
        Height = 86
        Cursor = crHandPoint
        Margins.Left = 20
        Margins.Top = 20
        Margins.Right = 20
        Margins.Bottom = 20
        Align = alLeft
        Caption = '4'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = btn_QuatroClick
      end
      object btn_Cinco: TButton
        Left = 136
        Top = 1
        Width = 135
        Height = 86
        Cursor = crHandPoint
        Margins.Left = 20
        Margins.Top = 20
        Margins.Right = 20
        Margins.Bottom = 20
        Align = alLeft
        Caption = '5'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnClick = btn_CincoClick
      end
      object btn_Seis: TButton
        Left = 271
        Top = 1
        Width = 135
        Height = 86
        Cursor = crHandPoint
        Margins.Left = 20
        Margins.Top = 20
        Margins.Right = 20
        Margins.Bottom = 20
        Align = alLeft
        Caption = '6'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        OnClick = btn_SeisClick
      end
    end
    object Panel5: TPanel
      Left = 1
      Top = 178
      Width = 543
      Height = 88
      Align = alTop
      Caption = 'Panel1'
      ShowCaption = False
      TabOrder = 5
      object btn_Multiplicar: TButton
        Left = 407
        Top = 1
        Width = 135
        Height = 86
        Cursor = crHandPoint
        Margins.Left = 20
        Margins.Top = 20
        Margins.Right = 20
        Margins.Bottom = 20
        Align = alRight
        Caption = '*'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = btn_MultiplicarClick
      end
      object btn_Oito: TButton
        Left = 136
        Top = 1
        Width = 135
        Height = 86
        Cursor = crHandPoint
        Margins.Left = 20
        Margins.Top = 20
        Margins.Right = 20
        Margins.Bottom = 20
        Align = alLeft
        Caption = '8'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = btn_OitoClick
      end
      object btn_Nove: TButton
        Left = 271
        Top = 1
        Width = 135
        Height = 86
        Cursor = crHandPoint
        Margins.Left = 20
        Margins.Top = 20
        Margins.Right = 20
        Margins.Bottom = 20
        Align = alLeft
        Caption = '9'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnClick = btn_NoveClick
      end
      object btn_Sete: TButton
        Left = 1
        Top = 1
        Width = 135
        Height = 86
        Cursor = crHandPoint
        Margins.Left = 20
        Margins.Top = 20
        Margins.Right = 20
        Margins.Bottom = 20
        Align = alLeft
        Caption = '7'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        OnClick = btn_SeteClick
      end
    end
  end
end
