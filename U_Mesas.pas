unit U_Mesas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TF_Mesas = class(TForm)
    FDQ_Mesas: TFDQuery;
    FDQ_Mesascod_mesa: TFDAutoIncField;
    FDQ_Mesasdescricao: TStringField;
    FDQ_Mesasquantidade: TStringField;
    FDQ_Mesaspreco_unitario: TFloatField;
    DataSource1: TDataSource;
    FDQ_Pesquisa: TFDQuery;
    Panel5: TPanel;
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
    E_Cliente: TEdit;
    E_Mesa: TEdit;
    Panel2: TPanel;
    DBG_Pesquisa: TDBGrid;
    P_Controle: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    E_CodProd: TEdit;
    E_Descricao: TEdit;
    E_Quantidade: TEdit;
    E_Valor: TEdit;
    Panel3: TPanel;
    SB_Novo: TSpeedButton;
    SpeedButton1: TSpeedButton;
    Pnl_pratos: TPanel;
    SB_Menu: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBG_PesquisaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure E_CodProdExit(Sender: TObject);
    procedure SB_Mesa1Click(Sender: TObject);
    procedure SB_MenuClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Mesas: TF_Mesas;

implementation

{$R *.dfm}

uses U_Principal;
procedure TF_Mesas.DBG_PesquisaDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
    (Sender as TDBGrid).Canvas.Brush.Color:= $00A3F3F8; // leve cinza
end;

procedure TF_Mesas.E_CodProdExit(Sender: TObject);
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

procedure TF_Mesas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Freeandnil(F_Mesas);
end;

procedure TF_Mesas.SB_MenuClick(Sender: TObject);
begin
  Close;
end;

procedure TF_Mesas.SB_Mesa1Click(Sender: TObject);
begin
  FDQ_Pesquisa.Active := False;
  FDQ_Pesquisa.SQL.Clear;
  FDQ_Pesquisa.SQL.Add('select p.*, c.nome from tb_pedido p, tb_cliente c');
  FDQ_Pesquisa.SQL.Add(' where p.cod_cliente = c.codigo');
  FDQ_Pesquisa.SQL.Add(' and mesa =' + IntToStr(TSpeedButton(Sender).Tag));
  FDQ_Pesquisa.SQL.Add(' and pago ="N"');
  FDQ_Pesquisa.Active := True;
  E_Cliente.Text := FDQ_Pesquisa.FieldByName('nome').AsString;
  E_Mesa.Text := FDQ_Pesquisa.FieldByName('mesa').AsString;
  FDQ_Pesquisa.Active := False;
  PageControl1.TabIndex := 1;
end;

end.
