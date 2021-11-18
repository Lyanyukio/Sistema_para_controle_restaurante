program P_Projeto;

uses
  Vcl.Forms,
  U_Login in 'U_Login.pas' {F_Login},
  U_Principal in 'U_Principal.pas' {F_Principal},
  U_Produtos in 'U_Produtos.pas' {F_Produtos},
  U_Pedido in 'U_Pedido.pas' {F_Pedido},
  U_RelProduto in 'U_RelProduto.pas' {F_RelProduto},
  U_Sobre in 'U_Sobre.pas' {F_Sobre},
  U_RelCliente in 'U_RelCliente.pas' {F_RelCliente},
  U_Empresa in 'U_Empresa.pas' {F_Empresa},
  U_Cliente in 'U_Cliente.pas' {F_Cliente};

{$R *.res}


begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TF_Principal, F_Principal);
  Application.Run;
end.
