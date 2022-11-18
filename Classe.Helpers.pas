unit Classe.Helpers;

interface

uses
 System.SysUtils, Vcl.Controls;
type
  TNewClassHelper = record helper for TCaption
    function asCurrency: Currency;
  end;
  TNewClassHelperInteger = record helper for TCaption
    function asInteger:integer;
  end;


implementation

{ TNewClassHelper }

function TNewClassHelper.asCurrency: Currency;
begin
  Result:=  strtocurr(Self);
end;

{ TNewClassHelperInteger }

function TNewClassHelperInteger.asInteger: integer;
begin
  Result:= StrToIntDef(Self,0);
end;

end.
