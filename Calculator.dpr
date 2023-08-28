program Calculator;

uses
  Vcl.Forms,
  AppCalculator.View.Main in 'SRC\View\AppCalculator.View.Main.pas' {frmMain},
  AppCalculator.Model.Entity.Calculadora in 'SRC\Model\Entity\AppCalculator.Model.Entity.Calculadora.pas',
  AppCalculator.Model.Calculadora.Interfaces in 'SRC\Model\AppCalculator.Model.Calculadora.Interfaces.pas',
  AppCalculator.Model.Calculadora in 'SRC\Model\AppCalculator.Model.Calculadora.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
