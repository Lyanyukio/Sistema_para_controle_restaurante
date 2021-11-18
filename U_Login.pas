unit U_Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TF_Login = class(TForm)
    Panel3: TPanel;
    E_Login: TEdit;
    Label1: TLabel;
    E_Senha: TEdit;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    Panel4: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Image1: TImage;
    Panel1: TPanel;
    Panel2: TPanel;
    FDQ_Login: TFDQuery;
    SB_Clientes: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Image2: TImage;
    procedure FormCreate(Sender: TObject);
    procedure SB_ClientesClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    Resposta: Integer;
  end;

var
  F_Login: TF_Login;
  contaErro : integer;
implementation

{$R *.dfm}

uses U_Principal;

procedure TF_Login.FormCreate(Sender: TObject);
begin
  Resposta := mrOK;
end;



procedure TF_Login.SB_ClientesClick(Sender: TObject);
begin
  if Trim(E_Login.Text) = '' then
  begin
    Showmessage('O usuário não pode ser em branco !');
    E_Login.SetFocus;
    Abort;
  end;

  if Trim(E_Senha.Text) = '' then
  begin
    Showmessage('A senha não pode ser em branco !');
    E_Senha.SetFocus;
    Abort;
  end;

  //Conecta no banco
  if FDQ_Login.Active then
    FDQ_Login.Active := False;
  FDQ_Login.SQL.Clear;
  FDQ_Login.SQL.Add('select * from tb_usuario');
  FDQ_Login.SQL.Add(' where Upper(login) = "' + UpperCase(E_Login.Text) + '"');
  FDQ_Login.SQL.Add('   and senha =        "' + Trim(E_Senha.Text) + '"');
  FDQ_Login.Active := True;

  F_Principal.LB_Usuario.Caption := FDQ_Login.FieldByName('login').AsString;

  if FDQ_Login.RecordCount <= 0 then
  begin
    Showmessage('Usuário ou senha inválida !');
    FDQ_Login.Active := False;
    Abort;
  end
  else
  begin
    FDQ_Login.Active := False;
    ModalResult := mrOK;
    F_Principal.Show;
    F_Login.Hide;
  end;
end;

procedure TF_Login.SpeedButton2Click(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

end.
