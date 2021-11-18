unit U_RelatorioClient;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport;

type
  TForm_relatorio_client = class(TForm)
    RLReport1: TRLReport;
    rlb_cabecalho: TRLBand;
    rlb_titulo: TRLBand;
    rlb_colunas: TRLBand;
    rlb_detail: TRLBand;
    rlb_rodape: TRLBand;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    label_nome: TRLLabel;
    label_endereco: TRLLabel;
    label_telefone: TRLLabel;
    lb_codigo: TRLDBText;
    lb_nome: TRLDBText;
    lb_endereco: TRLDBText;
    RLDBText4: TRLDBText;
    label_codigo: TRLLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_relatorio_client: TForm_relatorio_client;

implementation

{$R *.dfm}

uses U_RelCliente;

end.
