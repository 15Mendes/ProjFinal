unit CadastroUsuariosController;

interface

uses
  System.SysUtils, TCadastroUsuariosModel, CadastroUsuariosService;

type
  TCadastroUsuariosController = class
  private
    service: TCadastroUsuariosService;
  public
    constructor Create;
    destructor Destroy; override;
    function CadastrarUsuario(Usuario: TCUsuarios): Boolean;
  end;

implementation

{ TCadastroUsuariosController }

constructor TCadastroUsuariosController.Create;
begin
  inherited;
  service := TCadastroUsuariosService.Create;
end;

destructor TCadastroUsuariosController.Destroy;
begin
  service.Free;
  inherited;
end;

function TCadastroUsuariosController.CadastrarUsuario(Usuario: TCUsuarios): Boolean;
begin
  Result := service.Cadastrar(Usuario);
end;

end.
