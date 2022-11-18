unit Classe.Potencia;

interface

uses
  Classe.Operacao;

type
  TPotencia = class(TOperacao)
  public
    function Efetuar: Integer; override;
    function EfetuarExt: Extended; override;
  end;

implementation

uses
  Classe.Factory, System.Math;

{ TPotencia }

function TPotencia.EfetuarExt: Extended;
begin
  Result := Power(A, B);
end;

function TPotencia.Efetuar: Integer;
begin
  Result := Trunc(Power(A, B));
end;

initialization
  TFactory.Instance.RegisterClass('potencia', TPotencia);

end.
