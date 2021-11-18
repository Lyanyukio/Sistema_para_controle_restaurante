object F_RelProduto: TF_RelProduto
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rio de Produtos'
  ClientHeight = 185
  ClientWidth = 621
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
  object Pnl_RelClient1: TPanel
    Left = 0
    Top = 0
    Width = 621
    Height = 144
    Margins.Right = 1
    Align = alClient
    Color = clWhite
    Ctl3D = True
    ParentBackground = False
    ParentCtl3D = False
    TabOrder = 0
    ExplicitLeft = -6
    ExplicitTop = -1
    ExplicitHeight = 152
    object Label1: TLabel
      Left = 5
      Top = 25
      Width = 66
      Height = 13
      Caption = 'Ordenar por:'
      Font.Charset = ANSI_CHARSET
      Font.Color = 4276545
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 33
      Top = 52
      Width = 38
      Height = 13
      Caption = 'C'#243'digo'
      Font.Charset = ANSI_CHARSET
      Font.Color = 4276545
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 189
      Top = 52
      Width = 13
      Height = 13
      Caption = 'ao'
      Font.Charset = ANSI_CHARSET
      Font.Color = 4276545
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object CB_Ordenacao: TComboBox
      Left = 81
      Top = 22
      Width = 231
      Height = 21
      HelpType = htKeyword
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = 'C'#243'digo'
      Items.Strings = (
        'C'#243'digo'
        'Descri'#231#227'o')
    end
    object Edit1: TEdit
      Left = 81
      Top = 49
      Width = 100
      Height = 21
      TabOrder = 1
      Text = '1'
      OnKeyPress = SomenteNumeros
    end
    object Edit2: TEdit
      Left = 212
      Top = 49
      Width = 100
      Height = 21
      TabOrder = 2
      Text = '9999999'
      OnKeyPress = SomenteNumeros
    end
  end
  object Pnl_RelClient2: TPanel
    Left = 0
    Top = 144
    Width = 621
    Height = 41
    Align = alBottom
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    object Pnl_imprimir: TPanel
      Left = 41
      Top = 10
      Width = 154
      Height = 21
      Align = alCustom
      BevelOuter = bvNone
      BiDiMode = bdLeftToRight
      Color = 16416865
      ParentBiDiMode = False
      ParentBackground = False
      TabOrder = 0
      object SB_imprimir: TSpeedButton
        Left = 0
        Top = 0
        Width = 154
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
        OnClick = SB_imprimirClick
        ExplicitLeft = -1
        ExplicitTop = 1
      end
    end
    object Pnl_voltar: TPanel
      Left = 200
      Top = 10
      Width = 154
      Height = 21
      Align = alCustom
      BevelOuter = bvNone
      Color = 15000804
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 1
      object SB_voltar: TSpeedButton
        Left = 0
        Top = 0
        Width = 154
        Height = 21
        Align = alClient
        Caption = 'Fechar'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = 4276545
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SB_voltarClick
        ExplicitTop = -8
        ExplicitWidth = 151
        ExplicitHeight = 39
      end
    end
  end
  object FDQ_Relatorio: TFDQuery
    Connection = F_Principal.FDConnection1
    SQL.Strings = (
      'select * from tb_produto')
    Left = 360
    Top = 39
    object FDQ_Relatoriocodigo: TFDAutoIncField
      FieldName = 'codigo'
      Origin = 'codigo'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQ_Relatoriodescricao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 100
    end
    object FDQ_Relatoriopreco: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'preco'
      Origin = 'preco'
    end
  end
  object DataSource1: TDataSource
    DataSet = FDQ_Relatorio
    Left = 390
    Top = 40
  end
  object frx_RelProduto: TfrxReport
    Version = '2021.2.7'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44417.667234629600000000
    ReportOptions.LastChange = 44435.707694571800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 528
    Top = 80
    Datasets = <
      item
        DataSet = RelProduto
        DataSetName = 'RelProduto'
      end
      item
        DataSet = frx_Empresa_produto
        DataSetName = 'frx_Empresa'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 108.299320000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = 194.645795000000000000
          Top = 63.504020000000000000
          Width = 328.819110000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'segoe UI'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Relat'#243'rio de Produtos')
          ParentFont = False
        end
        object Date: TfrxMemoView
          IndexTag = 1
          Align = baLeft
          AllowVectorExport = True
          Top = 4.661410000000000000
          Width = 117.165430000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'segoe UI'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
        object Time: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 624.740570000000000000
          Top = -2.015770000000000000
          Width = 79.370130000000000000
          Height = 26.456710000000000000
          DisplayFormat.FormatStr = 'hh:mm'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'segoe UI'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Time]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = 194.645795000000000000
          Top = 39.488250000000000000
          Width = 328.819110000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'segoe UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Sistema de Controle de Restaurante')
          ParentFont = False
        end
        object frx_Empresanome: TfrxMemoView
          IndexTag = 1
          Align = baCenter
          AllowVectorExport = True
          Left = 268.346630000000000000
          Top = 7.929190000000000000
          Width = 181.417440000000000000
          Height = 30.236240000000000000
          StretchMode = smMaxHeight
          DataField = 'nome'
          DataSet = frx_Empresa_produto
          DataSetName = 'frx_Empresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Segoe UI'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frx_Empresa."nome"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Align = baCenter
          AllowVectorExport = True
          Left = 334.488405000000000000
          Top = -34.015770000000000000
          Width = 49.133890000000000000
          Height = 49.133890000000000000
          Frame.Typ = []
          Picture.Data = {
            0954506E67496D61676589504E470D0A1A0A0000000D49484452000000800000
            00800806000000C33E61CB0000000467414D410000B18F0BFC61050000000173
            52474200AECE1CE900000006624B474400FF00FF00FFA0BDA793000000097048
            5973000044B8000044B801F737D77A000019794944415478DAED5D0B7854E599
            7ECF9999DC1348B80BE122491410D08ABA6A95D56E81A0ED5A5B755BEDD545AD
            B5372FADEB2A2BA56275AB5B2F785FB555B7B5DD5A2FC520B575B556AD955A01
            AD10C40B02E112C83D9364E6FCFBBDE7CCC449C824339399F39F49F2F27C2133
            49CE9CF37FEFFFDDFE9B812C47F5032FE3ED438A1150CAA7140AE4AD3122E345
            0E173946A442649CC8689122917C911C91808819B98C25D225D221D22ED22272
            4064AF48ADC85F44B68AEC16A9B70CD5EA0BFBAC770FDD86AE599FD2DD048382
            A1FB0692C5DCE76AD1DED606C367FAA0304ADE9A2C729CC8C74566884C122985
            A3ECDC343C23C9D10987140D223B45DE117941E435911D864263D86758553B9B
            51F3D5E375375152C80A0254AED9488543298B3D77229C9EFD6991B92253E028
            DCEFF26DD16290101F886C14794264BDB4689D65595D7E9F1F9B17CFD1DD7403
            C2D304A8ACD90043193E656082BC3C59E42C91F9707A7D9EEEFBEB05BA8E1D22
            7F13F9A5C88B227B44C2B5D57375DF5B5C788E00156B37C017366099B63F67CB
            7D45E4149169F09ED2E32128F2AEC81F447E26B2D152A176D3F0C36B64F00C01
            2A6B6845156F89C1DA2745CE17592052E6A5FB4C127CA07A915745EE1579CEF0
            A151495451BBC41B44D0DEB05562E67D2A849011A01F3F43E45F458E1429D07D
            6F6946ABC8EB227789AC69EEAC6F28CA29C3D6EA795A6F4A1B012A6B36C9D7B0
            88C9689DB9D425221F43F698F954C15881D9C34FC43EAC150DB449748BDAA57A
            88A0850034F7F2C101B18FCC99AE8413E0156A69017D605AF97B911BE0D41942
            3AE203570940C5874292AFF9512E2FAF10F9BCC858D79FDA5B6071E96191FF2A
            CBCDD971A0A3135B5C24826B0470823CBB30C3FCFD2A3811BECFB527F536E80B
            993EAE1485D48865EC74CB1A649C0015356FC2AFBA10367CCCDDFF5DE43C9162
            579E2EFBD008276DBC5E54B38B45C8DA0C078919258013E8B1DEAE4E761ECAAE
            E08DF4FAFE416BF08AC8F7158C974441AAB6FA888C7D58C6081031F98CE899CF
            B3E74FCAD8530C4D7C28B25CE41164D025A49D0095CFBC21968B9D5C71546E85
            C85731F4727AB7C04CE11E911FC21E9DA44B989FD60F482B01AAA4D72BE75B96
            6D6F8613F0B93D4833D42079131E13B94CB4F5212C03B54BD3E712D246800A51
            3E07D78500BCBBD52227A5F3FAC31CEC571C5760B1EC6DBE912E97901605D1DF
            2BB992A1ECDAFDDD702A7A23483F5E16B9D080DA6889EAB6A681048326803D64
            6B70AC5E715206073CBC31CA3174B15E6499A8EEF574A489832240C55A31FBCA
            B64FECF9F76344F96E812460706D075DB54B536FF6940950B57683F47AFBCFF9
            E90F62C4ECBB0DBA039260B3B2DD416A81614A0498B9467ABE339D92D13E2B57
            27EB6E8D618ADF897C4DE4435342F0CDD5C94F414B890091220FF37CE6A89F49
            F53A231834981DFC1C4E76702095CC2069C5C554F87E2C7211464ABBBAC13A01
            7571AD4847B224488A008CF825DA3724EABF585EDE88910A9F57C08AE1C50DC1
            CE8746E5E6606B124161C2047006763845DEE0044DD6A7B3B2B64F9B6929D5E7
            CF7C46567BB2ED22E7C0090E132E14254100DBF47348F77F45FE41F7D3A68A3C
            9F89CAA25CE49A668FF78361C9A95B82E8B0548A57F6049E8733C966575A0950
            1599CCA1388F0DB830D1BFF31AA8DB73A796E1B2AA09C8318DE8B885FD3041F9
            E1BF6DDC8175BB1BB3D912D044331EB806098E200EF8A4919E4F9C0DA7D257A2
            FB29536E1DD1F8B57326E1BCA963FAFCF9F23777E2E10FEAE1CF5E02109C5472
            9E38BBDF722AC64073091225C054384B9F8ED4FD7483814D80D9428069439A00
            04671D9F29B27D202BD0EF934694CF55B41CDAFDC640BFEF35D0C42BBB54ADBA
            5FAF987D08BE2804887DDFE03F79B26B84000FBD5F6FBB003E68940759F5D00E
            E80A56C9F3AD9027E977B671DC67AB7CFA0DF9A91D282D14F9159C25D69E4654
            E144406EBDD0E743897C5396E3C7F85C3F2A0B73B178E228CC1E958F2E3107E1
            70188D2D2D509625BF6FE2F9FA56BCB8BF0D759D160E842C3485155A44181F84
            95D35AE6606ED05D705DE23F8BBC22893BB62EE9DB15C42780D3FB3979F35191
            6ADD4FD31F68DAD95B8BFD2626E705706C5921169416A2BC20C7567EB1908051
            7FC0347A3C3009B07BEF3E8438573DD2EBD9754272C1A05C93CA2711767686F1
            D79610DE6A0B615F978576CBB11D5940865FC3595BD912CF0AF4490027E7B7BB
            D217E0947B3DB968838ACF15A54E2BCC41F584129C38B608D3A5978F0AF8128A
            E4A304E0FF7D354CAC1B10A36093617B47182F3777E1A5A64EEC16328494A789
            C00211D3C2DFF2455F24884380EE5AFF932227E87E8ADEA0E2F37C06E6892967
            5A778CF4F6B1B90198493AEBFE08D01778797E46977CFE1E61C4EB2D5D78727F
            07DE0986ECF73C4A04CE24E2B2FAFD0911A06AED4628BBE0678F32DD01673187
            271071C398559C876533C6E2A471C5766F4F15C91220165165D78B5578A9A90B
            BFDA17C4071DCE753C1634722DE2B922BF61FBF59E4574D0BD467A3F9764D36C
            7866BF13F67A0674E79597E10B12C54FCC0B0CFA9A83214014D106FC50E2845F
            ED0D625D43A71D347A8C04B4029F1569A8ED8F0015CEA24D82459F07E091C11E
            2A7FA6F8F9EF1D3611274BAF0F246BEBE3201D04888216A1435290E71BBB707F
            5D1B76497CE02197C058800458C728B7F6B48F48D0A32523BD9F011FA3C7C5BA
            EF9AA0F28F2D2BC035B3266156497E5AAF9D4E0210D1C6DC24D9C26D3BDBB0A5
            3DE4254BC054FECB22EDB156A02F02D0EC3F052708D40AFAAC13C71462E59CC9
            764A976EA49B0051B0E7BF130CE3E61DAD78B3CD3324D827B244647D9F04880C
            F8708E2703BF0B75DF2D7BFEF1D2F3AF9F3B055332A07C2253042048826D4282
            1B3E6CC5DB62093CE20E7E009F752DC2A68A92A09B0031C3BDCFC2D964511BA8
            FCD925B9B8695E392A8B33B7614826094050E92C1E5DB7BDD50E123D4082B744
            1689ECE84100EECC6538337C593460F0A72DF5A3D91F9BE3C3CDA2FCE3C71665
            F4B3324D0082ADFA4263277E2CEEA039AC3D3BE0EE651C24AA317C06B62C3A22
            4200A7F7E7C88B5FC099E4A90DACE05D79D8047C71DAD8A40B3BC9C20D02102C
            ABDC2799C12F254DF4C07493FBA4B75F0C6574D10AD84D1C31FF9CE2CD7CF150
            5D7746D3FF8FE38A70D3FCF241157812855B046023EF0F5958FE7E0B36B58632
            4EEC01C06D6E4F15F9A037013E27F21034EDD2C59E512A4ABFE3A8A95850E6CE
            D0835B0420E8FFFFD4D48555DB5BD0AAB750C4CA20B7E35B6713C01EF831C0C5
            7DF4FD5FD2755724C097A696E1CAC327A5ADD03310DC24009F8885A25512103E
            2F3181E680F04761CB7795CF0C2B23A6F4CBE8FF281D77E3047E7EDCBF605ADA
            8B3DFDC14D021054FA1BE20296BFDF8C46BD0121670CB1D0B73F4A002E312501
            B44CFA70266B96E2EA5987B8D6FB09B70940748A1558F9410B5E6CECD2190BF0
            1C844F886C8C1280DBB3720B53D757F9B0F717F94DDCFBB169AEF9FE28741080
            4A7F515C006B03EDFA62016E75CFF19EC78DAAA73799CA505CDAFD651D771296
            1E716C6921EE3E7A1A4A5C88FC7B7CB6060250E134FF57BCDB842D6D619D56E0
            BADA6F1E71352D00A77973E8F7241D77C1E75F3E6B12CE9DE6FED0830E024471
            E7AE367B0E81C638E03991334880E970961957B87D07D1D4EFC163A663B68BC1
            5F14BA08C05EBF4182C1ABDE6BB6E71D6A2201CF425A440270991747FF5CDFB3
            97E6FFA8D10512FD4F77DDFCDB9FAF890054784348E17271035BDBB5B9018E0E
            9E4E0230F7E7C64EAE178018FD7F63E6587CB76AA29616D0E90238CD9C45A1DF
            3774C2A78700F6543112E036685AF411300CDC7654394E1DAF67B5994E02B026
            F0587D10AB77B6D963053A1E5FE43B24400D9C8902AE82FEBF4CCCFE4F8F9981
            C34BF49C11A19500863354FCFD779B758E12DE4202B02A74B4DB9F4CF37F6861
            0E1E3E7606C6A76182672AD049002A9CEB0A2EDDD6841D9DDAE60F3E4B02F044
            CC996E7F7234FFFF6F09000BFC7A1E5F37015AEC7A4033FEDEA66D84B09604A8
            936F26B8FDC924C0E7268FC6AAB953B4ADC7D74900828B49AE79BF19AF3475E9
            0A04EB4800AE27773D0AA30BF85ED5785C3073BC96272774138071D0F59209AC
            3BA02D13682401980EB81E85F1E17F38E7109C535EA6E5C909DD04A0CE6FD9D9
            8AC7F675E822409004E03663AE54615444087AFD9BE64DC1A70E19ADE5C909DD
            04601BDCB7BB1D3F1389DD8BC0452E844900CB8DCFE4078C0A98C88B6CCE44C6
            730CE094F1257177EDCAEC0D19B6E2EBEBF72324FFEB0843B820FDB17D41FC72
            5FB0FBBDF6B085C6906B9501E50A01F80153F2FC585131069372FDDD3B7394E6
            F891EFD337374609F12CCB820EFE11245DABBD0985A37012624747082BB6D6E3
            C3A02B6B09942B2E8065CFA347E5E2F6D9E345E146B71FD05401F3147A987C83
            1640E192B7F6607DA32B7141D895209004582004B8550890A7794AACD7C195C5
            DF1202BCE60E01EC20B041BE1995C94F2101E697E462B510A0D86F243D379E85
            D2D8BF313D30BB5EF5715F4E6F4EBDACCBBF6B0E297C4308F046932B04B0D3C0
            5DF24D4687E3EC695FE2EBCF9C588419F981EE1820B126E1CD8551110EA2C00A
            A1CE9F876D46004D30233ED24D3218B6DB6214335ABE1B27F7552CFFFB184BC8
            CF9A0D133BE5A74D29528031406D6B279ED8D32AB181E54636601782383120E3
            9341A2BB7B24C36AFEEA27D18E8BAD064C565D30A5A13BA491DF327371B7311A
            7F414EF775337DEFECD7F9F2750E3AF169D58AB9AA430810429E8ADA0143ECA9
            81CD724FFF618EC17621422A962AA43E7A7617B08504E0C9D50BDCF9BCC4C19E
            562E0D7C8FB507D355A7F435A3BB61D8F3F7183EDC6A96E271142293690CAFCD
            B5C91F4307BEA49A70940A629472C2D7D8BA0622F7D524045D664EC006F9AB2C
            D8477F1D09B046BE59AAFB4E7A830D3B5ED47E87B517B3A4B7F5CE18D8D834B9
            3F36CBF0989020138E80D724099789E23FA1DA50AAC2F67DF4F559F67EC36201
            EE14523E842274E95E069A186E2601B801F4B7E0B9BD8D221B442088EBAD7D28
            93C6EFDDF024C101B104CBC5E4FE410C74BA1E809FC3D32EFF49DCCF45E27E2A
            C40245DFEF0B51E5DF25CAFF9928BF1386F71AF360B0FCF92D12803B48711368
            F76765260036E4D725ACBA20DCD0A74F2509DE93A0F052731CDE4660D0C513F6
            F032F9CA5E7FA66A46B198FBFEEA15B6F24D1FEE3446D93D3F4B944F30FDFF3C
            09C0F3FE382DDCF549A189802A1F232A582DB1C03C71057D55EDA9F4E7CC025C
            658CB1B383541540455788C9BF421DC009565BF424D4B830A4D7077372713B4A
            F04828DF5E6D9125CA27B83AC89E14CA65E1EB44AA74DF513C50319F432BAE0E
            D7DB29585F609078A3AF0C3F47F29B4A443389E3C5DD5C611D409598FC81AA94
            6620808EFC02DC1A2AC0239D39F6D87E16299FD882C8B470EE074C0BE0D9A3DF
            A201E17D620566C6510E7BEB4EC38F4BCCF149B9025E9BC9E45942B00BC4DF8F
            8D047AF160F87CF0E5E7A35D7AFEAD1DB9782418C8B69E1FC5EF453E63CC5CBB
            C13495711F9C43083D0B36F04AB51F9FB19A116FF0964A7FD22CC60AA314C104
            7C31155D2A5FBF8E467C56AE9B6F1774E25DDC849997075F5E2EDA8568B788E2
            B358F9C40A28F3DAE8E2D0AFC009043D7BD43B95BE48E2961BC27B23E59F8341
            45B44A6AC880F08FC88B9B8747FFBA52D477A96AC089FDF97BEE229E9303537A
            BDE9F7CB1D18B8A53DEB95CF5BE786204F4609C0CDE46912F4CDCF1A00EC9987
            4A8076BF5587717DA484515091AF9979B8DC1887DDF22A96042A721D560DAAD1
            86F3AD464C575D717BBD217E9E8AE7FF0CF8DAE502B70473B25DF904CF12E036
            316F4609500A677DA0EBD3C3130595374E5475BFB51B870E10A4F1779F350B71
            BB31DA2EC95259346D45F257B3E5D5B992E21D67B5DBA5DDBEAE433F6FB0C74B
            CFA7E9A7A26DE5B78BF23BB25EF9C4AB70D6821CB009A00C988682A7E3002AB5
            40BEDE2581E00215C44093B8A8A01D4600B5227B950FA58685292A8472515F91
            E4F6BDCBB8CE1F19B69F37283E5FF7758650CF8F6265F398D1CB8BEB1B7A6C12
            C5E345780EAD270B4244AEA86CB5DA8BE3A5F726328B8FEE203A3C1B3B7CDB97
            E263CD7DF7DB1892CA6F83A3EB677BEF12560E679B38D79789278A9C08014E48
            900089C090C0CE563CCD7DCCC4C021AA7C82A3BFDC1E667B4F02182A20BE8047
            C29EA5FB0EE321590BD02F98D6D1CFE7E6DADFC762082B9FB8439EE5DBF278A1
            6E0254ADFD2B94B24D1FF7947F189AF60A1C0824C09D12031C97400C1017F4F3
            A2740679513FDFE3C718D2CAEFDE23D02F8FFEF745730FDA2C9A074273B7B0D9
            BAEFB437E8B7390B87F3038E8833263010A2F97CAC9FEFF1730C69E5135432B7
            87DB75D06EE1DC2E9E9DC352B815CE7E019E02D3B5C9A2F607240D9CD24FEEDE
            17E2F9F91EBF8321AF7CE2EA9249EABAA69D066A97F6220011B102C7C2191BF0
            D44191ECF173452DF7080146F55308EA8148F996D2DBCFC76298289FA37FECFD
            AF0F746208D3401E2F729AEE3B8E057BFCD99111C101E7DA45FD3CF3797FFFD5
            ED61A27CE27FA4D9CE97FF83D1DE1F7DFE6E54ADDD20C1A0FD16F34466049E39
            3092E1DAF5A8C769E1967EFD7F8F7C7E80F55EC348F93C348AC7003C0B4BCCFF
            691F1D231BEFD838AED8E4A1915AF60EEC0D9E7D3BBAAB03F7AA3D98E30B3BE7
            F8F64277F996695D020BFD8691F209CEF7E0CEA08DB5039D1B681F1CE934308F
            8D6579586F6590E6BCE9004A9F7F0AD56610E77FFC448C2B2AFA684169C4CF1B
            34F9BEC4E6E10E33E5B3F2F72F224F713DC6D6EA7907B5C54188B1024F40E744
            11517E60D7072879F6D7C8D9BED57E6BEED4A9B8F0D45371D8C4090047E968EE
            FD898F620F33E513CFC0214043E26707AFD9244E5731F9E6F9320FC23945DC45
            7001A985BCCD7F43F1FF3D09FFFE3DDD669D3D7F72D9189CBF7811161E391F3E
            E9F52AC1E5BDC350F9CD702ABBCFF0496BAB0F3E427EA0E3E31904B23278866B
            B7CC8199CE0E14BEFA075BCCF6D6837C3A49505C508033172EC4D9E2120AC5FC
            0F448261A87CE2A722178BB425757C3C51F594C4028E65E556B2BF4186D70F3A
            7763C027FE9EBD3EEFADF530C2A1B8011D15EE17D37FF2FCF95856BD0493468F
            8EBBD1C43055FE4E91D3455E374D85CD8BE7F5F94BFDB643C40A9006D78B5C36
            D0EF0F0A07F9FBC456FDF1B7E64C9F818B3F7D3A6697971F640986A9F299295F
            236D7183611856BCDE1F6D9F7E1173A0E4E3C8C81AC2F8FE3E51B0E74F1A3B16
            CB962EC5C223E6C0679A361186A9F2893FC1F1FDBBFA533E313001D66E1005D9
            5326591C7A104E76901ED8FE3E88C23F8BBFFF4BD4DFA7B6B6875BBD1417144A
            5C7032CE3EE9E32892B8A0CD52C351F90744CE9187FD9D7D52F8D24112808858
            012E92BD51E49B407AB6AF31DB5A50FCC21AF1F7AFF5EBEF1345342E582871C1
            17172FC6A3BE523C1CF40F27E5D3F4AF947C7F953C71D7D6017A3F9170BBC40C
            173F8A345508D9E3FDF575702A4FE95191B2277E1998386102EA728BD0917D2B
            7606030EE573ADE79E814C7F14C912803811CEDCC1F241DF2E7B7C86F667B3C4
            FC7B612B1917F12E9C722F37FF46DA094054F090496530B0E401539C37E07281
            680471D024724120573DDAD569A0764962CA2792EE7E114BC0D3C5AF13F9363C
            BC9A68988021CE0FC4D6DD28CAEC4CB4E7479192FD8D594CB21A4E9D7918B959
            4F813E8E0376978B3425AB7C224502B0C4FC1EBF657DE04170338D11E800676E
            2D13A92B6A29C2EB67CD48FA0229F7DCAAA7374099F6AE9F87C94B1E3C7DBCEE
            D61866785EE46BA2C16DCA32B075E911295D6450A69BAE20B2EA86B68724F0EC
            DAC221869741E52BBCCD8A4C32415F6F0CDA77DBC7CF3B1BB5F1E4F17BE0C12D
            E786185E115926D9F3261EBA9148B1A73FA42578AB5CBB898937737ADA219E41
            7882EE561AA2A0D9BF485271E9F996F4FC7983BE60DAA277677919E80FB8D7D0
            ED7002C391EC203DA0897D1AF6922E631B97B8A612F1F785B42AA862ADC4044E
            F18DD901C70D58991AA9130C0ECCF31F14592E16B64E596109F8E6A7EDE269EF
            A147D66C430B5A7961D609989F7213CAE4B7EE1A01C10ADF7F82073C02CD8D25
            C0EE13D3D3F3A3C89889768A4546AEF804EE45B34A646A265B6A08E23D912BE1
            CCC64ABAC2972832EAA32B39C51CF6EE235C6EF62338A388FACE88C90ED0DF3F
            2772A501633D874AB76448F944C683B40A7BD12967181B9C53F81D308ACDF001
            15590C4EE6E020DB6A69B1BDEC2999543EE15A941E33A9E49322D7823BB08F58
            83283891E3CF70DA85A95EC64C7E6FB89AA655D56C922CC180655853E4E58522
            17C0C35BD3B9049ED8729BC803E3F675D6ED1B9B93F15E1F0B2D79BA6D0D94F2
            8B6F60E9F80A385B96796621AA4BE0881A03BC9F887B644D3DD4D7C28D4C435B
            A1A6B2E64D3896CF608AB850E4BB70661B79727B9A3482DBB4BC287293C81F25
            4A6E63A5A476917BBD3E16DA2B7587D7BC81CDC61854A803AC1B900897C0598C
            32D42C42ABC84B70AAA42FE4E59B0DED6D2CEA0CBE9C3B186827401433253EB0
            4C037ECBE2B4F363E08C73733BD3322FDD6792605DB41ECE64CDFB455EAD5D52
            DD58B96E0D6A17A7AF9A371878AE619DF8C0BEB302F97A389CCD2A584C3A14D9
            E31E68E6DF11F9059C1AFEDB960AB7FB8D003657CFD17D6F3DE03902C4C2196A
            B657A5B086C02EC3D5CAA7881C02DDFB161C0C2A7D079C3D97B9ACFE0D69DE3D
            5CF6E4564A970A3C4D80282A6BD6474EED0B71DF17AE4DE02C24BA078E38B2C4
            CCF8213098CF48011CA461E1E63D383B70307FDF2C526799AA2BBF3D0F9BCEF0
            EC212CDDC80A02F406B7B4B394611A8662BC406B3013CE44146611AC3190100C
            2259781AECF17D4C55786C1883382A7C3B18BD03EBE1CCC567AF6F14F1744F8F
            87AC24406FD8AEC2B44C5806953E064E71697244B8F7311D2FCF46E23A06C616
            24062D46B412C9FA3B7B74071C53CE51B8F74498AB72A932975AB360B31B7650
            A75A58DF1ECC542CAFE0FF018E3FCC2A5E286F5F000000257445587464617465
            3A63726561746500323031392D30332D32395431313A31373A33382B30303A30
            30A0A8B0710000002574455874646174653A6D6F6469667900323031392D3033
            2D32395431313A31373A33382B30303A3030D1F508CD0000004674455874736F
            66747761726500496D6167654D616769636B20362E372E382D3920323031392D
            30322D30312051313620687474703A2F2F7777772E696D6167656D616769636B
            2E6F7267417BE2C800000018744558745468756D623A3A446F63756D656E743A
            3A50616765730031A7FFBB2F00000018744558745468756D623A3A496D616765
            3A3A68656967687400353132C0D0505100000017744558745468756D623A3A49
            6D6167653A3A5769647468003531321C7C03DC00000019744558745468756D62
            3A3A4D696D657479706500696D6167652F706E673FB2564E0000001774455874
            5468756D623A3A4D54696D650031353533383538323538D3A5DAB40000001374
            4558745468756D623A3A53697A650032302E354B4242945B20160000003F7445
            58745468756D623A3A5552490066696C653A2F2F2E2F75706C6F6164732F3536
            2F6D4C6C794C70342F313836302F666F6F64646F6D655F3131383033342E706E
            6716E41CA90000000049454E44AE426082}
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftBottom]
        Height = 22.677180000000000000
        Top = 151.181200000000000000
        Width = 718.110700000000000000
        object Memo3: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Width = 56.692950000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'segoe UI'
          Font.Style = []
          Frame.Typ = []
          HAlign = haBlock
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 147.401574800000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haBlock
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 638.740157480000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haBlock
          Memo.UTF8W = (
            'Pre'#231'o')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 234.330860000000000000
        Width = 718.110700000000000000
        DataSet = RelProduto
        DataSetName = 'RelProduto'
        RowCount = 0
        object RelProdutocodigo: TfrxMemoView
          IndexTag = 1
          Align = baLeft
          AllowVectorExport = True
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897637795275600000
          DataField = 'codigo'
          DataSet = RelProduto
          DataSetName = 'RelProduto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          Frame.Typ = []
          HAlign = haBlock
          Memo.UTF8W = (
            '[RelProduto."codigo"]')
          ParentFont = False
        end
        object RelProdutodescricao: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 147.401574800000000000
          Width = 222.992270000000000000
          Height = 18.897650000000000000
          DataSet = RelProduto
          DataSetName = 'RelProduto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          Frame.Typ = []
          HAlign = haBlock
          Memo.UTF8W = (
            '[RelProduto."descricao"]')
          ParentFont = False
        end
        object RelProdutopreco: TfrxMemoView
          IndexTag = 1
          Align = baRight
          AllowVectorExport = True
          Left = 638.740570000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = RelProduto
          DataSetName = 'RelProduto'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          Frame.Typ = []
          HAlign = haBlock
          Memo.UTF8W = (
            '[RelProduto."preco"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftBottom]
        Height = 22.677180000000000000
        Top = 317.480520000000000000
        Width = 718.110700000000000000
      end
    end
  end
  object RelProduto: TfrxDBDataset
    UserName = 'RelProduto'
    CloseDataSource = False
    DataSet = FDQ_Relatorio
    BCDToCurrency = False
    Left = 424
    Top = 40
  end
  object frx_Empresa_produto: TfrxDBDataset
    UserName = 'frx_Empresa'
    CloseDataSource = False
    DataSet = FDQ_Empresa
    BCDToCurrency = False
    Left = 440
  end
  object FDQ_Empresa: TFDQuery
    Connection = F_Principal.FDConnection1
    SQL.Strings = (
      'select * from tb_empresa')
    Left = 376
    Top = 65533
    object FDQ_Empresacodigo: TFDAutoIncField
      Alignment = taCenter
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 6
      FieldName = 'codigo'
      Origin = 'codigo'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQ_Empresanome: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome'
      DisplayWidth = 30
      FieldName = 'nome'
      Origin = 'nome'
      Size = 70
    end
    object FDQ_Empresatelefone: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Telefone'
      DisplayWidth = 27
      FieldName = 'telefone'
      Origin = 'telefone'
      Size = 12
    end
    object FDQ_Empresaendereco: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Endere'#231'o'
      DisplayWidth = 30
      FieldName = 'endereco'
      Origin = 'endereco'
      Size = 70
    end
    object FDQ_Empresacnpj: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CNPJ'
      DisplayWidth = 23
      FieldName = 'cnpj'
      Origin = 'cnpj'
      Size = 18
    end
    object FDQ_Empresaie: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'IE'
      DisplayWidth = 22
      FieldName = 'ie'
      Origin = 'ie'
      Size = 14
    end
  end
  object DS_Empresa: TDataSource
    DataSet = FDQ_Empresa
    Left = 408
    Top = 65533
  end
end