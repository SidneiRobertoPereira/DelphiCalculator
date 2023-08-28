unit AppCalculator.Model.Calculadora;

interface

uses
  System.classes,
  System.Sysutils,
  generics.defaults,
  generics.collections,
  AppCalculator.Model.Calculadora.Interfaces;


type
  TCalculadoraController = Class(TInterfacedObject, iCalculadora)
  private
    FResult: string;
    FResultNumber: Double;
    FOperatorL: double;
    FOperatorR: double;

  public
    class function New: iCalculadora;
    constructor Create;
    destructor Destroy; override;

    function OpSomar : string;
    function OpSubtrair : string;
    function OpDividir : string;
    function OpMultiplicar: string;
    function ThisOperatorL( aValue: string): iCalculadora;
    function ThisOperatorR( aValue: string): iCalculadora;

end;

implementation

{ TCalculadoraController }


constructor TCalculadoraController.Create;
begin
  FResult := '';
  FResultNumber := 0;
  FOperatorL := 0;
  FOperatorR := 0;
end;

destructor TCalculadoraController.Destroy;
begin
  inherited;

end;

class function TCalculadoraController.New: iCalculadora;
begin
  result := Self.Create;
end;

function TCalculadoraController.OpDividir: string;
begin
  FResultNumber := FOperatorL / FOperatorR;
  Result := FloatToStr( FResultNumber );
end;

function TCalculadoraController.OpMultiplicar: string;
begin
  FResultNumber := FOperatorL * FOperatorR;
  Result := FloatToStr( FResultNumber );
end;

function TCalculadoraController.OpSomar: string;
begin
  FResultNumber := FOperatorL + FOperatorR;
  Result := FloatToStr( FResultNumber );
end;

function TCalculadoraController.OpSubtrair: string;
begin
  FResultNumber := FOperatorL - FOperatorR;
  Result := FloatToStr( FResultNumber );
end;

function TCalculadoraController.ThisOperatorL(aValue: string): iCalculadora;
begin
  result := Self;
  FOperatorL := StrToFloat(aValue);
end;

function TCalculadoraController.ThisOperatorR(aValue: string): iCalculadora;
begin
  result := Self;
  FOperatorR := StrToFloat(aValue);
end;

end.
