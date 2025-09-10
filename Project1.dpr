program Project1;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {FLogin},
  Unit1 in 'Unit1.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFLogin, FLogin);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
