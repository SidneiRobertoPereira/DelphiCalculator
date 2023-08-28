unit AppCalculator.View.Main;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.StdCtrls,
  AppCalculator.Model.Calculadora;

type
  TfrmMain = class(TForm)
    p_fundo: TPanel;
    edt_Result: TEdit;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    btn_Clear: TButton;
    Panel4: TPanel;
    Panel5: TPanel;
    btn_Dividir: TButton;
    btn_Multiplicar: TButton;
    btn_Subtrair: TButton;
    btn_Somar: TButton;
    btn_Resultado: TButton;
    btn_Oito: TButton;
    btn_Nove: TButton;
    btn_Sete: TButton;
    btn_Quatro: TButton;
    btn_Cinco: TButton;
    btn_Seis: TButton;
    btn_Hum: TButton;
    btn_Dois: TButton;
    btn_Tres: TButton;
    btn_zero: TButton;
    btn_Ponto: TButton;
    procedure btn_ClearClick(Sender: TObject);
    procedure btn_ResultadoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn_zeroClick(Sender: TObject);
    procedure btn_HumClick(Sender: TObject);
    procedure btn_DoisClick(Sender: TObject);
    procedure btn_TresClick(Sender: TObject);
    procedure btn_QuatroClick(Sender: TObject);
    procedure btn_CincoClick(Sender: TObject);
    procedure btn_SeisClick(Sender: TObject);
    procedure btn_SeteClick(Sender: TObject);
    procedure btn_OitoClick(Sender: TObject);
    procedure btn_NoveClick(Sender: TObject);
    procedure btn_DividirClick(Sender: TObject);
    procedure btn_MultiplicarClick(Sender: TObject);
    procedure btn_SubtrairClick(Sender: TObject);
    procedure btn_SomarClick(Sender: TObject);
    procedure btn_PontoClick(Sender: TObject);
  private
    { A vari�vel FOperador guarda a fun��o matem�tica que ser� usada para o
      calculo }
    FOperador: integer;

    FVlOperador: string; //A vari�vel FVlOperador concatena os n�meros digitados
    FVlOpL: string; //guarda os digitos antes da fun��o
    FVlOpR: string; //guarda os digitos ap�s a fun��o

    { A vari�vel FMontaFuncao ir� guardar toda a opera��o digitada e exibir
      no cabe�alho do frmMain }
    FMontaFuncao: string;

    procedure ExibeFuncaoCaption(aValue: string);
    procedure ConcatenaValorOperador(aValue: string);

  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}


procedure TfrmMain.btn_ClearClick(Sender: TObject);
begin
  FMontaFuncao := '';
  FVlOperador  := '';
  frmMain.Caption := '[ Calculator ]';
  FVlOpL := '';
  FVlOpR := '';
  FOperador := 0;
  edt_Result.Clear;
  edt_Result.SetFocus;
end;

procedure TfrmMain.btn_HumClick(Sender: TObject);
begin
  ConcatenaValorOperador('1');
  ExibeFuncaoCaption('1');
end;

procedure TfrmMain.btn_MultiplicarClick(Sender: TObject);
begin
  FOperador := 2; //Multiplica��o
  ExibeFuncaoCaption('*');
  FVlOpL := FVlOperador; //Guardando o valor antes do sinal
  FVlOperador := '';
end;

procedure TfrmMain.btn_NoveClick(Sender: TObject);
begin
  ConcatenaValorOperador('9');
  ExibeFuncaoCaption('9');
end;

procedure TfrmMain.btn_OitoClick(Sender: TObject);
begin
  ConcatenaValorOperador('8');
  ExibeFuncaoCaption('8');
end;

procedure TfrmMain.btn_PontoClick(Sender: TObject);
begin
  ConcatenaValorOperador(',');
  ExibeFuncaoCaption(',');
end;

procedure TfrmMain.btn_QuatroClick(Sender: TObject);
begin
  ConcatenaValorOperador('4');
  ExibeFuncaoCaption('4');
end;

procedure TfrmMain.btn_ResultadoClick(Sender: TObject);
begin
  {
    Ap�s o usu�rio clicar em uma fun��o matem�tica a Var:FVlOperador � limpa
    para permitir guardar o sengudo valor para o c�lculo
    FvlOpL recebe portanto o conte�do de FVlOperador antes de limpar a vari�vel
  }
  FVlOpR := FVlOperador; //Neste momento FVlOperador contem a 2� parte da expres�o

  edt_Result.Clear;

  {
    Como estou usando uma fun��o class function na constru��o da classe,
    n�o preciso instanciar a mesma, basta declarar ".New"
  }

  case FOperador of
    1: begin

       edt_Result.Text :=
        TCalculadoraController
         .New
         .ThisOperatorL(FVlOpL)
         .ThisOperatorR(FVlOpR)
         .OpDividir;

    end;
    2: begin

       edt_Result.Text :=
        TCalculadoraController
         .New
         .ThisOperatorL(FVlOpL)
         .ThisOperatorR(FVlOpR)
         .OpMultiplicar;

    end;
    3: begin

       edt_Result.Text :=
        TCalculadoraController
         .New
         .ThisOperatorL(FVlOpL)
         .ThisOperatorR(FVlOpR)
         .OpSubtrair;

    end;
    4: begin

       edt_Result.Text :=
        TCalculadoraController
         .New
         .ThisOperatorL(FVlOpL)
         .ThisOperatorR(FVlOpR)
         .OpSomar;

    end;
  end;

end;

procedure TfrmMain.btn_SeisClick(Sender: TObject);
begin
  ConcatenaValorOperador('6');
  ExibeFuncaoCaption('6');
end;

procedure TfrmMain.btn_SeteClick(Sender: TObject);
begin
  ConcatenaValorOperador('7');
  ExibeFuncaoCaption('7');
end;

procedure TfrmMain.btn_SomarClick(Sender: TObject);
begin
  FOperador := 4; //Soma
  ExibeFuncaoCaption('+');
  FVlOpL := FVlOperador; //Guardando o valor antes do sinal
  FVlOperador := '';
end;

procedure TfrmMain.btn_SubtrairClick(Sender: TObject);
begin
  FOperador := 3; //Subtra��o
  ExibeFuncaoCaption('-');
  FVlOpL := FVlOperador; //Guardando o valor antes do sinal
  FVlOperador := '';
end;

procedure TfrmMain.btn_TresClick(Sender: TObject);
begin
  ConcatenaValorOperador('3');
  ExibeFuncaoCaption('3');
end;

procedure TfrmMain.btn_zeroClick(Sender: TObject);
begin
  ConcatenaValorOperador('0');
  ExibeFuncaoCaption('0');
end;

procedure TfrmMain.ConcatenaValorOperador(aValue: string);
begin
  FVlOperador := FVlOperador + aValue;
end;

procedure TfrmMain.ExibeFuncaoCaption(aValue: string);
begin
  FMontaFuncao := FMontaFuncao + aValue;
  frmMain.Caption := FMontaFuncao;
end;

procedure TfrmMain.btn_DividirClick(Sender: TObject);
begin
  FOperador := 1; //Divis�o
  ExibeFuncaoCaption('/');
  FVlOpL := FVlOperador; //Guardando o valor antes do sinal
  FVlOperador := '';
end;

procedure TfrmMain.btn_DoisClick(Sender: TObject);
begin
  ConcatenaValorOperador('2');
  ExibeFuncaoCaption('2');
end;

procedure TfrmMain.btn_CincoClick(Sender: TObject);
begin
  ConcatenaValorOperador('5');
  ExibeFuncaoCaption('5');
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  FOperador:= 0;
  FVlOpL:='';
  FVlOpR:='';
  FMontaFuncao:='';
  FVlOperador:='';
end;

end.
