unit Calculadora.View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Classe.Helpers;

type
  TForm1 = class(TForm)
    edtA: TEdit;
    edtB: TEdit;
    cbxOperacao: TComboBox;
    lblResultadoInteiro: TLabel;
    lblResultadoFlutuante: TLabel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  Classe.Factory, Classe.Operacao;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  strOperacao: string;
  objOperacao: TOperacao;
begin
  strOperacao := cbxOperacao.Text;

  if strOperacao = EmptyStr then
  begin
    ShowMessage('Selecione uma operação!');
    Exit;
  end;

  objOperacao := TFactory.Instance.GetOperacao(strOperacao);
  objOperacao.A := edtA.Text.asInteger;
  objOperacao.B := edtB.Text.asInteger;
  lblResultadoInteiro.Caption := objOperacao.Efetuar.ToString;
  lblResultadoFlutuante.Caption := objOperacao.EfetuarExt.ToString;
  FreeAndNil(objOperacao);

end;

procedure TForm1.FormCreate(Sender: TObject);
var
  bufOperacoes: TArray<string>;
  i: Integer;
begin
  edtA.Text:='';
  edtB.Clear;
  bufOperacoes := TFactory.Instance.Operacoes.Keys.ToArray;
  cbxOperacao.Items.Clear;

  for i := 0 to Pred(Length(bufOperacoes)) do
  begin
    cbxOperacao.Items.Add(bufOperacoes[i]);
  end;
end;

end.
