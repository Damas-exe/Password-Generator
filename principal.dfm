object GeraSenha: TGeraSenha
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Gerador de Senhas'
  ClientHeight = 304
  ClientWidth = 425
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  Position = poMainFormCenter
  OnKeyDown = FormKeyDown
  TextHeight = 17
  object LChar: TLabel
    Left = 285
    Top = 82
    Width = 62
    Height = 17
    Caption = 'Caracteres'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Button1: TButton
    AlignWithMargins = True
    Left = 25
    Top = 246
    Width = 375
    Height = 28
    Margins.Left = 25
    Margins.Top = 30
    Margins.Right = 25
    Margins.Bottom = 30
    Align = alBottom
    Caption = 'Gerar Senha'
    TabOrder = 0
    OnClick = Button1Click
    ExplicitTop = 251
    ExplicitWidth = 394
  end
  object edtSenha: TEdit
    Left = 25
    Top = 48
    Width = 375
    Height = 25
    TabOrder = 1
  end
  object SpinEdit1: TSpinEdit
    Left = 353
    Top = 79
    Width = 47
    Height = 27
    MaxValue = 0
    MinValue = 0
    TabOrder = 2
    Value = 0
  end
  object ckMaisculas: TCheckBox
    Left = 25
    Top = 113
    Width = 120
    Height = 17
    Caption = ' Letras Maisculas'
    TabOrder = 3
  end
  object ckMinusculas: TCheckBox
    Left = 25
    Top = 136
    Width = 128
    Height = 17
    Caption = 'Letras Minusculas'
    TabOrder = 4
  end
  object ckNumeros: TCheckBox
    Left = 25
    Top = 159
    Width = 88
    Height = 17
    Caption = 'Numeros'
    TabOrder = 5
  end
  object ckCaracteres: TCheckBox
    Left = 25
    Top = 183
    Width = 168
    Height = 17
    Caption = 'Caracteres (!@#$%^&*()-+)'
    TabOrder = 6
  end
end
