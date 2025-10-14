unit uCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.Imaging.jpeg, Vcl.Menus, Vcl.ComCtrls, uPrincipal;

type

  TLogin = class
    private
    LNome, LSenha: string;

  end;

  TFLogin = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Image3: TImage;
    Image2: TImage;
    Image1: TImage;
    Panel4: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    ButtonEntrarLogin: TButton;
    EditSenhaLogin: TEdit;
    EditNomeLogin: TEdit;
    CheckBoxSenhaLogin: TCheckBox;
    procedure ButtonEntrarLoginClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CheckBoxSenhaLoginClick(Sender: TObject);
    procedure EditNomeLoginKeyPress(Sender: TObject; var Key: Char);
    procedure EditSenhaLoginKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLogin: TFLogin;

implementation

{$R *.dfm}

procedure TFLogin.ButtonEntrarLoginClick(Sender: TObject);
begin
  if (EditNomeLogin.Text = '') or (EditSenhaLogin.Text = '') then
  begin
    ShowMessage('Um dos campos está vazio.');
    Exit;
  end;

  if Self.WindowState = wsMaximized then
    Form1.WindowState := wsMaximized
  else
    Form1.WindowState := wsNormal;

  Self.Hide;
  Form1.Show;
end;

procedure TFLogin.CheckBoxSenhaLoginClick(Sender: TObject);
begin
  if CheckBoxSenhaLogin.Checked=true then begin
    EditSenhaLogin.PasswordChar:=#0;
  end else begin
    EditSenhaLogin.PasswordChar:='•';
  end;

end;

procedure TFLogin.EditNomeLoginKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
      EditSenhaLogin.SetFocus;
    end;
end;

procedure TFLogin.EditSenhaLoginKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then begin
     Key := #0;
     Perform(WM_NEXTDLGCTL, 0, 0);
     ButtonEntrarLogin.Click;
  end;
end;

procedure TFLogin.FormCreate(Sender: TObject);
begin
  if (WindowState = wsMinimized) then
    Image3.Width := 940
  else
    Image3.Width := 930;
end;

end.
