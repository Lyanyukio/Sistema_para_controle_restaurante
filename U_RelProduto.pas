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
unit U_RelProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, frxClass, frxExportBaseDialog,
  frxExportPDF, frxDBSet;

type
  TF_RelProduto = class(TForm)
    FDQ_Relatorio: TFDQuery;
    DataSource1: TDataSource;
    Pnl_RelClient1: TPanel;
    Pnl_RelClient2: TPanel;
    CB_Ordenacao: TComboBox;
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Pnl_imprimir: TPanel;
    SB_imprimir: TSpeedButton;
    Pnl_voltar: TPanel;
    SB_voltar: TSpeedButton;
    frx_RelProduto: TfrxReport;
    RelProduto: TfrxDBDataset;
    FDQ_Relatoriocodigo: TFDAutoIncField;
    FDQ_Relatoriodescricao: TStringField;
    FDQ_Relatoriopreco: TFloatField;
    frx_Empresa_produto: TfrxDBDataset;
    FDQ_Empresa: TFDQuery;
    FDQ_Empresacodigo: TFDAutoIncField;
    FDQ_Empresanome: TStringField;
    FDQ_Empresatelefone: TStringField;
    FDQ_Empresaendereco: TStringField;
    FDQ_Empresacnpj: TStringField;
    FDQ_Empresaie: TStringField;
    DS_Empresa: TDataSource;
    procedure SB_voltarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SomenteNumeros(Sender: TObject; var Key: Char);
    procedure SB_imprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_RelProduto: TF_RelProduto;

implementation

{$R *.dfm}


procedure TF_RelProduto.SomenteNumeros(Sender: TObject; var Key: Char);
begin
  if not (Key in['0'..'9', Chr(8)]) then
    Key:= #0;
end;

procedure TF_RelProduto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  F_RelProduto := nil;
end;

procedure TF_RelProduto.SB_imprimirClick(Sender: TObject);
var vOrdem : String;
begin
  if Trim(Edit1.Text) = '' then
  begin
    MessageDlg('O CÓDIGO INICIAL NÃO PODE SER EM BRANCO.',MTWarning,[mbok],0);
    Edit1.SetFocus;
    Abort;
  end;

  if Trim(Edit2.Text) = '' then
  begin
    MessageDlg('O CÓDIGO FINAL NÃO PODE SER EM BRANCO.',MTWarning,[mbok],0);
    Edit2.SetFocus;
    Abort;
  end;

  if StrToInt(Edit1.Text) > StrToInt(Edit2.Text)  then
  begin
    MessageDlg('O CÓDIGO INICIAL NÃO PODE SER MAIOR QUE O FINAL.',MTWarning,[mbok],0);
    Edit1.SetFocus;
    Abort;
  end;

  FDQ_Relatorio.Active := False;
  FDQ_Relatorio.SQL.Clear;
  FDQ_Relatorio.SQL.Add('select * from tb_produto where codigo >=' + Edit1.Text);
  FDQ_Relatorio.SQL.Add('   and codigo <= ' + Edit2.Text);
  case CB_Ordenacao.ItemIndex of
    0: begin
      FDQ_Relatorio.SQL.Add(' order by codigo');
      vOrdem := ' ordenado por código';
    end;
    1: begin
      FDQ_Relatorio.SQL.Add(' order by descricao');
      vOrdem := ' ordenado por descricao';
    end;
  end;
  FDQ_Relatorio.Active := True;
  frx_RelProduto.ShowReport();



{
  Form_relatorio_client := TForm_relatorio_client.Create(Self);
  Form_relatorio_client.RLLabel2.Caption := Form_relatorio_client.RLLabel2.Caption + ' código inicial = ' + Edit1.Text +
                                                                                     ' código final = ' + Edit2.Text + vOrdem;
  Form_relatorio_client.RLReport1.Preview();
  }
end;

procedure TF_RelProduto.SB_voltarClick(Sender: TObject);
begin
  Close;
end;

end.
