object F_Relatorio: TF_Relatorio
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rios'
  ClientHeight = 147
  ClientWidth = 554
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Pnl_Relatorio: TPanel
    Left = 0
    Top = 0
    Width = 554
    Height = 57
    Align = alTop
    Color = clWhite
    Ctl3D = True
    ParentBackground = False
    ParentCtl3D = False
    TabOrder = 0
    ExplicitWidth = 1192
    object Label1: TLabel
      Left = 21
      Top = 23
      Width = 47
      Height = 13
      Caption = 'PER'#205'ODO'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 171
      Top = 23
      Width = 19
      Height = 13
      Caption = 'AT'#201
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 68
      Top = 4
      Width = 28
      Height = 13
      Caption = 'In'#237'cio'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 192
      Top = 5
      Width = 42
      Height = 13
      Caption = 'T'#233'rmino'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 294
      Top = 23
      Width = 104
      Height = 13
      Caption = 'TIPO DO RELAT'#211'RIO'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dbe_inicio: TDBEdit
      Left = 68
      Top = 19
      Width = 95
      Height = 23
      DataField = 'periodo'
      DataSource = DataSource1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object dbe_termino: TDBEdit
      Left = 192
      Top = 19
      Width = 95
      Height = 23
      DataField = 'periodo'
      DataSource = DataSource1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 398
      Top = 19
      Width = 140
      Height = 21
      KeyField = 'tip_relatorio'
      ListField = 'tip_relatorio'
      ListSource = DataSource1
      TabOrder = 2
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 57
    Width = 554
    Height = 88
    Align = alTop
    Color = clWhite
    Ctl3D = True
    ParentBackground = False
    ParentCtl3D = False
    TabOrder = 1
    object Panel1: TPanel
      Left = 53
      Top = 50
      Width = 136
      Height = 21
      BevelOuter = bvNone
      Color = 5905691
      ParentBackground = False
      TabOrder = 0
      object SpeedButton1: TSpeedButton
        Left = 0
        Top = 0
        Width = 136
        Height = 21
        Align = alClient
        Caption = 'Visualizar Relat'#243'rio'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitLeft = -5
        ExplicitTop = 13
      end
    end
    object Panel2: TPanel
      Left = 190
      Top = 50
      Width = 139
      Height = 21
      BevelOuter = bvNone
      Color = 16416865
      ParentBackground = False
      TabOrder = 1
      object SpeedButton2: TSpeedButton
        Left = 0
        Top = 0
        Width = 139
        Height = 21
        Align = alClient
        Caption = 'Imprimir'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpeedButton2Click
      end
    end
    object Panel3: TPanel
      Left = 331
      Top = 50
      Width = 154
      Height = 21
      BevelOuter = bvNone
      Color = 15000804
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 2
      object SpeedButton3: TSpeedButton
        Left = 0
        Top = 0
        Width = 154
        Height = 21
        Align = alClient
        Caption = 'Voltar'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = 4276545
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpeedButton3Click
        ExplicitLeft = 33
        ExplicitWidth = 151
        ExplicitHeight = 39
      end
    end
  end
  object FDQ_Relatorio: TFDQuery
    Connection = F_Principal.FDConnection1
    SQL.Strings = (
      'select * from tb_cliente')
    Left = 360
    Top = 40
    object FDQ_Relatoriocodigo: TFDAutoIncField
      FieldName = 'codigo'
      Origin = 'codigo'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object FDQ_Relatorionome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome'
      Origin = 'nome'
      Size = 50
    end
    object FDQ_Relatorioendereco: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'endereco'
      Origin = 'endereco'
      Size = 70
    end
    object FDQ_Relatoriotelefone: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'telefone'
      Origin = 'telefone'
      Size = 12
    end
  end
  object DataSource1: TDataSource
    DataSet = FDQ_Relatorio
    Left = 296
    Top = 40
  end
end
