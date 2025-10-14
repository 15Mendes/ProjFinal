unit CadastroUsuariosService;

interface

uses
  System.SysUtils, System.Classes, TCadastroUsuariosModel, CadastroUsuariosRepository,
  System.Hash;

type
  TCadastroUsuariosService = class
  private
    repository: TCadastroUsuariosRepository;
    function GerarHashSenha(const Senha: string): string;
  public
    constructor Create;
    destructor Destroy; override;
    function Cadastrar(Usuario: TCUsuarios): Boolean;
  end;

implementation

{ TCadastroUsuariosService }

constructor TCadastroUsuariosService.Create;
begin
  inherited;
  repository := TCadastroUsuariosRepository.Create;
end;

destructor TCadastroUsuariosService.Destroy;
begin
  repository.Free;
  inherited;
end;

function TCadastroUsuariosService.GerarHashSenha(const Senha: string): string;
begin
  Result := THashSHA2.GetHashString(Senha); // Gera SHA-256
end;

function TCadastroUsuariosService.Cadastrar(Usuario: TCUsuarios): Boolean;
begin
  Result := False;
  try
    if (Trim(Usuario.getNome) = '') or (Trim(Usuario.getSenha) = '') or
       (Trim(Usuario.getEmail) = '') or (Trim(Usuario.getCpf) = '') then
      raise Exception.Create('Preencha todos os campos obrigatórios.');

    // Criptografar senha
    Usuario.setSenha(GerarHashSenha(Usuario.getSenha));

    // Chama o repository
    Result := repository.InserirUsuarios(Usuario);
  except
    on E: Exception do
      raise Exception.Create('Erro ao cadastrar usuário: ' + E.Message);
  end;
end;

end.

