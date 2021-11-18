object F_RelCliente: TF_RelCliente
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rio de Clientes'
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
        'Nome')
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
        ExplicitLeft = -48
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
      'select * from tb_cliente')
    Left = 392
    Top = 7
    object FDQ_Relatoriocodigo: TFDAutoIncField
      FieldName = 'codigo'
      Origin = 'codigo'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
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
    object FDQ_Relatoriocidade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cidade'
      Origin = 'cidade'
      Size = 90
    end
    object FDQ_Relatorioemail: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'email'
      Origin = 'email'
      Size = 256
    end
    object FDQ_Relatoriotelefone: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'telefone'
      Origin = 'telefone'
      EditMask = '!\(99\)99999-9999;0;_'
      Size = 12
    end
  end
  object DataSource1: TDataSource
    DataSet = FDQ_Relatorio
    Left = 430
    Top = 8
  end
  object RelCliente: TfrxDBDataset
    UserName = 'RelCliente'
    CloseDataSource = False
    FieldAliases.Strings = (
      'codigo=codigo'
      'nome=nome'
      'endereco=endereco'
      'cidade=cidade'
      'email=email'
      'telefone=telefone')
    DataSet = FDQ_Relatorio
    BCDToCurrency = False
    Left = 475
    Top = 5
  end
  object frx_RelCliente: TfrxReport
    Version = '2021.2.7'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44417.667234629600000000
    ReportOptions.LastChange = 44449.766374467600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 552
    Top = 40
    Datasets = <
      item
        DataSet = RelCliente
        DataSetName = 'RelCliente'
      end
      item
        DataSet = FRX_Empresa
        DataSetName = 'FRX_Empresa'
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
        Height = 108.472440940000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = 194.645795000000000000
          Top = 63.496062992126000000
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
            'Relat'#243'rio do Cliente')
          ParentFont = False
        end
        object Date: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = -13.118120000000000000
          Top = -1.889763779527560000
          Width = 79.370078740157500000
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
          Left = 624.755905510000000000
          Top = -1.889763779527560000
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
          Top = 39.307086610000000000
          Width = 328.819110000000000000
          Height = 26.456710000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Sistema de Controle de Restaurante')
          ParentFont = False
        end
        object FRX_Empresanome: TfrxMemoView
          IndexTag = 1
          Align = baCenter
          AllowVectorExport = True
          Left = 194.645901180000000000
          Top = 8.000000000000000000
          Width = 328.818897640000000000
          Height = 26.456710000000000000
          DataField = 'nome'
          DataSet = FRX_Empresa
          DataSetName = 'FRX_Empresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'segoe UI'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[FRX_Empresa."nome"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Align = baCenter
          AllowVectorExport = True
          Left = 334.488420865000000000
          Top = -34.015748031496100000
          Width = 49.133858270000000000
          Height = 49.133858270000000000
          Frame.Typ = []
          Picture.Data = {
            0954506E67496D61676589504E470D0A1A0A0000000D49484452000000600000
            00600806000000E29877380000000467414D410000B18F0BFC61050000000173
            52474200AECE1CE900000006624B474400FF00FF00FFA0BDA793000000097048
            5973000044B8000044B801F737D77A000011BC4944415478DAED5D0B745C659D
            FFDD7B6792CC2469D2BCA049499F09B26D2D0F5F80560A95B678F61CB5BC765D
            38C801747B584FC5B296B3085A9187BB4744A0120A56DC65F588F2D2F252ACB8
            8BA25B45FA10DAA4A5A5694B9B26695E3399CCCCBDFBFFDD3B379DBC6726F79B
            99587E3DFF4C6792B98FDFEFBBFFEFFFFDBF97863C42C373DBD0DFD785A292F2
            A0BCAD159B2BB640EC0CB1596275621562C56201315FE2AB31B1B0589F58BBD8
            21B1FD626F266C8FD8C1E6406DA8317C10BB57BE3FD7B73A082D97276FDCBC03
            BE7E03D160AC44DE2E14FB281CD2E7F0D762D570C8D6333C852916126B137B4B
            6C9FD85EB1FF11DB6919E8E55FB4AC5894330E722240C3F3DB7962BFE5907E89
            D832B133C5CAB374099D62DBC47E25F60BB19D62D1E695D917226B02CCDBFC26
            0C2306CBB249FEB8D86570883F25EB773D14EF8AFD5AEC09B12D625DFC305B62
            2817A0E1B9EDCE7934CC93D7CFC029F11F162BCACA1DA68E7EB1DF89BD24F624
            34AD05525C9A15BB276502343CBF038E0BD658695E2BF60538FE3DA7F54E0A10
            CF68D7130F8A3D26D6C1C7B6F9123515B71232123EBE50EE64B9BCBD49EC3C31
            BF1ABE94212AF6AAD8BD622F8A4554B8254F05A0BBD12C4BB3746DB1BCFD92D8
            A7C54AD573A5143DA04B02EED335FD2F963C0EBB572CF4ECE09E09C0522F60FC
            7E95D83AB1D959A5493DD8AEB8078E5B0A79F53478224082FCE9625F17BB41AC
            302714A947044EDD708758A717224C4A009B78C637961D56B2D45F8413ADD3BF
            55B0D5CDB0F52EA99B5F1102ADE64B3217226301487E5CA21C033AE379565475
            B96626CB382876A385F8D39A94B9E69599D50B190940F225C2D13427AEFF8ED8
            CC5CB39123BC23F625CDC25396F8814C5C52DA0224FC3D1361ABC5BE02275F73
            32E3289CCAF97B62E17445484B00922F4D2B4D07BE2C6FBF81FC6BCDE60A6C45
            7FD908691BE2412BAD3446CA02D8E4CB73A66BD62A386A9FEC257F388E88ADF6
            99D693515D434B8A22A4248043BE2EE49BAC70BF8D93D7E74F8456B19B7C169E
            880BB3BB5310216501044BC5FE13275FB4932E28C29562AFA6E28A261420413E
            136AFF0D27B7931760C6CCB21237A1E55D86EF59B1CF89754C24C2B8D79D945E
            B81B4ED463E4FACE08BFF8D80ABF4F5CA2F3DE14213AA231444D2BD797E6222E
            B641D85D272565DCB4C59802340AF931F9AD61D96964C6FA79915E20C7579E36
            1D9F9F5B6D977C824F42D3DE36FCF840E7A0287900A62DD6C8A53DC44B1A4B84
            312F3751FACF8293099C9DEBBB714101BEBEA0169FADAF18F2F9E3EF74E0F69D
            87F24900621F9C8CF05FD21220413E4BFCC36257E7FA2E5C7F6FC93F0AB05E04
            B86A56E590BFF92F11E0AB3B0F8A8FD4069F8C3CD162A3D8BF608CFE8411D7D8
            F0DC1B4E530BF8149CA8A72417576D26083784CD129F8E8A021F4E29F4A146EC
            CAD32AF0A18A6244E271F485FAA54E005EEB08E147ADC7D11933D12ED61D13E7
            6B3A82E9B9ADA4D99FC014FD3396DC4BCBB0BE84910238A59FC5EB67703ACFB3
            069674538A3A2BD9DA223F169505F0A1E9C55820AFA7CAFB32BF81429D8D41E7
            B26322C0D1B66388C5E2F69D90EC887C9FE4B7454DEC0AC7B0AD2F86DDF27A4C
            DEC77227C62B626CC0B60F7F0A865C0BFB71E3BE288C98EF66797B17B218F590
            BCCA42031FAF2AC5C7AA4A7066791033027EF8B4B1E98A8B00474400BE26DF90
            6D89AF454CE0F0401C7F0DC5F07FBD516CED89A22B6E653CD02843F002D7418B
            FD072CFF90CCE93001ECD2DF20F69CD8FC6C5C1989A70B597ECA347C6E76955D
            DAC7237DC85D8D22C06820D93C24C5785384F8715B187F1421E2C8EAD3D02CF6
            49BE263F0583E79FF58B375060D8E58219CEBBB3714524BF564AF97573AAB0AA
            AE1CC5BEF41EB8540548862177DC25BEE8F9CE089E68EB479BD417597C1A18D2
            371928C05B2B4FB73F18142051FA3968EA6964C1F793FC6535A5B8717E8D5DEA
            3329899908907CD33BE569D874248CADE29AB22402C71C5D2ED6E53E05C30560
            E4F323284E3393FC0B6B4A249EAFC38CA2CC47AB642A800B3E0DADE297EE3DD8
            67D70F59108169EB7F107B7A880009F2C9C40FC4FE51E51590FC2555C5F8E6C2
            9976253B194C56008251D12111E15BADBD785D22A62C88F0B8B07E8D847C318A
            902CC0D9702A5F65633549FE472A82B873511DEA8393CF6C7821004111F6F7C7
            71D7813EBB9256DC9AE658540ECF7CDD16609E90CFAA4FB8B9154E2F971230C6
            2F9506D57D8B4FC3C7AABD19ABE5950004DDD196E303B8A7B50F6129298AA323
            72FD4D3B8B9B28FD6CED7298B6B2CA97A5FF9A59155877C68C94C3CC89E0A500
            041B6AF71FEAC3B31D11D5AEE837627F2FD6EB0A70AED8663883AB3C07C95F54
            568407CEAA475DA0C0B3E37A2D00496F1D3071FBFE1EB4884B522802E727D00D
            BDE60AB056ECDF559D8DF99C3B16D462D54C6FF5F55A00E75A2544698FE0BB12
            1999AA0871709DD8A3AE001BC4FE59C55958FA179707B0F19C597642CD4BA810
            80CE91C9BC756FF7A059ED53B05EEC760AC01E2FE6FC95743752809B1A6BB07A
            5E8DE7C756210041111E3C1CC24FA4A56CA8AB8D5F9033ADA2000DCE1B7BF284
            A760E41334747CEFEC7A9C57E97D565B950024FD77DD517C6D7F2F062C65DD9C
            9C04B29C02B0E4737E94E7E3F8E372EDEF97CAF7FB1F988DE91EBB1FFBF80A9F
            800E7143378B1BDAA3CE0DB19FE0320AC0192CAC803D3F4F5C4ACF75B3AB708B
            849E2AA04A0017F74948FAD4B1882A37C43A7E2D0560B7E3F52ACEC0E8E7DEC5
            33B1E2D4322577A0520092FE52E700EE3ED0AB321A7A980270FED3C55E1F999E
            B3B2C0C00F3F38078DA56A727B2A05603A62572866BBA1EEB8B296F14B1480D3
            1917784E0E67614F2BC2631F9C8D7205FEDF3E874201DC7A60AD08B0575D3DB0
            8302705D05CF9D34FDFFB29A6976EBD7AF28BBA5BA0E600474EBBE5EBBF74C51
            3D7098027443410414938BBF525ABE772E52378E57B50074A3771FE8C38B9DCA
            2AE26E0A30000FE7F05A098B4B0BECF373ABB0EE7D6A222042B500E4FCFE43D2
            203B16B6030AB7C3DF430C5000D3CBE3720C4F8934BE38BCE4DAD995B8764EB5
            FD7FEFD9D16CE2DBDB3BECE1291E2558879E42FE3D7E348C67DAFBEDA130BD71
            13BD314F6322CB3301EC7CBF107FEBFC0A2C2A2DB4492FF51928F5AB1BD962C9
            394CD384AAC62A45ED11D2431CC6226FB6F74470474B87FD99477A5B9EB920AA
            585BE8C3C685A7A0AEC8480C25746C2A23799CD1418986AEDB710487239E755D
            DA2E88CBB34C9BEC9148748DC4FD4D22C0DC805F04B126FC7BD39E62ECC0B06F
            549D5C3CD770E7A1DB96DA3975F9FEDE70143788006D0371AF9E806E4FC35056
            54175506303F5830EE6DD9493AA1E3A35618756614EFEA7EFC5E0BA0536ED3CB
            78DB11D999393E03319C8E28AA2DA7F4766B0676A000EFA438AF9C84B78406F0
            727BD80EB13DC2210AC00E01CF569F98688E047F5D2EB47CC5EAC472AB0F8596
            89A808B7552BC246AD0CAFA1C81311487CB1666189887CBED8595604752282DF
            721C2307CAFE59CEF945AD1A5D76F94E0D1E3769B62B4B458C474C2DE268328F
            62BE35003780945A435A257EACD72BF18A8890E97DBAF5CE3C217BB5751C179A
            2104E4ACC92E88C78ECACF47F4323C2CA2C7B275F323F1A2D264DC7824AD4408
            B79BED28B14ED4162CF90744849BF46A710FFEB4470693E082C4B16F308F638E
            151D110890FC01F9B9C910F2A5EA8B40CBE5D0753B19C7757D988ECEEAFC2F9E
            EC36AB03979A3D880FFBFC653D885BB5CAB45C038F71AAFCBCDEEAC6A7E49841
            4EE618F63736F93E1F9A50861F58C5B9269F97BC566987CC44673F5BCAE203E2
            8ACAADF8884AFB417D3A9AB4D4823312FD77E254D64ABDF211333C6AF8ABEB3A
            068A02D86895E291682106AC9CCFA06187CCA54ABB2427021B1FDFB28EE162B3
            6FC85340577454A294357A0D5E17A732D6A3E946394BD08F756607E65A518C48
            4A4865ABFBFD880682783816C423117F3E904F0C7649B253FEA7A0EBCC3248D6
            A7D187F5F1F611F13849DF22AEE8167145DDA3B822125F2ADFF90C7A71B5D98D
            5A092F8793AF158878454518100136F4176253BF908FBC209FE030D0CB940F4B
            190F24B1515CC7A3E611548CE28618B97CCDA814FF5822D1BAF35BD7BDF07BAB
            AD2E5C24518E6F98BFD70C035A2000A3B010114D4753D88F47F28B7C62BD9518
            96C2374A07668D05BBD74CA8A3000D12928ED652DD2B51D103521F6C45A11DBD
            D448393F575CCEE552D12687B136E86EA4C4937CFA7C4ED46D0A17E423F9C490
            81595C48958F44C5A40E99018A44860D52117FD8EAC76849658A1016EA189EF6
            CB2B239DAA446B765030122FA55DA389BB21D1247F83909F676EC745071C97FF
            C7E4C1B93F17BB20DB57C2A4C583561BCE93E865BCACBE3DCF0B0EE943E27A09
            2BF560D0F6F748FC4D9E977CE2377007E7CE77165925FE0DCE6A805945614280
            7327106004C4C5E8743552EAF97F628A904F90EB3BDD6B76276870F572BA2175
            5D58C3C0925C223F1F923AE06C2B929A0024DE7537BE1389B429E0765C1C86E3
            7EDE189C21D39898A224846C92D7CF66EB4AE84E6608ED9B44807A89E127EA6B
            22E92CF5C9C4DB9F63CA947CE271B16BC44E4C5122B23949CF054BFC62A1AB49
            0498668DDD83E08695B6BB19D6F738C5C8E7243D2EE6F4CC58B32439848D23A5
            2FCCC6D5B05BE3726948DD163F362A6936F1125626FBF921BFC794713B2E9871
            B842AC7B8400B39FDA057F116F01FF0A671946E5D0A4D47F23D686554604D1E4
            4E0E37ACA4BB31464F444CB192EF828DDD877ABA0378F78AF983F73188AC2D55
            4037629A086E7D054B5B77E20BE79F8B3955557647FEF0B072D4AF634A923FFE
            5205842D8065AF89BB064ECBD8FB31859A0EE3F83114FFE157086EFF03ACFE30
            EAABAB71F59225B8E0AC33E193926F8D33C6640ABA1D827D3E375B06BEA3C9FF
            92D79A1E6BB91AB68899A05BEAE965881FF71F7C1BD37EF95314B4EE4954A89A
            3DB4A4B4B818572C5D8A55E79F87A094FED1C6124DD1924F70B16F2EF9D931EE
            723544C3E6EDEE4C01B6D418324DBE9F2051A20BF6EF46D94B4FC077A47544A5
            CA313E86F8FB65E79C83EB57AC4075D934C4CD1381E914269F797F86F63FD774
            0BBB970FDD0A65BC25CBE8849BE0C4AC9983156A3884E09F7F8BE09F7E0BA3A7
            D35D916B5450880F9C7E3AAE597E3116D6D73BF502A6A4DB71F1009CA59E0752
            5AB2CC85278BF691FCBE1E4CFBF553086C7BCDAD5F26FC1A5DD2A99595B876E5
            0A2C5BBC1831DDC043F999529E086FC3695B6D4B7FD5C417B63B83FC758D6BDC
            707F80F41A6709F24B5E7D01452DDBD31E22C7925F1C28C2559FB818C71A17E3
            D1F094239F8DAE3586A535C5346BCCB5A45359B8954BD5730D0946466975DC6B
            B128F450CF44A719135CB4CFEFF323162C913022A71DE8E9828D7CAEB5FA554C
            B0A47D3A4B17B3425E91F6A54C72D8321F1C4DDD5451557806CED2C513EE3393
            CEE2DD17C059C6F2BD95D3C787B78B7713F67684ECA035ECD0F47EB1FA5CDF65
            9E825B9A7C119AF9ACB426ADE614B6CD4D6B03073B7CB44CEE1BC34EFC5C6FC2
            996FB03770300CEBC958DCE30D1C5C246D5BC50A993D3AEF6D61E2C0DEC2C42C
            0F6ED0BB42486703D04C37F121F1AC646E0347049EDC60C9E7CA27ECCC52BB89
            8F0B7B1B2BAE916DD98D8CEFE2E4AD98E9F3D708174F0B17D9D9C6CA85F324F0
            EBD6A57062DE936D6B136EE4B65AD7F5673959B025C3ED6E27B9952127D9DBC9
            7D2E79C6157799EFCE8B5D3614828D2C2EEF768F94FADF67BA819B8BF736F34C
            0FF9B599673292F69BF927B15B9047BB6E78847D70BA6A7F887CDBCED6456278
            8BC64512E5F546382DC2BF850D9D497A93B4457788C7B1528DF15381B22DCDE1
            B8A1A9BEA5F9FFC2C90473D1EDFCDFD23C194E056D4FC267228F6D06A6B5E7A9
            3CA74760E68F9327D891F298BCE3ECD9B41A57E9403919495BDF927C8E37E256
            1E4B907FAD68B666B9D50897EF7F592EB9853D482A4A7D32B2561ADFF7FC2E89
            DF1844681CFCC52592D949BD0CB96F4973AC263BCD3908618B589769EAD8F349
            CFD7B01A1539710749CBE5F32EB984EF27C0518A8A964E1E051C9FCF8BF825EC
            35B3B5BF4A698FAA2EEDA321A7FEB871F30EF8FA7D8806A39C9FB030614C6B70
            C248239C2D738B91F98A8EAC8442626D626F8AFD094EFA80E4EF8C1B66AF2EA5
            BD45917F4F05795521CE1741F66D998939171D607BA216CECC4D3E2567C0E983
            60BA835B6C51147695BA03C718B1D087F789B5C34913EC177B0B0EF17BC45A3B
            FB0BC395817EEC5A9159DA4005FE1F49F017596C88A59F000000257445587464
            6174653A63726561746500323031392D30332D32395431313A31373A33382B30
            303A3030A0A8B0710000002574455874646174653A6D6F646966790032303139
            2D30332D32395431313A31373A33382B30303A3030D1F508CD00000046744558
            74736F66747761726500496D6167654D616769636B20362E372E382D39203230
            31392D30322D30312051313620687474703A2F2F7777772E696D6167656D6167
            69636B2E6F7267417BE2C800000018744558745468756D623A3A446F63756D65
            6E743A3A50616765730031A7FFBB2F00000018744558745468756D623A3A496D
            6167653A3A68656967687400353132C0D0505100000017744558745468756D62
            3A3A496D6167653A3A5769647468003531321C7C03DC00000019744558745468
            756D623A3A4D696D657479706500696D6167652F706E673FB2564E0000001774
            4558745468756D623A3A4D54696D650031353533383538323538D3A5DAB40000
            0013744558745468756D623A3A53697A650032302E354B4242945B2016000000
            3F744558745468756D623A3A5552490066696C653A2F2F2E2F75706C6F616473
            2F35362F6D4C6C794C70342F313836302F666F6F64646F6D655F313138303334
            2E706E6716E41CA90000000049454E44AE426082}
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
        Height = 36.456695350000000000
        Top = 151.181200000000000000
        Width = 718.110700000000000000
        object Memo3: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Top = 11.338582680000000000
          Width = 75.590600000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          Frame.Typ = []
          HAlign = haBlock
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 75.062984800000000000
          Top = 12.338582680000000000
          Width = 94.488188980000000000
          Height = 22.677165350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          Frame.Typ = []
          HAlign = haBlock
          Memo.UTF8W = (
            'Nome')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 181.267628660000000000
          Top = 10.559052680000000000
          Width = 94.488250000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          Frame.Typ = []
          HAlign = haBlock
          Memo.UTF8W = (
            'Endere'#231'o')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 633.566938900000000000
          Top = 13.779530000000000000
          Width = 94.488250000000000000
          Height = 22.677165350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          Frame.Typ = []
          HAlign = haBlock
          Memo.UTF8W = (
            'Telefone')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 361.543600000000000000
          Top = 11.338582680000000000
          Width = 94.488250000000000000
          Height = 22.677165350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          Frame.Typ = []
          HAlign = haBlock
          Memo.UTF8W = (
            'Cidade')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 475.016080000000000000
          Top = 11.338590000000000000
          Width = 94.488250000000000000
          Height = 22.677165350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          Frame.Typ = []
          HAlign = haBlock
          Memo.UTF8W = (
            'Email')
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
        Height = 26.456695350000000000
        Top = 249.448980000000000000
        Width = 718.110700000000000000
        DataSet = RelCliente
        DataSetName = 'RelCliente'
        RowCount = 0
        object RelClientenome: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 75.385804800000000000
          Top = 0.779530000000000000
          Width = 113.385900000000000000
          Height = 22.677165350000000000
          DataField = 'nome'
          DataSet = RelCliente
          DataSetName = 'RelCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          Frame.Typ = []
          HAlign = haBlock
          Memo.UTF8W = (
            '[RelCliente."nome"]')
          ParentFont = False
        end
        object RelClienteendereco: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 180.803027560000000000
          Width = 253.228448980000000000
          Height = 26.456695350000000000
          DataField = 'endereco'
          DataSet = RelCliente
          DataSetName = 'RelCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          Frame.Typ = []
          HAlign = haBlock
          Memo.UTF8W = (
            '[RelCliente."endereco"]')
          ParentFont = False
        end
        object RelClientetelefone: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 613.708658980000000000
          Top = 0.779530000000000000
          Width = 143.622140000000000000
          Height = 22.677165350000000000
          DataField = 'telefone'
          DataSet = RelCliente
          DataSetName = 'RelCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          Frame.Typ = []
          HAlign = haBlock
          Memo.UTF8W = (
            '[RelCliente."telefone"]')
          ParentFont = False
        end
        object RelClientecodigo: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 7.976368190000000000
          Top = 0.779530000000000000
          Width = 75.590600000000000000
          Height = 22.677165350000000000
          DataField = 'codigo'
          DataSet = RelCliente
          DataSetName = 'RelCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          Frame.Typ = []
          HAlign = haBlock
          Memo.UTF8W = (
            '[RelCliente."codigo"]')
          ParentFont = False
        end
        object RelClientecidade: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 364.677326460000000000
          Width = 253.228346460000000000
          Height = 26.456692910000000000
          DataField = 'cidade'
          DataSet = RelCliente
          DataSetName = 'RelCliente'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[RelCliente."cidade"]')
          ParentFont = False
        end
        object RelClienteemail: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 435.559370000000000000
          Width = 222.992106460000000000
          Height = 26.456692910000000000
          DataField = 'email'
          DataSet = RelCliente
          DataSetName = 'RelCliente'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[RelCliente."email"]')
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
        Top = 336.378170000000000000
        Width = 718.110700000000000000
      end
    end
  end
  object DS_Empresa: TDataSource
    DataSet = FDQ_Empresa
    Left = 432
    Top = 53
  end
  object FDQ_Empresa: TFDQuery
    Connection = F_Principal.FDConnection1
    SQL.Strings = (
      'select * from tb_empresa')
    Left = 392
    Top = 53
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
  object FRX_Empresa: TfrxDBDataset
    UserName = 'FRX_Empresa'
    CloseDataSource = False
    DataSet = FDQ_Empresa
    BCDToCurrency = False
    Left = 480
    Top = 56
  end
end
