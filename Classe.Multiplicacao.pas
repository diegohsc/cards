unit Classe.Multiplicacao;

interface

uses
  Classe.Operacao;

type
  TMultiplicacao = class(TOperacao)
  public
    function Efetuar: Integer; override;
    function EfetuarExt: Extended; override;
  end;

implementation

uses
  Classe.Factory;

{ TMultiplicacao }

function TMultiplicacao.Efetuar: Integer;
begin
  Result := A * B;
end;

function TMultiplicacao.EfetuarExt: Extended;
begin
  Result := A * B * 1.0;
end;

initialization
  TFactory.Instance.RegisterClass('multiplicacao', TMultiplicacao);

end.
