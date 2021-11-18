unit U_Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, Vcl.StdCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait,
  Data.DB, FireDAC.Comp.Client, MaskUtils, Vcl.Imaging.pngimage;

type
  TF_Principal = class(TForm)
    P_MenuLateral: TPanel;
    SB_Pedidos: TSpeedButton;
    SB_Produtos: TSpeedButton;
    SB_Clientes: TSpeedButton;
    SB_Fechar: TSpeedButton;
    SpeedButton7: TSpeedButton;
    Panel4: TPanel;
    Panel7: TPanel;
    FDConnection1: TFDConnection;
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
    P_SubMenuCliente: TPanel;
    SB_CadCliente: TSpeedButton;
    P_SubMenuPedido: TPanel;
    SB_CadPedido: TSpeedButton;
    P_SubMenuProduto: TPanel;
    SpeedButton4: TSpeedButton;
    Pnl_Principal: TPanel;
    LB_Timer: TLabel;
    Timer1: TTimer;
    SB_Menu: TSpeedButton;
    LB_Usuario: TLabel;
    LB_Date: TLabel;
    Timer2: TTimer;
    Label1: TLabel;
    SB_RelCliente: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SB_RelProduto: TSpeedButton;
    Label2: TLabel;
    Image1: TImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure SB_FecharsClick(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SB_PedidosClick(Sender: TObject);
    procedure SB_ProdutosClick(Sender: TObject);
    procedure SB_MesasClick(Sender: TObject);
    procedure SB_MenuClick(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure SB_ClientesClick(Sender: TObject);
    procedure SB_CadClienteClick(Sender: TObject);
    procedure SB_CadPedidoClick(Sender: TObject);
    procedure SB_MenuMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SB_RelClienteClick(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SB_RelProdutoClick(Sender: TObject);

  private
    { Private declarations }
    procedure RetrairMenu;
  public
    { Public declarations }
    function FormatarTelefone(Telefone : String):String;
  end;

var
  F_Principal: TF_Principal;
  vExpandido : BOOlean;

implementation

{$R *.dfm}

uses U_Cliente, U_Login, U_Produtos,U_Pedido,U_RelCliente, U_Sobre,
  U_RelProduto, U_Empresa;

procedure TF_Principal.RetrairMenu;
begin
  if P_SubMenuCliente.Visible then
    P_SubMenuCliente.Visible := False;

  if P_SubMenuPedido.Visible then
    P_SubMenuPedido.Visible := False;

  if P_SubMenuProduto.Visible then
    P_SubMenuProduto.Visible := False;
end;

function TF_Principal.FormatarTelefone(Telefone : String):String;
  function SomenteNumero(snum : String) : String;
  VAR s1, s2: STRING;
    i: Integer;
  BEGIN
    s1 := snum;
    s2 := '';
    FOR i := 1 TO Length(s1) DO
      IF s1[i] IN ['0'..'9'] THEN
        s2 := s2 + s1[i];
    result := s2;
  End;
var sTel : String;
    bZero : Boolean;
    iDigitos : Integer;
begin
   //Obs: mascara prevê tratamento apenas para números brasileiros
   //Obs2: Esta função não leva em conta o código do país (Ex: 55, ou +55)

   sTel := SomenteNumero(Telefone); //Remove qualquer formatação que o usuário possa ter colocado.
   if sTel='' then
    Result := ''
   else
   begin
     if sTel[1]='0' then //Verifica se foi adicionado o 0 no início do número
     begin
       bZero:= True;
       sTel := Trim( copy(sTel,2,Length(sTel)) ); //Remove para fazer a formatação depois adiciona
     end
     else
       bZero := False;
     iDigitos := Length(sTel);
     //Formata de acordo com a quantidade de números encontrados.
     case iDigitos of
       8 : Result := FormatMaskText('9999-9999;0;_',sTel); //8 digitos SEM DDD (ex: 34552318)
       9 : Result := FormatMaskText('9 9999-9999;0;_',sTel); //9 digitos SEM DDD (ex: 991916889)
      10 : Result := FormatMaskText('(99) 9999-9999;0;_',sTel); //8 Digitos (convencional, ex: 7734552318)
      11 : Result := FormatMaskText('(99) 9 9999-9999;0;_',sTel); //9 Digitos (novos números, ex: 77991916889)
      12 : Result := FormatMaskText('99(99)9999-9999;0;_',sTel); //Se foram 12 digitos possívelmente digitou a operadora também
      13 : Result := FormatMaskText('99(99)9 9999-9999;0;_',sTel); //Se foram 13 digitos possívelmente digitou a operadora também
     else
       Result := Telefone; //Mantém na forma que o usuário digitou
     end;
     if bZero then //Para ficar com a preferência do usuário, se ele digitou o "0" eu mantenho.
       Result := '0'+Result;
   end;
end;

procedure TF_Principal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//  FreeAndNil(F_PrincipaL);
end;

procedure TF_Principal.FormCreate(Sender: TObject);
begin
//Tela de Login

 {F_Login := TF_Login.Create(Application);
  F_Login.ShowModal;
  if F_Login.ModalResult = mrCancel then
    Halt;
  if F_Login.ModalResult = mrOK then
  begin
    F_Login.Close;
  end;

  vExpandido := True;
  }
end;


procedure TF_Principal.SB_CadClienteClick(Sender: TObject);
begin
  if F_Cliente = nil then
   begin
     F_Cliente             := TF_Cliente.Create(Self);
     //F_Cliente.WindowState := wsMaximized;
     F_Cliente.FDQ_Clientes.Active := True;
   end;
end;

procedure TF_Principal.SB_ClientesClick(Sender: TObject);
begin
  RetrairMenu;
  P_SubMenuCliente.Top := SB_Clientes.Top + 45;
  if P_SubMenuCliente.Visible then
    P_SubMenuCliente.Visible := False
  else
    P_SubMenuCliente.Visible := True;
end;

procedure TF_Principal.SB_FecharsClick(Sender: TObject);
begin
   Application.Terminate;
end;

procedure TF_Principal.SB_MenuClick(Sender: TObject);
var i: Integer;
begin
 if not(vExpandido) then
  begin
    for I := 52 to 170 do
    P_MenuLateral.Width := I;
  end
  else
  begin
   for I := 170 downto 50 do
    P_MenuLateral.Width := I;
  end;
  vExpandido := not vExpandido;
end;

procedure TF_Principal.SB_MenuMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  SB_Menu.Visible :=False;
end;

procedure TF_Principal.SB_MesasClick(Sender: TObject);
begin
  if F_Pedido = nil then
   begin
     F_Pedido := TF_Pedido.Create(Self);

     //F_Cliente.WindowState := wsMaximized;
     F_Pedido.FDQ_Pedido_.Active := True;
   end;
end;

procedure TF_Principal.SB_PedidosClick(Sender: TObject);
begin
  RetrairMenu;
  P_SubMenuPedido.Top := SB_Pedidos.Top + 45;
  if P_SubMenuPedido.Visible then
    P_SubMenuPedido.Visible := False
  else
    P_SubMenuPedido.Visible := True;
end;

procedure TF_Principal.SB_ProdutosClick(Sender: TObject);
begin
  RetrairMenu;
  P_SubMenuProduto.Top := SB_Produtos.Top + 45;
  if P_SubMenuProduto.Visible then
    P_SubMenuProduto.Visible := False
  else
    P_SubMenuProduto.Visible := True;
end;

procedure TF_Principal.SB_RelClienteClick(Sender: TObject);
begin
  if F_RelCliente = nil then
   begin
     F_RelCliente := TF_RelCliente.Create(Self);
     //F_Cliente.WindowState := wsMaximized;
     F_RelCliente.FDQ_Relatorio.Active := True;
   end;

end;

procedure TF_Principal.SB_RelProdutoClick(Sender: TObject);
begin
  if F_RelProduto = nil then
   begin
     F_RelProduto := TF_RelProduto.Create(Self);
     //F_Cliente.WindowState := wsMaximized;
     F_RelProduto.FDQ_Relatorio.Active := True;
   end;

end;

procedure TF_Principal.SpeedButton1Click(Sender: TObject);
begin
  if F_Empresa = nil then
   begin
     F_Empresa := TF_Empresa.Create(Self);
     //F_Cliente.WindowState := wsMaximized;
     F_Empresa.FDQ_Empresa.Active := True;
   end;

end;

procedure TF_Principal.SpeedButton2Click(Sender: TObject);
begin
  if F_RelProduto = nil then
   begin
     F_RelProduto := TF_RelProduto.Create(Self);
     //F_Cliente.WindowState := wsMaximized;
     F_RelProduto.FDQ_Relatorio.Active := True;
   end;

end;

procedure TF_Principal.SpeedButton4Click(Sender: TObject);
begin
  if F_Produtos = nil then
   begin
     F_Produtos := TF_Produtos.Create(Self);
     //F_Cliente.WindowState := wsMaximized;
     F_Produtos.FDQ_Produtos.Active := True;
   end;
end;

procedure TF_Principal.SpeedButton7Click(Sender: TObject);
begin
  if F_Sobre = nil then
   begin
     F_Sobre := TF_Sobre.Create(Self);
     F_Sobre.ShowModal;
     //F_Cliente.WindowState := wsMaximized;
   end;
end;

procedure TF_Principal.SB_CadPedidoClick(Sender: TObject);
begin
  if F_Pedido = nil then
   begin
     F_Pedido := TF_Pedido.Create(Self);
     //F_Cliente.WindowState := wsMaximized;
     F_Pedido.PageControl1.TabIndex := 0;
   end;

end;

procedure TF_Principal.Timer2Timer(Sender: TObject);
begin
  LB_Date.Caption := DateTimeToStr(Now);
end;

end.
