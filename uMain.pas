unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.Imaging.jpeg, Vcl.Menus, Vcl.ComCtrls, Unit1;

type
  TFLogin = class(TForm)
    Panel1: TPanel;
    Edit1: TEdit;
    Label1: TLabel;
    Panel2: TPanel;
    Edit2: TEdit;
    Panel3: TPanel;
    Image3: TImage;
    Image2: TImage;
    Image1: TImage;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLogin: TFLogin;

implementation

{$R *.dfm}


procedure TFLogin.Button1Click(Sender: TObject);
begin

   If (windowstate = wsmaximized) then begin
    Self.Hide;
    FLogin.WindowState := wsmaximized;
    Form1.show;
   end else begin
    Self.Hide;
    FLogin.WindowState := wsnormal;
    Form1.show;
   end;

end;

procedure TFLogin.FormCreate(Sender: TObject);
  begin
    if (windowstate = wsMinimized ) then begin
    image3.Width := 940;
    end else begin
    image3.Width := 930;
    end;
  end;
end.
