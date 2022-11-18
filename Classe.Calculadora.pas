unit Classe.Calculadora;

interface

type
  TSoma = class
  public
    function Soma(const A, B: Integer): Integer;
  end;

  TSubtracao = class
  public
    function Subtrai(const A, B: Integer): Integer;
  end;

  TMultiplicacao = class
  public
    function Multiplica(const A, B: Integer): Integer;
  end;

  TDivisao = class
  public
    function Divide(const A, B: Integer): Extended;
  end;

  TCalculadora = class
  strict private
    FSoma: TSoma;
    FSubtracao: TSubtracao;
    FMultiplicacao: TMultiplicacao;
    FDivisao: TDivisao;
  public
    constructor Create;
    destructor Destroy; override;
    function Soma(const A, B: Integer): Integer;
    function Subtrai(const A, B: Integer): Integer;
    function Multiplica(const A, B: Integer): Integer;
    function Divide(const A, B: Integer): Extended;
  end;

implementation

uses
  System.SysUtils;

{ TCalculadora }

constructor TCalculadora.Create;
begin
  FSoma := TSoma.Create;
  FSubtracao := TSubtracao.Create;
  FMultiplicacao := TMultiplicacao.Create;
  FDivisao := TDivisao.Create;
end;

destructor TCalculadora.Destroy;
begin
  FreeAndNil(FSoma);
  FreeAndNil(FSubtracao);
  FreeAndNil(FMultiplicacao);
  FreeAndNil(FDivisao);
  inherited;
end;

function TCalculadora.Divide(const A, B: Integer): Extended;
begin
  Result := FDivisao.Divide(A, B);
end;

function TCalculadora.Multiplica(const A, B: Integer): Integer;
begin
  Result := FMultiplicacao.Multiplica(A, B);
end;

function TCalculadora.Soma(const A, B: Integer): Integer;
begin
  Result := FSoma.Soma(A, B);
end;

function TCalculadora.Subtrai(const A, B: Integer): Integer;
begin
  Result := FSubtracao.Subtrai(A, B);
end;

{ TSoma }

function TSoma.Soma(const A, B: Integer): Integer;
begin
  Result := A + B;
end;

{ TSubtracao }

function TSubtracao.Subtrai(const A, B: Integer): Integer;
begin
  Result := A - B;
end;

{ TMultiplicacao }

function TMultiplicacao.Multiplica(const A, B: Integer): Integer;
begin
  Result := A * B;
end;

{ TDivisao }

function TDivisao.Divide(const A, B: Integer): Extended;
begin
  Result := A / B;
end;


end.
