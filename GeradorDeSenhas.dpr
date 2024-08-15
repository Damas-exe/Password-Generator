program GeradorDeSenhas;

uses
  Vcl.Forms,
  principal in 'principal.pas' {GeraSenha};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TGeraSenha, GeraSenha);
  Application.Run;
end.
