unit AppCalculator.Model.Calculadora.Interfaces;

interface

uses
  System.Sysutils,
  generics.defaults,
  generics.collections;

type iCalculadora = interface
  ['{82736971-33A2-4687-8490-692DE2CE891F}']

  function OpSomar : string;
  function OpSubtrair : string;
  function OpDividir : string;
  function OpMultiplicar: string;

  function ThisOperatorL( aValue: string): iCalculadora;
  function ThisOperatorR( aValue: string): iCalculadora;

end;


implementation

end.
