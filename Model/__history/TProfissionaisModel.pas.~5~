unit TProfissionaisModel;

interface

  type TProfissionais = Class
    private
      Nome: string;
      Cpf: string;
      Email: string;
      Contato: string;
    public
      function getNome: string;
      procedure setNome(pNome:string);
      function getCpf: string;
      procedure setCpf (pCpf:string);
      function getEmail: string;
      procedure setEmail(pEmail:string);
      function getContato: string;
      procedure setContato (pContato:string);
      constructor create (pNome, pCpf, pEmail, Pcontato: string);
  End;

implementation

{ TProfissionais }

constructor TProfissionais.create(pNome, pCpf, pEmail, Pcontato: string);
begin

end;

function TProfissionais.getContato: string;
begin
  Result:= self.Contato;
end;

function TProfissionais.getCpf: string;
begin
  Result:= self.Cpf;
end;

function TProfissionais.getEmail: string;
begin
  Result:= self.Email
end;

function TProfissionais.getNome: string;
begin
 Result:= self.Nome
end;

procedure TProfissionais.setContato(pContato: string);
begin
  self.Contato := pContato;
end;

procedure TProfissionais.setCpf(pCpf: string);
begin
  self.Cpf := pCpf;
end;

procedure TProfissionais.setEmail(pEmail: string);
begin
  self.Email:= pEmail;
end;

procedure TProfissionais.setNome(pNome: string);
begin
self.Nome:= pNome;
end;

end.
