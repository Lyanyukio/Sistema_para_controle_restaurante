unit U_Empresa;

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
  TF_Empresa = class(TForm)
    FDQ_Empresa: TFDQuery;
    Pnl_Cliente: TPanel;
    Pnl_Cliente_cadastro: TPanel;
    DataSource1: TDataSource;
    DBG_Pesquisa: TDBGrid;
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
    SB_Novo: TSpeedButton;
    SB_Cancelar: TSpeedButton;
    FDQ_Empresacodigo: TFDAutoIncField;
    FDQ_Empresanome: TStringField;
    FDQ_Empresaendereco: TStringField;
    FDQ_Empresacnpj: TStringField;
    FDQ_Empresaie: TStringField;
    FDQ_Empresatelefone: TStringField;
    Label2: TLabel;
    DBEdit5: TDBEdit;
    Label3: TLabel;
    DBEdit6: TDBEdit;
    E_PCNPJ: TEdit;
    E_PIE: TEdit;
    SB_Excluir: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBG_PesquisaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure SB_MenuClick(Sender: TObject);
    procedure SB_NovoClick(Sender: TObject);
    procedure SB_ExcluirClick(Sender: TObject);
    procedure SB_GravarClick(Sender: TObject);
    procedure SB_CancelarClick(Sender: TObject);
    procedure DataSource1StateChange(Sender: TObject);
    procedure FDQ_EmpresaBeforeDelete(DataSet: TDataSet);
    procedure FDQ_EmpresaBeforeInsert(DataSet: TDataSet);
    procedure LimpaPesquisa(Sender: TObject);
    procedure OrdenaPesquisa(Sender: TObject);
    procedure PesquisaRemissiva(Sender: TObject);
    procedure FDQ_EmpresatelefoneGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

type
  TDBGridPadrao = class(TDBGrid);

var
  F_Empresa: TF_Empresa;

implementation

{$R *.dfm}

uses U_Principal, U_RelCliente;


procedure TF_Empresa.DataSource1StateChange(Sender: TObject);
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

procedure TF_Empresa.DBG_PesquisaDrawColumnCell(Sender: TObject;
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

procedure TF_Empresa.LimpaPesquisa(Sender: TObject);
begin
  if TEdit(Sender).Text <> '' then
    TEdit(Sender).Clear;
end;

procedure TF_Empresa.OrdenaPesquisa(Sender: TObject);
begin
  FDQ_Empresa.Close;
  FDQ_Empresa.SQL.Clear;
  FDQ_Empresa.SQL.Add('select * from tb_empresa');
  FDQ_Empresa.SQL.Add(' order by ' + TEdit(Sender).Hint);
  FDQ_Empresa.Open;
  if TEdit(Sender).CanFocus then
    TEdit(Sender).SetFocus;
end;

procedure TF_Empresa.PesquisaRemissiva(Sender: TObject);
begin
  if TEdit(Sender).Text <> '' then
  begin
    FDQ_Empresa.Locate(TEdit(Sender).Hint,Trim(TEdit(Sender).Text), [loPartialKey]);
  end;
end;

procedure TF_Empresa.FDQ_EmpresaBeforeDelete(DataSet: TDataSet);
begin
  if MessageDLG('CONFIRMA A EXCLUSÃO DA EMPRESA?',MTConfirmation,[MBYes,MBNo],0) = MRNo then
  begin
    Abort;
  end;
end;

procedure TF_Empresa.FDQ_EmpresaBeforeInsert(DataSet: TDataSet);
begin
  if DBEdit2.CanFocus then
    DBEdit2.SetFocus;
end;

procedure TF_Empresa.FDQ_EmpresatelefoneGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
 Text:= F_Principal.FormatarTelefone(FDQ_Empresatelefone.AsString);
end;

procedure TF_Empresa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  F_Empresa := nil;
end;

procedure TF_Empresa.SB_MenuClick(Sender: TObject);
begin
  Close;
end;

procedure TF_Empresa.SB_GravarClick(Sender: TObject);
begin
  FDQ_Empresa.Post;
end;

procedure TF_Empresa.SB_ExcluirClick(Sender: TObject);
begin
  FDQ_Empresa.Delete;
end;

procedure TF_Empresa.SB_NovoClick(Sender: TObject);
begin
  FDQ_Empresa.Insert;
end;

procedure TF_Empresa.SB_CancelarClick(Sender: TObject);
begin
  FDQ_Empresa.Cancel;
end;


end.
