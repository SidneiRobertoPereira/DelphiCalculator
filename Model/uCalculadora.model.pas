unit uCalculadora.model;

interface

uses System.Sysutils;

type TCalculadoraModel = class(Tobject)
  private
    FOperadorL: Double;
    FOperadorR: Double;
    FResultado: Double;
    FDisplay: string;
    FOP_Soma: string;
    FOP_Subtracao: string;
    FOP_Divisao: string;
    FOP_Multiplicacao: string;

  public
    constructor Create;
    property OperadorL: Double read FOperadorL write FOperadorL;
    property OperadorR: Double read FOperadorR write FOperadorR;
    property Resultado: Double read FResultado write FResultado;
    property Display: string read FDisplay write FDisplay;
    property OP_Soma: string read FOP_Soma write FOP_Soma;
    property OP_Subtracao: string read FOP_Subtracao write FOP_Subtracao;
    property OP_Divisao: string read FOP_Divisao write FOP_Divisao;
    property OP_Multiplicacao: string read FOP_Multiplicacao write FOP_Multiplicacao;

end;

implementation

{ TCalculadoraModel }

constructor TCalculadoraModel.Create;
begin
    FOperadorL := 0;
    FOperadorR := 0;
    FResultado := 0;
    FDisplay := '';
    FOP_Soma := '';
    FOP_Subtracao := '';
    FOP_Divisao := '';
    FOP_Multiplicacao := '';
end;

end.
