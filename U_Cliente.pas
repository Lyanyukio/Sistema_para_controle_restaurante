unit U_Cliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Phys.MySQLDef, FireDAC.Phys.MySQL, Data.DB, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.Mask, Vcl.DBCtrls, Vcl.Buttons;

type
  TF_Cliente = class(TForm)
    FDQ_Clientes: TFDQuery;
    Pnl_Cliente: TPanel;
    Pnl_Cliente_cadastro: TPanel;
    DataSource1: TDataSource;
    DBG_Pesquisa: TDBGrid;
    FDQ_Clientescodigo: TFDAutoIncField;
    FDQ_Clientesnome: TStringField;
    FDQ_Clientesendereco: TStringField;
    FDQ_Clientestelefone: TStringField;
    Panel1: TPanel;
    E_PCodigo: TEdit;
    E_PNome: TEdit;
    E_PEndereco: TEdit;
    E_PTelefone: TEdit;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label6: TLabel;
    DBEdit2: TDBEdit;
    Label7: TLabel;
    DBEdit3: TDBEdit;
    Label8: TLabel;
    DBEdit4: TDBEdit;
    SB_Menu: TSpeedButton;
    SB_Gravar: TSpeedButton;
    SB_Excluir: TSpeedButton;
    SB_Novo: TSpeedButton;
    SB_Cancelar: TSpeedButton;
    Label2: TLabel;
    DBEdit5: TDBEdit;
    Label3: TLabel;
    DBEdit6: TDBEdit;
    E_PCidade: TEdit;
    FDQ_Clientescidade: TStringField;
    FDQ_Clientesemail: TStringField;
    Edit1: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBG_PesquisaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure SB_MenuClick(Sender: TObject);
    procedure SB_NovoClick(Sender: TObject);
    procedure SB_ExcluirClick(Sender: TObject);
    procedure SB_GravarClick(Sender: TObject);
    procedure SB_CancelarClick(Sender: TObject);
    procedure DataSource1StateChange(Sender: TObject);
    procedure FDQ_ClientesBeforeDelete(DataSet: TDataSet);
    procedure FDQ_ClientesBeforeInsert(DataSet: TDataSet);
    procedure LimpaPesquisa(Sender: TObject);
    procedure OrdenaPesquisa(Sender: TObject);
    procedure PesquisaRemissiva(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

type
  TDBGridPadrao = class(TDBGrid);

var
  F_Cliente: TF_Cliente;

implementation

{$R *.dfm}

uses U_Principal, U_RelCliente;

procedure TF_Cliente.DataSource1StateChange(Sender: TObject);
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

procedure TF_Cliente.DBG_PesquisaDrawColumnCell(Sender: TObject;
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

procedure TF_Cliente.LimpaPesquisa(Sender: TObject);
begin
  if TEdit(Sender).Text <> '' then
    TEdit(Sender).Clear;
end;

procedure TF_Cliente.OrdenaPesquisa(Sender: TObject);
begin
  FDQ_Clientes.Close;
  FDQ_Clientes.SQL.Clear;
  FDQ_Clientes.SQL.Add('select * from tb_cliente');
  FDQ_Clientes.SQL.Add(' order by ' + TEdit(Sender).Hint);
  FDQ_Clientes.Open;
  if TEdit(Sender).CanFocus then
    TEdit(Sender).SetFocus;
end;

procedure TF_Cliente.PesquisaRemissiva(Sender: TObject);
begin
  if TEdit(Sender).Text <> '' then
  begin
    FDQ_Clientes.Locate(TEdit(Sender).Hint,Trim(TEdit(Sender).Text), [loPartialKey]);
  end;
end;

procedure TF_Cliente.FDQ_ClientesBeforeDelete(DataSet: TDataSet);
begin
  if MessageDLG('CONFIRMA A EXCLUSÃO DO CLIENTE?',MTConfirmation,[MBYes,MBNo],0) = MRNo then
  begin
    Abort;
  end;
end;

procedure TF_Cliente.FDQ_ClientesBeforeInsert(DataSet: TDataSet);
begin
  if DBEdit2.CanFocus then
    DBEdit2.SetFocus;
end;

procedure TF_Cliente.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  F_Cliente := nil;
end;

procedure TF_Cliente.SB_MenuClick(Sender: TObject);
begin
  Close;
end;

procedure TF_Cliente.SB_GravarClick(Sender: TObject);
begin
  FDQ_Clientes.Post;
end;

procedure TF_Cliente.SB_ExcluirClick(Sender: TObject);
begin
  FDQ_Clientes.Delete;
end;

procedure TF_Cliente.SB_NovoClick(Sender: TObject);
begin
  FDQ_Clientes.Insert;
end;

procedure TF_Cliente.SB_CancelarClick(Sender: TObject);
begin
  FDQ_Clientes.Cancel;
end;


end.
