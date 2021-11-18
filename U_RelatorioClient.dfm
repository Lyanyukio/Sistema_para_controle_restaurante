object Form_relatorio_client: TForm_relatorio_client
  Left = 0
  Top = 0
  Caption = 'form_relatorio_client_print'
  ClientHeight = 818
  ClientWidth = 792
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = 0
    Top = 0
    Width = 794
    Height = 1123
    DataSource = F_RelCliente.DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object rlb_cabecalho: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 19
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLSystemInfo1: TRLSystemInfo
        Left = 0
        Top = 0
        Width = 39
        Height = 18
        Align = faLeft
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 677
        Top = 0
        Width = 41
        Height = 18
        Align = faRight
        Alignment = taRightJustify
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        Info = itHour
        ParentFont = False
        Text = ''
      end
      object RLLabel1: TRLLabel
        Left = 220
        Top = -1
        Width = 276
        Height = 21
        Align = faCenter
        Alignment = taCenter
        Caption = 'Sistema de Controle de Restaurante'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object rlb_titulo: TRLBand
      Left = 38
      Top = 57
      Width = 718
      Height = 25
      BandType = btTitle
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLLabel2: TRLLabel
        Left = 295
        Top = 4
        Width = 128
        Height = 17
        Align = faCenter
        Alignment = taCenter
        Caption = 'Relat'#243'rio de Clientes'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object rlb_colunas: TRLBand
      Left = 38
      Top = 82
      Width = 718
      Height = 26
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object label_nome: TRLLabel
        Left = 97
        Top = 5
        Width = 40
        Height = 17
        Caption = 'Nome'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object label_endereco: TRLLabel
        Left = 311
        Top = 5
        Width = 66
        Height = 17
        Caption = 'Endere'#231'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object label_telefone: TRLLabel
        Left = 612
        Top = 3
        Width = 77
        Height = 17
        Caption = 'Telefone'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object label_codigo: TRLLabel
        Left = 3
        Top = 3
        Width = 47
        Height = 17
        Caption = 'C'#243'digo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
    end
    object rlb_detail: TRLBand
      Left = 38
      Top = 108
      Width = 718
      Height = 26
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object lb_codigo: TRLDBText
        Left = 3
        Top = 6
        Width = 45
        Height = 17
        DataField = 'codigo'
        DataSource = F_RelCliente.DataSource1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object lb_nome: TRLDBText
        Left = 97
        Top = 6
        Width = 37
        Height = 17
        DataField = 'nome'
        DataSource = F_RelCliente.DataSource1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object lb_endereco: TRLDBText
        Left = 311
        Top = 6
        Width = 59
        Height = 17
        DataField = 'endereco'
        DataSource = F_RelCliente.DataSource1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText4: TRLDBText
        Left = 612
        Top = 5
        Width = 51
        Height = 17
        DataField = 'telefone'
        DataSource = F_RelCliente.DataSource1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
    end
    object rlb_rodape: TRLBand
      Left = 38
      Top = 134
      Width = 718
      Height = 28
      BandType = btFooter
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
    end
  end
end
