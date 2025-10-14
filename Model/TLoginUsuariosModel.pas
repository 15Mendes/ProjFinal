unit TLoginUsuariosModel;

interface

type
  TLUsuarios = class
  private
    FNome: string;
    FSenha: string;
  public
    // métodos compatíveis (você já tinha)
    function getNome: string;
    procedure setNome(const Value: string);
    function getSenha: string;
    procedure setSenha(const Value: string);

    // propriedades convenientes para usar no form
    property NomeCompleto: string read FNome write FNome;
    property Senha: string read FSenha write FSenha;
  end;

implementation

{ TLUsuarios }

function TLUsuarios.getNome: string;
begin
  Result := FNome;
end;

procedure TLUsuarios.setNome(const Value: string);
begin
  FNome := Value;
end;

function TLUsuarios.getSenha: string;
begin
  Result := FSenha;
end;

procedure TLUsuarios.setSenha(const Value: string);
begin
  FSenha := Value;
end;

end.

