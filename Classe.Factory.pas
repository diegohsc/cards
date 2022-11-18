unit Classe.Factory;

interface
uses
  System.Generics.Collections, Classe.Operacao;

type
  TFactory = class
  strict private
    FDictionary: TObjectDictionary<string, TOperacaoClass>;
  public
    constructor Create;
    destructor Destroy;
    class function Instance: TFactory;
    procedure RegisterClass(const AKey: string; const AClass: TOperacaoClass);
    function GetOperacao(const AKey: string): TOperacao;
    property Operacoes: TObjectDictionary<string, TOperacaoClass>  read FDictionary;
  end;

implementation

uses
  System.SysUtils;

var
  FFactory: TFactory;

{ TFactory }

constructor TFactory.Create;
begin
  FDictionary := TObjectDictionary<string, TOperacaoClass>.Create;
end;

destructor TFactory.Destroy;
begin
  FreeAndNil(FDictionary);
end;

function TFactory.GetOperacao(const AKey: string): TOperacao;
var
  classOperacao: TOperacaoClass;
begin
  Result := nil;

  if not (FDictionary.TryGetValue(AKey, classOperacao) and Assigned(classOperacao)) then
  begin
    Exit;
  end;

  Result := classOperacao.Create;
end;

class function TFactory.Instance: TFactory;
begin
  if not Assigned(FFactory) then
  begin
    FFactory := TFactory.Create;
  end;

  Result := FFactory;
end;

procedure TFactory.RegisterClass(const AKey: string; const AClass: TOperacaoClass);
begin
  if FDictionary.ContainsKey(AKey) then
  begin
    Exit;
  end;

  FDictionary.Add(AKey, AClass);
end;

initialization
  FFactory := nil;

finalization
  FreeAndNil(FFactory);
end.
