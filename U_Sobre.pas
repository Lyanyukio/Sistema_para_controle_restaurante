unit U_Sobre;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage;

type
  TF_Sobre = class(TForm)
    Pnl_RelClient2: TPanel;
    Pnl_voltar: TPanel;
    SB_voltar: TSpeedButton;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SB_voltarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Sobre: TF_Sobre;

implementation

{$R *.dfm}

procedure TF_Sobre.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  F_Sobre := nil;
end;

procedure TF_Sobre.SB_voltarClick(Sender: TObject);
begin
  Close;
end;

end.
