unit U_Produtos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, FireDAC.UI.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.VCLUI.Wait, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, Vcl.Grids, Vcl.DBGrids, Vcl.WinXCtrls;

type
  TF_Produtos = class(TForm)
    DataSource1: TDataSource;
    Pnl_Prato_cadastro: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    FDQ_Produtos: TFDQuery;
    DBG_Pesquisa: TDBGrid;
    Panel1: TPanel;
    FDQ_Produtoscodigo: TFDAutoIncField;
    FDQ_Produtosdescricao: TStringField;
    FDQ_Produtospreco: TFloatField;
    SB_Codigo: TSearchBox;
    SB_Preco: TSearchBox;
    SB_Descricao: TSearchBox;
    Pnl_pratos: TPanel;
    SB_Menu: TSpeedButton;
    SB_Gravar: TSpeedButton;
    SB_Excluir: TSpeedButton;
    SB_Cancelar: TSpeedButton;
    SB_Novo: TSpeedButton;
    procedure FDQ_ProdutosBeforeDelete(DataSet: TDataSet);
    procedure SB_NovoClick(Sender: TObject);
    procedure SB_ExcluirClick(Sender: TObject);
    procedure SB_GravarClick(Sender: TObject);
    procedure SB_MenuClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBG_PesquisaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure SB_CodigoChange(Sender: TObject);
    procedure SB_DescricaoChange(Sender: TObject);
    procedure SB_PrecoChange(Sender: TObject);
    procedure SB_CancelarClick(Sender: TObject);
    procedure DataSource1StateChange(Sender: TObject);
    procedure SB_Novo2Click(Sender: TObject);
    procedure SB_Excluir2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Produtos: TF_Produtos;

implementation

{$R *.dfm}

uses U_Principal;

procedure TF_Produtos.DataSource1StateChange(Sender: TObject);
begin
  if DataSource1.State = dsBrowse then
    begin
      SB_Novo.Enabled     := True;
      SB_Excluir.Enabled  := True;
      SB_Gravar.Enabled   := False;
      SB_Cancelar.Enabled := False;
    end
  else
    if DataSource1.State = dsInsert then
      begin
        SB_Novo.Enabled     := False;
        SB_Excluir.Enabled  := False;
        SB_Gravar.Enabled   := True;
        SB_Cancelar.Enabled := True;
      end
    else
      if DataSource1.State = dsEdit then
        begin
          SB_Novo.Enabled     := False;
          SB_Excluir.Enabled  := False;
          SB_Gravar.Enabled   := True;
          SB_Cancelar.Enabled := True;
        end
      else
        if DataSource1.State = dsInactive then
          begin
            SB_Novo.Enabled     := False;
            SB_Excluir.Enabled  := False;
            SB_Gravar.Enabled   := False;
            SB_Cancelar.Enabled := False;
          end;
end;

procedure TF_Produtos.DBG_PesquisaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  //Zebrando a grid
  if Odd((Sender as TDBGrid).DataSource.DataSet.RecNo) then
    (Sender as TDBGrid).Canvas.Brush.Color:= clWhite
  else
    (Sender as TDBGrid).Canvas.Brush.Color:= $00E4E4E4; // leve cinza

  //Mudando a cor da selecao
  if gdSelected in State then
  begin
    (Sender as TDBGrid).Canvas.Brush.Color:= $00CC8B1E;
    (Sender as TDBGrid).Canvas.Font.Color:= clWhite;
//    (Sender as TDBGrid).Canvas.Font.Style:= [fsBold];
  end;

  (Sender as TDBGrid).Canvas.FillRect(Rect);
  (Sender as TDBGrid).DefaultDrawColumnCell(Rect, DataCol, Column, State);

  //Mudando a posicao e alinhhamento vertical do texto de cada linha
//  (Sender as TDBGrid).Canvas.TextRect(Rect, Rect.Left + 8, Rect.Top + 8, Column.Field.DisplayText);
end;

procedure TF_Produtos.FDQ_ProdutosBeforeDelete(DataSet: TDataSet);
begin
  if MessageDLG('CONFIRMA A EXCLUSÃO DO Produto?',MTConfirmation,[MBYes,MBNo],0) = MRNo then
  begin
    Abort;
  end;
end;

//procedure TF_Produtos.FormClose(Sender: TObject; var Action: TCloseAction);
//begin
  //FreeAndNil(FDQ_Produtos);
//end;

procedure TF_Produtos.SB_MenuClick(Sender: TObject);
begin
  Close;
end;
procedure TF_Produtos.SB_GravarClick(Sender: TObject);
begin
  FDQ_Produtos.Post;
end;


procedure TF_Produtos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Freeandnil(F_Produtos);
end;

procedure TF_Produtos.SB_Excluir2Click(Sender: TObject);
begin
   FDQ_Produtos.Delete;
end;

procedure TF_Produtos.SB_ExcluirClick(Sender: TObject);
begin
  FDQ_Produtos.Delete;
end;



procedure TF_Produtos.SB_Novo2Click(Sender: TObject);
begin
  FDQ_Produtos.Insert;
end;

procedure TF_Produtos.SB_NovoClick(Sender: TObject);
begin
  FDQ_Produtos.Insert;
end;


procedure TF_Produtos.SB_PrecoChange(Sender: TObject);
begin
  FDQ_Produtos.Locate('preco',Trim(SB_Preco.Text), [loPartialKey]);
end;

procedure TF_Produtos.SB_CancelarClick(Sender: TObject);
begin
FDQ_Produtos.Cancel;
end;

procedure TF_Produtos.SB_CodigoChange(Sender: TObject);
begin
  FDQ_Produtos.Locate('codigo',Trim(SB_Codigo.Text), [loPartialKey]);
end;

procedure TF_Produtos.SB_DescricaoChange(Sender: TObject);
begin
  FDQ_Produtos.Locate('descricao',Trim(SB_Descricao.Text), [loPartialKey]);
  end;

end.
.
