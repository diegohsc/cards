unit Classe.Subtracao;

interface
uses
  Classe.Factory, Classe.Operacao;

type
  TSubtracao = class(TOperacao)
  public
    function Efetuar: Integer; override;
    function EfetuarExt: Extended; override;
  end;

implementation



{ TSubtracao }

function TSubtracao.Efetuar: Integer;
begin
  Result := A - B;
end;

function TSubtracao.EfetuarExt: Extended;
begin
  Result := (A - B) * 1.0;
end;

initialization
  TFactory.Instance.RegisterClass('subtracao', TSubtracao);


end.
