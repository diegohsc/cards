unit Classe.Operacao;

interface

type
  TOperacao = class abstract
  strict private
    FB: Integer;
    FA: Integer;
    procedure SetA(const Value: Integer);
    procedure SetB(const Value: Integer);
  public
    constructor Create; virtual;
    function Efetuar: Integer; virtual; abstract;
    function EfetuarExt: Extended; virtual; abstract;
    property A: Integer read FA write SetA;
    property B: Integer read FB write SetB;
  end;

TOperacaoClass = class of TOperacao;

implementation

{ TOperacao }

constructor TOperacao.Create;
begin
  FA := 0;
  FB := 0;
end;

procedure TOperacao.SetA(const Value: Integer);
begin
  if FA = Value then
  begin
    Exit;
  end;

  FA := Value;
end;

procedure TOperacao.SetB(const Value: Integer);
begin
  if FB = Value then
  begin
    Exit;
  end;

  FB := Value;
end;


end.
