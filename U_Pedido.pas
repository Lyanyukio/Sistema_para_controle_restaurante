{$A8,B-,C+,D+,E-,F-,G+,H+,I+,J-,K-,L+,M-,N-,O+,P+,Q-,R-,S-,T-,U-,V+,W-,X+,Y+,Z1}
{$MINSTACKSIZE $00004000}
{$MAXSTACKSIZE $00100000}
{$IMAGEBASE $00400000}
{$APPTYPE GUI}
{$WARN SYMBOL_DEPRECATED ON}
{$WARN SYMBOL_LIBRARY ON}
{$WARN SYMBOL_PLATFORM ON}
{$WARN SYMBOL_EXPERIMENTAL ON}
{$WARN UNIT_LIBRARY ON}
{$WARN UNIT_PLATFORM ON}
{$WARN UNIT_DEPRECATED ON}
{$WARN UNIT_EXPERIMENTAL ON}
{$WARN HRESULT_COMPAT ON}
{$WARN HIDING_MEMBER ON}
{$WARN HIDDEN_VIRTUAL ON}
{$WARN GARBAGE ON}
{$WARN BOUNDS_ERROR ON}
{$WARN ZERO_NIL_COMPAT ON}
{$WARN STRING_CONST_TRUNCED ON}
{$WARN FOR_LOOP_VAR_VARPAR ON}
{$WARN TYPED_CONST_VARPAR ON}
{$WARN ASG_TO_TYPED_CONST ON}
{$WARN CASE_LABEL_RANGE ON}
{$WARN FOR_VARIABLE ON}
{$WARN CONSTRUCTING_ABSTRACT ON}
{$WARN COMPARISON_FALSE ON}
{$WARN COMPARISON_TRUE ON}
{$WARN COMPARING_SIGNED_UNSIGNED ON}
{$WARN COMBINING_SIGNED_UNSIGNED ON}
{$WARN UNSUPPORTED_CONSTRUCT ON}
{$WARN FILE_OPEN ON}
{$WARN FILE_OPEN_UNITSRC ON}
{$WARN BAD_GLOBAL_SYMBOL ON}
{$WARN DUPLICATE_CTOR_DTOR ON}
{$WARN INVALID_DIRECTIVE ON}
{$WARN PACKAGE_NO_LINK ON}
{$WARN PACKAGED_THREADVAR ON}
{$WARN IMPLICIT_IMPORT ON}
{$WARN HPPEMIT_IGNORED ON}
{$WARN NO_RETVAL ON}
{$WARN USE_BEFORE_DEF ON}
{$WARN FOR_LOOP_VAR_UNDEF ON}
{$WARN UNIT_NAME_MISMATCH ON}
{$WARN NO_CFG_FILE_FOUND ON}
{$WARN IMPLICIT_VARIANTS ON}
{$WARN UNICODE_TO_LOCALE ON}
{$WARN LOCALE_TO_UNICODE ON}
{$WARN IMAGEBASE_MULTIPLE ON}
{$WARN SUSPICIOUS_TYPECAST ON}
{$WARN PRIVATE_PROPACCESSOR ON}
{$WARN UNSAFE_TYPE OFF}
{$WARN UNSAFE_CODE OFF}
{$WARN UNSAFE_CAST OFF}
{$WARN OPTION_TRUNCATED ON}
{$WARN WIDECHAR_REDUCED ON}
{$WARN DUPLICATES_IGNORED ON}
{$WARN UNIT_INIT_SEQ ON}
{$WARN LOCAL_PINVOKE ON}
{$WARN MESSAGE_DIRECTIVE ON}
{$WARN TYPEINFO_IMPLICITLY_ADDED ON}
{$WARN RLINK_WARNING ON}
{$WARN IMPLICIT_STRING_CAST ON}
{$WARN IMPLICIT_STRING_CAST_LOSS ON}
{$WARN EXPLICIT_STRING_CAST OFF}
{$WARN EXPLICIT_STRING_CAST_LOSS OFF}
{$WARN CVT_WCHAR_TO_ACHAR ON}
{$WARN CVT_NARROWING_STRING_LOST ON}
{$WARN CVT_ACHAR_TO_WCHAR ON}
{$WARN CVT_WIDENING_STRING_LOST ON}
{$WARN NON_PORTABLE_TYPECAST ON}
{$WARN XML_WHITESPACE_NOT_ALLOWED ON}
{$WARN XML_UNKNOWN_ENTITY ON}
{$WARN XML_INVALID_NAME_START ON}
{$WARN XML_INVALID_NAME ON}
{$WARN XML_EXPECTED_CHARACTER ON}
{$WARN XML_CREF_NO_RESOLVE ON}
{$WARN XML_NO_PARM ON}
{$WARN XML_NO_MATCHING_PARM ON}
{$WARN IMMUTABLE_STRINGS OFF}
unit U_Pedido;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Mask,
  Vcl.DBCtrls, frxClass, frxExportBaseDialog, frxExportPDF, frxDBSet;

type
  TF_Pedido = class(TForm)
    FDQ_Pedido_: TFDQuery;
    DS_Pedido: TDataSource;
    FDQ_Pesquisa: TFDQuery;
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    P_Mesa1: TPanel;
    SB_Mesa1: TSpeedButton;
    P_Mesa2: TPanel;
    SB_Mesa2: TSpeedButton;
    P_Mesa3: TPanel;
    SB_Mesa3: TSpeedButton;
    P_Mesa4: TPanel;
    SB_Mesa4: TSpeedButton;
    P_Mesa5: TPanel;
    SB_Mesa5: TSpeedButton;
    P_Mesa6: TPanel;
    SB_Mesa6: TSpeedButton;
    P_Mesa7: TPanel;
    SB_Mesa7: TSpeedButton;
    P_Mesa8: TPanel;
    SB_Mesa8: TSpeedButton;
    P_Mesa9: TPanel;
    SB_Mesa9: TSpeedButton;
    TabSheet1: TTabSheet;
    P_Mesas: TPanel;
    Panel1: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Panel2: TPanel;
    DBG_Pesquisa: TDBGrid;
    P_Controle: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    E_Descricao: TEdit;
    E_Quantidade: TEdit;
    E_Valor: TEdit;
    Panel3: TPanel;
    FDQ_ItemPedido_: TFDQuery;
    DS_ItemPedido: TDataSource;
    FDQ_Pedido_codigo: TFDAutoIncField;
    FDQ_Pedido_cod_cliente: TIntegerField;
    FDQ_Pedido_tipo_pag: TStringField;
    FDQ_Pedido_mesa: TShortintField;
    FDQ_Pedido_pago: TStringField;
    FDQ_ItemPedido_cod_pedido: TIntegerField;
    FDQ_ItemPedido_cod_produto: TIntegerField;
    FDQ_ItemPedido_quantidade: TIntegerField;
    FDQ_ItemPedido_valor: TFloatField;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label7: TLabel;
    P_totalvalor: TPanel;
    FDQ_Produto: TFDQuery;
    FDQ_ItemPedido_Descricao: TStringField;
    FDQ_Cliente: TFDQuery;
    FDQ_Pedido_nome_cliente: TStringField;
    DBEdit3: TDBEdit;
    FDQ_ItemPedido_Total: TFloatField;
    P_Pagamento: TPanel;
    Label1: TLabel;
    E_CodProd: TEdit;
    Label8: TLabel;
    E_ValorRecebido: TEdit;
    E_Troco: TEdit;
    Label9: TLabel;
    Panel4: TPanel;
    Panel6: TPanel;
    SB_Pagamento: TSpeedButton;
    SB_InsereItem: TSpeedButton;
    SB_FinalizaCompra: TSpeedButton;
    Panel5: TPanel;
    SB_Fechar: TSpeedButton;
    frxPDFExport1: TfrxPDFExport;
    frx_cupom: TfrxReport;
    cupom: TfrxDBDataset;
    frxDBDataset1: TfrxDBDataset;
    DBEdit4: TDBEdit;
    Label10: TLabel;
    FDQ_Pedido_data: TDateTimeField;
    FDQ_Pedido_valor_recebido: TFMTBCDField;
    frx_Empresa_Pedido: TfrxDBDataset;
    FDQ_Empresa: TFDQuery;
    FDQ_Empresacodigo: TFDAutoIncField;
    FDQ_Empresanome: TStringField;
    FDQ_Empresatelefone: TStringField;
    FDQ_Empresaendereco: TStringField;
    FDQ_Empresacnpj: TStringField;
    FDQ_Empresaie: TStringField;
    DS_Empresa: TDataSource;
    Label11: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBG_PesquisaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure E_CodProdExit(Sender: TObject);
    procedure SB_Mesa1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure FDQ_ItemPedido_TotalGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    function SomaTotal : Double;
    procedure E_ValorRecebidoChange(Sender: TObject);
    procedure SomenteFlutuante(Sender: TObject; var Key: Char);
    procedure SB_InsereItemClick(Sender: TObject);
    procedure SB_FinalizaCompraClick(Sender: TObject);
    procedure SB_PagamentoClick(Sender: TObject);
    procedure SB_FecharClick(Sender: TObject);
    
   
  private
    { Private declarations }
    procedure VerificaMesas;
   public
    { Public declarations }
  end;

var
  F_Pedido: TF_Pedido;

implementation

{$R *.dfm}

uses U_Principal;

function TF_Pedido.SomaTotal : Double;
var
  vTotal : String;
begin
  FDQ_Pesquisa.Close;
  FDQ_Pesquisa.SQL.Clear;
  FDQ_Pesquisa.SQL.Add('select SUM(valor * quantidade) as Total from tb_itempedido where cod_pedido =' + FDQ_Pedido_codigo.AsString);
  FDQ_Pesquisa.Open;
  vTotal := FormatFloat('0.00', FDQ_Pesquisa.FieldByName('Total').AsFloat);
  FDQ_Pesquisa.Close;
  Result := StrToFloat(vTotal);
end;

procedure TF_Pedido.VerificaMesas;

begin
  //Pintando Mesas de Verde

  P_Mesa1.Color := clLime;
  P_Mesa2.Color := clLime;
  P_Mesa3.Color := clLime;
  P_Mesa4.Color := clLime;
  P_Mesa5.Color := clLime;
  P_Mesa6.Color := clLime;
  P_Mesa7.Color := clLime;
  P_Mesa8.Color := clLime;
  P_Mesa9.Color := clLime;




  //Consultar Pedido não pago, trazendo a mesa
  FDQ_Pesquisa.Active := False;
  FDQ_Pesquisa.SQL.Clear;
  FDQ_Pesquisa.SQL.Add('select mesa from tb_pedido');
  FDQ_Pesquisa.SQL.Add(' where pago ="N"');
  FDQ_Pesquisa.Active := True;
  FDQ_Pesquisa.First;
  //Verifica DataSet até o fim da lista
  while not FDQ_Pesquisa.Eof do
  begin
    //Verifica se é a mesa 1, se for pinta a mesa de vermelho
    if FDQ_Pesquisa.FieldByName('mesa').AsInteger = 1 then
      P_Mesa1.Color := clRed;

    if FDQ_Pesquisa.FieldByName('mesa').AsInteger = 2 then
      P_Mesa2.Color := clRed;


    if FDQ_Pesquisa.FieldByName('mesa').AsInteger = 3 then
      P_Mesa3.Color := clRed;

    if FDQ_Pesquisa.FieldByName('mesa').AsInteger = 4 then
      P_Mesa4.Color := clRed;

    if FDQ_Pesquisa.FieldByName('mesa').AsInteger = 5 then
      P_Mesa5.Color := clRed;

    if FDQ_Pesquisa.FieldByName('mesa').AsInteger = 6 then
      P_Mesa6.Color := clRed;

    if FDQ_Pesquisa.FieldByName('mesa').AsInteger = 7 then
      P_Mesa7.Color := clRed;

    if FDQ_Pesquisa.FieldByName('mesa').AsInteger = 8 then
      P_Mesa8.Color := clRed;

    if FDQ_Pesquisa.FieldByName('mesa').AsInteger = 9 then
      P_Mesa9.Color := clRed;

    FDQ_Pesquisa.Next;
  end;
  FDQ_Pesquisa.Active := False;
end;


procedure TF_Pedido.DBG_PesquisaDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  (Sender as TDBGrid).Canvas.Brush.Color:= $00A3F3F8; // leve cinza
end;

procedure TF_Pedido.E_CodProdExit(Sender: TObject);
begin
  if Trim(E_CodProd.Text) = '' then
    Exit;
  FDQ_Pesquisa.Active := False;
  FDQ_Pesquisa.SQL.Clear;
  FDQ_Pesquisa.SQL.Add('select descricao, preco from tb_produto');
  FDQ_Pesquisa.SQL.Add(' where codigo =' + E_CodProd.Text);
  FDQ_Pesquisa.Active := True;
  if FDQ_Pesquisa.RecordCount = 0 then
  begin
    FDQ_Pesquisa.Active := False;
    E_Descricao.Clear;
    E_Valor.Clear;
    MessageDLG('PRODUTO NÃO ENCONTRADO',MTConfirmation,[MBOK],0);
    Abort;
  end;
  E_Descricao.Text := FDQ_Pesquisa.FieldByName('descricao').AsString;
  E_Valor.Text := FDQ_Pesquisa.FieldByName('preco').AsString;
  FDQ_Pesquisa.Active := False;
end;





procedure TF_Pedido.SomenteFlutuante(Sender: TObject; var Key: Char);
begin
  if not (Key in['0'..'9', Chr(8), ',']) then
    Key:= #0;

end;

procedure TF_Pedido.SB_FecharClick(Sender: TObject);
begin
  Close;
end;

procedure TF_Pedido.E_ValorRecebidoChange(Sender: TObject);
begin
  if E_ValorRecebido.Text <> '' then
    E_Troco.Text := FormatFloat('#,##0.00', StrToFloat(E_ValorRecebido.Text) - SomaTotal);
end;

procedure TF_Pedido.FDQ_ItemPedido_TotalGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  if FDQ_ItemPedido_valor.AsFloat > 0 then
    Text := FormatFloat('#,##0.00', FDQ_ItemPedido_valor.AsFloat * FDQ_ItemPedido_quantidade.AsInteger);
end;

procedure TF_Pedido.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FDQ_ItemPedido_.Active := False;
  FDQ_Produto.Active := False;
  FDQ_Pedido_.Active := False;
  FDQ_Cliente.Active := False;
  Action := caFree;
  F_Pedido := nil;
end;

procedure TF_Pedido.FormShow(Sender: TObject);
begin
  VerificaMesas;
end;

procedure TF_Pedido.PageControl1Change(Sender: TObject);
begin
  VerificaMesas;
end;

procedure TF_Pedido.SB_FinalizaCompraClick(Sender: TObject);
begin
  if E_ValorRecebido.Text = '' then
  begin
    MessageDLG('O VALOR RECEBIDO NÃO PODE SER EM BRANCO.',MTConfirmation,[MBOK],0);
    Abort;
  end;

  if StrToFloat(E_Troco.Text) < 0 then
  begin
    MessageDLG('O VALOR RECEBIDO PRECISA SER MAIOR QUE O VALOR DA COMPRA.',MTConfirmation,[MBOK],0);
    Abort;
  end;

  if MessageDLG('CONFIRMA O PAGAMENTO E TROCO DE R$ ' + E_Troco.Text +' ?',MTConfirmation,[MBYes,MBNo],0) = MRYes then
  begin
    FDQ_Pesquisa.Close;
    FDQ_Pesquisa.SQL.Clear;
    FDQ_Pesquisa.SQL.Add('update tb_pedido set pago ="S", valor_recebido = ' + E_ValorRecebido.Text);
    FDQ_Pesquisa.SQL.Add(' where codigo =' + FDQ_Pedido_codigo.AsString);
    FDQ_Pesquisa.ExecSQL;
    FDQ_Pesquisa.Close;
  end;
  //Refresh para o valor recebido ser atualizado em tela
  FDQ_Pedido_.Refresh;
  frx_cupom.ShowReport();
  P_Pagamento.Visible := False;
  VerificaMesas;
  PageControl1.TabIndex := 0;

  //Fecha os datasets
  FDQ_ItemPedido_.Active := False;
  FDQ_Produto.Active := False;
  FDQ_Pedido_.Active := False;
  FDQ_Cliente.Active := False;

  //Limpar campos
  E_CodProd.Clear;
  E_Descricao.Clear;
  E_Quantidade.Clear;
  E_Valor.Clear;
  E_Troco.Clear;
  E_ValorRecebido.Clear;
  P_totalvalor.Caption := 'R$ 0,00';
   SB_FinalizaCompra.Enabled := False;
  //Imprime
end;

procedure TF_Pedido.SB_InsereItemClick(Sender: TObject);
begin
  if MessageDLG('CONFIRMA A INCLUSÃO DO ITEM ' + E_CodProd.Text + ' - ' + E_Descricao.Text +' ?',MTConfirmation,[MBYes,MBNo],0) = MRYes then
  begin
    //Adicionar Item
    FDQ_ItemPedido_.Insert;
    FDQ_ItemPedido_cod_pedido.AsInteger  := FDQ_Pedido_codigo.AsInteger;
    FDQ_ItemPedido_cod_produto.AsInteger := StrToInt(E_CodProd.Text);
    FDQ_ItemPedido_quantidade.AsInteger  := StrToInt(E_Quantidade.Text);
    FDQ_ItemPedido_valor.AsFloat         := StrToFloat(E_Valor.Text);
    FDQ_ItemPedido_.Post;
    P_totalvalor.Caption := FormatFloat('R$ #,##0.00', SomaTotal);

  end;


//Limpar campos
  E_CodProd.Clear;
  E_Descricao.Clear;
  E_Quantidade.Clear;
  E_Valor.Clear;
  E_CodProd.SetFocus;
end;

procedure TF_Pedido.SB_Mesa1Click(Sender: TObject);
var
  vPedido : Integer;
begin
  vPedido := 0;
  FDQ_Pesquisa.Active := False;
  FDQ_Pesquisa.SQL.Clear;
  FDQ_Pesquisa.SQL.Add('select codigo from tb_pedido');
  FDQ_Pesquisa.SQL.Add(' where mesa =' + IntToStr(TSpeedButton(Sender).Tag));
  FDQ_Pesquisa.SQL.Add(' and pago ="N"');
  FDQ_Pesquisa.Active := True;
  vPedido := FDQ_Pesquisa.FieldByName('codigo').AsInteger;
  FDQ_Pesquisa.Active := False;

  if vPedido < 1 then
  begin
  //Inserir Pedido
    FDQ_Pedido_.Active := True;
    FDQ_Pedido_.Insert;
    FDQ_Pedido_cod_cliente.AsInteger := 1;
    FDQ_Pedido_mesa.AsInteger        := TSpeedButton(Sender).Tag;
    FDQ_Pedido_pago.AsString         := 'N';
    FDQ_Pedido_data.AsDateTime       := Now;
    FDQ_Pedido_.Post;
    vPedido := FDQ_Pedido_codigo.AsInteger;

  end;

  FDQ_Cliente.Active := True;
  FDQ_Pedido_.Active := True;
  FDQ_Produto.Active := True;
  FDQ_ItemPedido_.SQL.Clear;
  FDQ_ItemPedido_.SQL.Add('select * from tb_itempedido');
  FDQ_ItemPedido_.SQL.Add('  where cod_pedido=' + IntToStr(vPedido));
  FDQ_ItemPedido_.Active := True;
  //Setando o Pedido
  FDQ_Pedido_.Locate('codigo', vPedido, []);


  PageControl1.TabIndex := 1;
  if E_CodProd.CanFocus then
     E_CodProd.SetFocus;
     P_totalvalor.Caption := FormatFloat('R$ #,##0.00', SomaTotal);
end;

procedure TF_Pedido.SB_PagamentoClick(Sender: TObject);
begin
  P_Pagamento.Visible := True;
  if E_ValorRecebido.CanFocus then
     E_ValorRecebido.SetFocus;
     SB_FinalizaCompra.Enabled := True;
end;

end.
