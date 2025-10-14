unit uCadastroUsuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.Mask, uLoginUsuarios, TCadastroUsuariosModel,
  CadastroUsuariosController;
;

type
  TForm2 = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    Image3: TImage;
    Image2: TImage;
    Image1: TImage;
    Panel2: TPanel;
    Label1: TLabel;
    Panel4: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    EditSenhaCadastro: TEdit;
    EditNomeCadastro: TEdit;
    CheckBoxSenhaCadastro: TCheckBox;
    Label2: TLabel;
    EditEmailCadastro: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    editContatoCadastro: TMaskEdit;
    editCpfCadastro: TMaskEdit;
    Panel5: TPanel;
    ButtonLimparCadastro: TButton;
    ButtonFinalizarCadastro: TButton;
    procedure ButtonFinalizarCadastroClick(Sender: TObject);
    procedure ButtonLimparCadastroClick(Sender: TObject);
    procedure EditNomeCadastroKeyPress(Sender: TObject; var Key: Char);
    procedure editContatoCadastroKeyPress(Sender: TObject; var Key: Char);
    procedure editCpfCadastroKeyPress(Sender: TObject; var Key: Char);
    procedure EditEmailCadastroKeyPress(Sender: TObject; var Key: Char);
    procedure EditSenhaCadastroKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}
uses
  uLoginUsuarios;

procedure TForm2.ButtonFinalizarCadastroClick(Sender: TObject);
var
  usuario: TCadastroUsuario;
  controller: TCadastroUsuarioController;
begin
  usuario := TCadastroUsuario.Create;
  controller := TCadastroUsuarioController.Create;
  try
    usuario.setNome(EditNomeCadastro.Text);
    usuario.setSenha(EditSenhaCadastro.Text);
    usuario.setEmail(EditEmailCadastro.Text);
    usuario.setContato(editContatoCadastro.Text);
    usuario.setCpf(editCpfCadastro.Text);

    if controller.CadastrarUsuario(usuario) then
    begin
      ShowMessage('Usuário cadastrado com sucesso!');
      Self.Hide;
      FLogin.Show;
      FLogin.EditNomeLogin.SetFocus;
    end
    else
      ShowMessage('Falha ao cadastrar usuário.');
  finally
    usuario.Free;
    controller.Free;
  end;
end;

procedure TForm2.ButtonLimparCadastroClick(Sender: TObject);
begin
  EditNomeCadastro.Clear;
  EditCpfCadastro.Clear;
  EditContatoCadastro.Clear;
  EditEmailCadastro.Clear;
  EditSenhaCadastro.Clear;
  EditNomeCadastro.SetFocus;
end;

procedure TForm2.editContatoCadastroKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then begin
     Key := #0;
     Perform(WM_NEXTDLGCTL, 0, 0);
     EditEmailCadastro.SetFocus;
  end;
end;

procedure TForm2.editCpfCadastroKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then begin
     Key := #0;
     Perform(WM_NEXTDLGCTL, 0, 0);
     editContatoCadastro.SetFocus;
  end;
end;

procedure TForm2.EditEmailCadastroKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then begin
     Key := #0;
     Perform(WM_NEXTDLGCTL, 0, 0);
     EditSenhaCadastro.SetFocus;
  end;
end;

procedure TForm2.EditNomeCadastroKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then begin
     Key := #0;
     Perform(WM_NEXTDLGCTL, 0, 0);
     editCpfCadastro.SetFocus;
  end;
end;

procedure TForm2.EditSenhaCadastroKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then begin
     Key := #0;
     Perform(WM_NEXTDLGCTL, 0, 0);
     ButtonFinalizarCadastro.Click;
  end;
end;
end.
