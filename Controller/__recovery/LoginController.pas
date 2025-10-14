unit LoginController;

interface

uses
  System.SysUtils, TLoginUsuariosModel, UsuariosService;

type
  TLoginController = class
  private
    FService: TUsuarioService;
  public
    constructor Create;
    destructor Destroy; override;


    function RealizarLogin(AUser: TLUsuarios): Boolean;
  end;

implementation

{ TLoginController }

constructor TLoginController.Create;
begin
  inherited;
  FService := TUsuarioService.Create;
end;

destructor TLoginController.Destroy;
begin
  FService.Free;
  inherited;
end;

function TLoginController.RealizarLogin(AUser: TLUsuarios): Boolean;
var
  UsuarioDB: TLUsuarios;
begin
  Result := False;
  UsuarioDB := FService.Authenticate(AUser.NomeCompleto, AUser.Senha);
  if UsuarioDB <> nil then
  begin
    Result := True;
    UsuarioDB.Free;
  end;
end;

end.
