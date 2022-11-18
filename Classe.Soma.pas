unit Classe.Soma;

interface
 uses Classe.Operacao, Classe.Factory  ;
type
  TSoma = class(TOperacao)
  public
    function Efetuar: Integer; override;
    function EfetuarExt: Extended; override;
  end;

implementation


{ TSoma }

function TSoma.EfetuarExt: Extended;
begin
  Result := (A + B) * 1.0;
end;

function TSoma.Efetuar: Integer;
begin
  Result := A + B;
end;

initialization
  TFactory.Instance.RegisterClass('soma', TSoma);

end.
