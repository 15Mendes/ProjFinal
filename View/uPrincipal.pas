unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.Grids, Vcl.Buttons, Vcl.NumberBox, Vcl.Mask,
  Vcl.WinXPanels;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    Image2: TImage;
    PageControl1: TPageControl;
    TabSheet7: TTabSheet;
    TabSheet1: TTabSheet;
    Panel2: TPanel;
    TabSheet2: TTabSheet;
    Panel18: TPanel;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet6: TTabSheet;
    Panel19: TPanel;
    Panel4: TPanel;
    Panel8: TPanel;
    PageControl6: TPageControl;
    TabSheet15: TTabSheet;
    TabSheet16: TTabSheet;
    PanelMenuAt: TPanel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label10: TLabel;
    buttonAdicionarPacienteAt: TSpeedButton;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    ButtonSalvarAt: TSpeedButton;
    ButtonLimparAt: TSpeedButton;
    ButtonListarAt: TSpeedButton;
    Label9: TLabel;
    editNomeAt: TEdit;
    ComboBoxConvenioAt: TComboBox;
    ComboBoxEspecialidadeAt: TComboBox;
    ComboBoxProfissionalAt: TComboBox;
    DateTimeAt: TDateTimePicker;
    NumberBoxSessoesAt: TNumberBox;
    NumberBoxTotalAt: TNumberBox;
    NumberBoxDescontoAt: TNumberBox;
    editContatoAt: TMaskEdit;
    editCpfAt: TMaskEdit;
    Panel7: TPanel;
    StringGrid5: TStringGrid;
    ButtonVoltarAt: TSpeedButton;
    Panel10: TPanel;
    PageControl2Prof: TPageControl;
    TabSheet5: TTabSheet;
    PanelMenuProf: TPanel;
    Label4: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label29: TLabel;
    Label3: TLabel;
    ButtonSalvarProf: TSpeedButton;
    ButtonLimparProf: TSpeedButton;
    Bevel1: TBevel;
    Bevel2: TBevel;
    ButtonListarProf: TSpeedButton;
    editNomeProf: TEdit;
    DateTimeProf: TDateTimePicker;
    NumberBoxComissaoProf: TNumberBox;
    ComboBoxEspecialidadeProf: TComboBox;
    editEmailProf: TEdit;
    editCpfProf: TMaskEdit;
    editContatoProf: TMaskEdit;
    TabSheet8: TTabSheet;
    PanelMenuListaProf: TPanel;
    ButtonVoltarProf: TSpeedButton;
    StringGrid1: TStringGrid;
    Panel6: TPanel;
    ButtonCadastroProf: TSpeedButton;
    ButtonEditarProf: TSpeedButton;
    ButtonExcluirProf: TSpeedButton;
    Panel11: TPanel;
    PageControl3: TPageControl;
    TabSheet9: TTabSheet;
    PanelMenuPaci: TPanel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    ButtonListarPaci: TSpeedButton;
    ButtonSalvarPaci: TSpeedButton;
    ButtonLimparPaci: TSpeedButton;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Label33: TLabel;
    editNomePaci: TEdit;
    DateTimePaci: TDateTimePicker;
    editEmailPaci: TEdit;
    DateTimeNascimentoPaci: TDateTimePicker;
    editCpfPaci: TMaskEdit;
    editContatoPaci: TMaskEdit;
    TabSheet10: TTabSheet;
    PanelMenuListaPaci: TPanel;
    ButtonVoltarPaci: TSpeedButton;
    StringGrid2: TStringGrid;
    Panel3: TPanel;
    ButtonCadastroPaci: TSpeedButton;
    ButtonEditarPaci: TSpeedButton;
    ButtonExcluirPaci: TSpeedButton;
    Panel12: TPanel;
    PageControl4: TPageControl;
    TabSheet11: TTabSheet;
    PanelMenuConv: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    ButtonListarConv: TSpeedButton;
    ButtonSalvarConv: TSpeedButton;
    ButtonLimparConv: TSpeedButton;
    Bevel5: TBevel;
    Bevel6: TBevel;
    Label40: TLabel;
    editNomeConv: TEdit;
    DateTimeConv: TDateTimePicker;
    editEmailConv: TEdit;
    NumberBoxCoberturaConv: TNumberBox;
    editCnpjConv: TMaskEdit;
    editContatoConv: TMaskEdit;
    TabSheet12: TTabSheet;
    PanelMenuListaConv: TPanel;
    ButtonVoltarConv: TSpeedButton;
    StringGrid3: TStringGrid;
    Panel5: TPanel;
    ButtonCadastroConv: TSpeedButton;
    ButtonEditarConv: TSpeedButton;
    ButtonExcluirConv: TSpeedButton;
    Panel13: TPanel;
    PageControl5: TPageControl;
    TabSheet13: TTabSheet;
    PanelMenuEspe: TPanel;
    Label7: TLabel;
    Label43: TLabel;
    ButtonListarEspe: TSpeedButton;
    ButtonSalvarEspe: TSpeedButton;
    ButtonLimparEspe: TSpeedButton;
    Bevel7: TBevel;
    Bevel8: TBevel;
    Label5: TLabel;
    Label8: TLabel;
    Label41: TLabel;
    editNomeEspe: TEdit;
    NumberBoxDuracaoEspe: TNumberBox;
    NumberBoxValorEspe: TNumberBox;
    editDescricaoEspe: TEdit;
    TabSheet14: TTabSheet;
    PanelMenuListaEspe: TPanel;
    ButtonVoltarEspe: TSpeedButton;
    StringGrid4: TStringGrid;
    Panel9: TPanel;
    ButtonCadastroEspe: TSpeedButton;
    ButtonEditarEspe: TSpeedButton;
    ButtonExcluirEspe: TSpeedButton;
    procedure PageControl1DrawTab(Control: TCustomTabControl; TabIndex: Integer;
    const Rect: TRect; Active: Boolean);
    procedure buttonAdicionarPacienteAtClick(Sender: TObject);
    procedure editContatoAtEnter(Sender: TObject);
    procedure ButtonEditarProfClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ButtonCadastroProfClick(Sender: TObject);
    procedure ButtonListarAtClick(Sender: TObject);
    procedure ButtonListarProfClick(Sender: TObject);
    procedure ButtonListarPaciClick(Sender: TObject);
    procedure ButtonListarConvClick(Sender: TObject);
    procedure ButtonListarEspeClick(Sender: TObject);
    procedure ButtonCadastroEspeClick(Sender: TObject);
    procedure ButtonCadastroConvClick(Sender: TObject);
    procedure ButtonCadastroPaciClick(Sender: TObject);
    procedure ButtonVoltarAtClick(Sender: TObject);
    procedure ExecutarAcao(Acao: string; TabControl: TPageControl; TabCadastro, TabCrud: TTabSheet; Grid: TStringGrid);
    procedure ButtonExcluirProfClick(Sender: TObject);
    procedure ButtonVoltarPaciClick(Sender: TObject);
    procedure ButtonEditarPaciClick(Sender: TObject);
    procedure ButtonExcluirPaciClick(Sender: TObject);
    procedure ButtonSalvarPaciClick(Sender: TObject);
    procedure ButtonLimparPaciClick(Sender: TObject);
    procedure ButtonVoltarProfClick(Sender: TObject);
    procedure ButtonLimparProfClick(Sender: TObject);
    procedure ButtonSalvarProfClick(Sender: TObject);
    procedure ButtonEditarConvClick(Sender: TObject);
    procedure ButtonExcluirConvClick(Sender: TObject);
    procedure ButtonSalvarConvClick(Sender: TObject);
    procedure ButtonLimparConvClick(Sender: TObject);
    procedure ButtonVoltarConvClick(Sender: TObject);
    procedure ButtonEditarEspeClick(Sender: TObject);
    procedure ButtonExcluirEspeClick(Sender: TObject);
    procedure ButtonSalvarEspeClick(Sender: TObject);
    procedure ButtonLimparEspeClick(Sender: TObject);
    procedure ButtonVoltarEspeClick(Sender: TObject);
    procedure ButtonSalvarAtClick(Sender: TObject);
    procedure ButtonLimparAtClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TabSheet2Enter(Sender: TObject);
    procedure Label5Click(Sender: TObject);
      private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
 StringGrid1.Options := StringGrid1.Options + [goRowSelect];
 StringGrid2.Options := StringGrid2.Options + [goRowSelect];
 StringGrid3.Options := StringGrid3.Options + [goRowSelect];
 StringGrid4.Options := StringGrid4.Options + [goRowSelect];
 StringGrid5.Options := StringGrid5.Options + [goRowSelect];
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  PageControl6.ActivePage:= Tabsheet15;
  PageControl2Prof.ActivePage:=Tabsheet5;
  PageControl3.ActivePage:=Tabsheet9;
  PageControl4.ActivePage:=Tabsheet11;
  PageControl5.ActivePage:=Tabsheet13;
end;

procedure TForm1.Label5Click(Sender: TObject);
begin

end;

//"LOOP" DE FLUXO DE TELAS ENTRE BOTÕES
//Atendimento:
procedure TForm1.buttonAdicionarPacienteAtClick(Sender: TObject);
begin
  TabSheet9.Show;
  EditNomePaci.SetFocus;
  ExecutarAcao('Cadastrar', PageControl3, TabSheet9, TabSheet10, StringGrid2);
end;

procedure TForm1.ButtonListarAtClick(Sender: TObject);
begin
  ExecutarAcao('Listar', PageControl6, TabSheet15, TabSheet16, StringGrid5);
end;

procedure TForm1.ButtonSalvarAtClick(Sender: TObject);
begin
  ExecutarAcao('Salvar', PageControl6, TabSheet15, TabSheet16, StringGrid5);
end;

procedure TForm1.ButtonLimparAtClick(Sender: TObject);
begin
  ExecutarAcao('Limpar', PageControl6, TabSheet15, TabSheet16, StringGrid5);
end;

procedure TForm1.ButtonVoltarAtClick(Sender: TObject);
begin
  ExecutarAcao('Voltar', PageControl6, TabSheet15, TabSheet16, StringGrid5);
end;

//profissionais:
procedure TForm1.ButtonCadastroProfClick(Sender: TObject);
begin
  ExecutarAcao('Cadastrar', PageControl2Prof, TabSheet5, TabSheet8, StringGrid1);
end;

procedure TForm1.ButtonEditarProfClick(Sender: TObject);
begin
  ExecutarAcao('Editar', PageControl2Prof, TabSheet5, TabSheet8, StringGrid1);
end;

procedure TForm1.ButtonExcluirProfClick(Sender: TObject);
begin
  ExecutarAcao('Excluir', PageControl2Prof, TabSheet5, TabSheet8, StringGrid1);
end;

procedure TForm1.ButtonListarProfClick(Sender: TObject);
begin
  ExecutarAcao('Listar', PageControl2Prof, TabSheet5, TabSheet8, StringGrid1);
end;

procedure TForm1.ButtonSalvarProfClick(Sender: TObject);
begin
  ExecutarAcao('Salvar', PageControl2Prof, TabSheet5, TabSheet8, StringGrid1);
end;

procedure TForm1.ButtonLimparProfClick(Sender: TObject);
begin
  ExecutarAcao('Limpar', PageControl2Prof, TabSheet5, TabSheet8, StringGrid1);
end;

procedure TForm1.ButtonVoltarProfClick(Sender: TObject);
begin
  ExecutarAcao('Voltar', PageControl2Prof, TabSheet5, TabSheet8, StringGrid1);
end;


//Pacientes:
procedure TForm1.ButtonCadastroPaciClick(Sender: TObject);
begin
  ExecutarAcao('Cadastrar', PageControl3, TabSheet9, TabSheet10, StringGrid2);
end;

procedure TForm1.ButtonEditarPaciClick(Sender: TObject);
begin
  ExecutarAcao('Editar', PageControl3, TabSheet9, TabSheet10, StringGrid2);
end;

procedure TForm1.ButtonExcluirPaciClick(Sender: TObject);
begin
  ExecutarAcao('Excluir', PageControl3, TabSheet9, TabSheet10, StringGrid2);
end;

procedure TForm1.ButtonListarPaciClick(Sender: TObject);
begin
  ExecutarAcao('Listar', PageControl3, TabSheet9, TabSheet10, StringGrid2);
end;

procedure TForm1.ButtonSalvarPaciClick(Sender: TObject);
begin
  ExecutarAcao('Salvar', PageControl3, TabSheet9, TabSheet10, StringGrid2);
end;

procedure TForm1.ButtonLimparPaciClick(Sender: TObject);
begin
  ExecutarAcao('Limpar', PageControl3, TabSheet9, TabSheet10, StringGrid2);
end;

procedure TForm1.ButtonVoltarPaciClick(Sender: TObject);
begin
  ExecutarAcao('Voltar', PageControl3, TabSheet9, TabSheet10, StringGrid2);
end;


//Convenios:
procedure TForm1.ButtonCadastroConvClick(Sender: TObject);
begin
  ExecutarAcao('Cadastrar', PageControl4, TabSheet11, TabSheet12, StringGrid3);
end;

procedure TForm1.ButtonEditarConvClick(Sender: TObject);
begin
  ExecutarAcao('Editar', PageControl4, TabSheet11, TabSheet12, StringGrid3);
end;

procedure TForm1.ButtonExcluirConvClick(Sender: TObject);
begin
  ExecutarAcao('Excluir', PageControl4, TabSheet11, TabSheet12, StringGrid3);
end;

procedure TForm1.ButtonListarConvClick(Sender: TObject);
begin
  ExecutarAcao('Listar', PageControl4, TabSheet11, TabSheet12, StringGrid3);
end;

procedure TForm1.ButtonSalvarConvClick(Sender: TObject);
begin
  ExecutarAcao('Salvar', PageControl4, TabSheet11, TabSheet12, StringGrid3);
end;

procedure TForm1.ButtonLimparConvClick(Sender: TObject);
begin
  ExecutarAcao('Limpar', PageControl4, TabSheet11, TabSheet12, StringGrid3);
end;

procedure TForm1.ButtonVoltarConvClick(Sender: TObject);
begin
  ExecutarAcao('Voltar', PageControl4, TabSheet11, TabSheet12, StringGrid3);
end;


//Especialidade:
procedure TForm1.ButtonCadastroEspeClick(Sender: TObject);
begin
  ExecutarAcao('Cadastrar', PageControl5, TabSheet13, TabSheet14, StringGrid4);
end;

procedure TForm1.ButtonEditarEspeClick(Sender: TObject);
begin
  ExecutarAcao('Editar', PageControl5, TabSheet13, TabSheet14, StringGrid4);
end;

procedure TForm1.ButtonExcluirEspeClick(Sender: TObject);
begin
  ExecutarAcao('Excluir', PageControl5, TabSheet13, TabSheet14, StringGrid4);
end;

procedure TForm1.ButtonListarEspeClick(Sender: TObject);
begin
  ExecutarAcao('Listar', PageControl5, TabSheet13, TabSheet14, StringGrid4);
end;

procedure TForm1.ButtonSalvarEspeClick(Sender: TObject);
begin
  ExecutarAcao('Salvar', PageControl5, TabSheet13, TabSheet14, StringGrid4);
end;

procedure TForm1.ButtonLimparEspeClick(Sender: TObject);
begin
  ExecutarAcao('Limpar', PageControl5, TabSheet13, TabSheet14, StringGrid4);
end;

procedure TForm1.ButtonVoltarEspeClick(Sender: TObject);
begin
  ExecutarAcao('Voltar', PageControl5, TabSheet13, TabSheet14, StringGrid4);
end;
//FIM DO LOOP

//procedure TForm1.ComboBox1Change(Sender: TObject);
//begin
//  case ComboBox1.ItemIndex of
//        0: begin
//         Edit1.Text := '45 minutos';
//         Edit2.Text := 'R$100,00';
//        end;
//        1: begin
//         Edit1.Text := '30 minutos';
//         Edit2.Text := 'R$95,00';
//        end;
//        2: begin
//         Edit1.Text := '50 minutos';
//         Edit2.Text := 'R$120,00';
//        end;
//end;
//end;

procedure TForm1.editContatoAtEnter(Sender: TObject);
begin
 editContatoAt.SelStart := 0;
 editContatoAt.SelLength :=0;
end;

procedure TForm1.PageControl1DrawTab(Control: TCustomTabControl;
  TabIndex: Integer; const Rect: TRect; Active: Boolean);
var
  PC: TPageControl;
  R: TRect;
   begin
    PC := Control as TPageControl;
    R := Rect;

    if Active then begin
      PC.Canvas.Brush.Color := clSkyBlue;
      PC.Canvas.Font.Color := clBlack;
      PC.Canvas.Font.Style := [fsBold];
    end;

    //pinta o fundo da caixinha de texto
    PC.Canvas.FillRect(R);

    //nao distorce o texto
    DrawText(PC.Canvas.Handle,
             PChar(PC.Pages[TabIndex].Caption),
             -1, R,
             DT_CENTER or DT_VCENTER or DT_SINGLELINE);
    end;

procedure TForm1.TabSheet2Enter(Sender: TObject);
begin
  PageControl3.ActivePage:=TabSheet9;
end;

procedure TForm1.ExecutarAcao(Acao: string; TabControl: TPageControl; TabCadastro, TabCrud: TTabSheet; Grid: TStringGrid);
begin
  if Acao = 'Cadastrar' then begin
    TabControl.ActivePage := TabCadastro;
    //colocar a lógica de exclusão depois leozito

  end else if Acao = 'Editar' then begin
    TabControl.ActivePage := TabCrud;
    if Grid.RowCount > 1 then
      Grid.Row := 1;
    //colocar a lógica de exclusão depois leozito

  end else if Acao = 'Excluir' then begin
    TabControl.ActivePage := TabCrud;
    //colocar a lógica de exclusão depois leozito

  end else if Acao = 'Listar' then begin
    TabControl.ActivePage := TabCrud;

  end else if Acao = 'Voltar' then begin
    TabControl.ActivePage := TabCadastro
  end;

end;
end.
