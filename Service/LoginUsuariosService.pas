unit LoginUsuariosService;

interface

uses
  System.SysUtils, TLoginUsuariosModel, CadastroUsuariosRepository;

type
  TUsuarioService = class
  private
    FRepo: TCadastroUsuariosRepository;
  public
    constructor Create;
    destructor Destroy; override;

    // retorna um objeto TLUsuarios quando a autenticação for bem sucedida (ou nil)
    function Authenticate(const AUsername, APassword: string): TLUsuarios;

    // utilitário para criar usuário (opcional)
    procedure CreateUser(const AUsername, APassword: string);
  end;

implementation

{ TUsuarioService }

constructor TUsuarioService.Create;
begin
  inherited;
  FRepo := TCadastroUsuariosRepository.Create;
end;

destructor TUsuarioService.Destroy;
begin
  FRepo.Free;
  inherited;
end;

function TUsuarioService.Authenticate(const AUsername, APassword: string): TLUsuarios;
var
  u: TLUsuarios;
begin
  Result := nil;
  u := FRepo.GetByUsername(AUsername);
  if u = nil then
    Exit;

  if u.getSenha = APassword then
    Result := u
  else
    u.Free;
end;

procedure TUsuarioService.CreateUser(const AUsername, APassword: string);
var
  u: TLUsuarios;
begin
  u := TLUsuarios.Create;
  try
    u.setNome(AUsername);
    u.setSenha(APassword);
    FRepo.Inserir(u);
  finally
    u.Free;
  end;
end;

end.

