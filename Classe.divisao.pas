unit Classe.divisao;

interface
uses
  Classe.Operacao;

type
  TDivisao = class(TOperacao)
  public
    function Efetuar: Integer; override;
    function EfetuarExt: Extended; override;
  end;

implementation

uses
  Classe.Factory;

{ TDivisao }

function TDivisao.Efetuar: Integer;
begin
  Result := Trunc(A / B);
end;

function TDivisao.EfetuarExt: Extended;
begin
  Result := A / B;
end;

initialization
  TFactory.Instance.RegisterClass('divisao', TDivisao);

end.


