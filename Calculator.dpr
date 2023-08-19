program Calculator;

uses
  Vcl.Forms,
  ufrmMain in 'View\ufrmMain.pas' {frmMain},
  uCalculadora.model in 'Model\uCalculadora.model.pas',
  uCalculadora.Controller.Interfaces in 'Controller\uCalculadora.Controller.Interfaces.pas',
  uCalculadora.Controller in 'Controller\uCalculadora.Controller.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
