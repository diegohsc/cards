program Project1;

uses
  Vcl.Forms,
  Calculadora.View.Principal in 'Calculadora.View.Principal.pas' {Form1},
  Classe.Calculadora in 'Classe.Calculadora.pas',
  Classe.Operacao in 'Classe.Operacao.pas',
  Classe.Factory in 'Classe.Factory.pas',
  Classe.Soma in 'Classe.Soma.pas',
  Classe.Subtracao in 'Classe.Subtracao.pas',
  Classe.Multiplicacao in 'Classe.Multiplicacao.pas',
  Classe.divisao in 'Classe.divisao.pas',
  Classe.Potencia in 'Classe.Potencia.pas',
  Classe.Helpers in 'Classe.Helpers.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
