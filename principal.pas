unit principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Samples.Spin, Vcl.StdCtrls;

type
  TGeraSenha = class(TForm)
    Button1: TButton;
    edtSenha: TEdit;
    SpinEdit1: TSpinEdit;
    LChar: TLabel;
    ckMaisculas: TCheckBox;
    ckMinusculas: TCheckBox;
    ckNumeros: TCheckBox;
    ckCaracteres: TCheckBox;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  GeraSenha: TGeraSenha;

implementation

{$R *.dfm}



// ********************************************************************************************************************************

procedure TGeraSenha.Button1Click(Sender: TObject);
var
  i, vMax : Integer;
  vAdd  : TStringBuilder;
  vSenha : String;

  const
    cLetrasMaisculas = 'QWERTYUIOPASDFGHJKLZXCVBNM';
    cLetrasMinusculas = 'qwertyuiopasdfghjklzxcvbnm';
    cNumeros = '1234567890';
    cCaracteres = '!@#$%^&*()-+';

begin
     if not (ckMaisculas.Checked) and
     not (ckMinusculas.Checked) and
     not (ckNumeros.Checked) and
     not (ckCaracteres.Checked) then
     begin
       MessageDlg('Selecione ao menos uma opção', TMsgDlgType.mtWarning, [TMsgDlgBtn.mbOK], 0);
       exit;
     end;

     if SpinEdit1.Value = 0 then
     begin
       MessageDlg('Selecione a quantidade de caracteres', TMsgDlgType.mtWarning, [TMsgDlgBtn.mbOK], 0);
     end;

     vAdd := TStringBuilder.Create('');
     try
      if ckMaisculas.Checked then
        vAdd.Append(cLetrasMaisculas);

      if ckMinusculas.Checked then
        vAdd.Append(cLetrasMinusculas);

      if ckNumeros.Checked then
        vAdd.Append(cNumeros);

      if ckCaracteres.Checked then
        vAdd.Append(cCaracteres);

      vSenha := vAdd.ToString;

      vMax := SpinEdit1.Value;
      edtSenha.Text := '';
      for i := 1 to vMax do
        begin
          edtSenha.Text := edtSenha.Text + vSenha[Random(Length(vSenha)) + 1];
        end;

     finally
        FreeAndNil(vAdd);
     end;
end;

procedure TGeraSenha.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    if Application.MessageBox('Deseja Realmente Sair do Programa?', 'Sair do Programa', MB_ICONQUESTION or MB_YESNO) = IDYES then
      close;
end;

end.
