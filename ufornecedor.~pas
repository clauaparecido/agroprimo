unit ufornecedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uconexao, StdCtrls, XPMan, DB, DBClient;

type
  TFormfornecedor = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    nome: TEdit;
    email: TEdit;
    cnpj: TEdit;
    cpf: TEdit;
    datacadastro: TEdit;
    complemento: TEdit;
    nomecontato: TEdit;
    razaosocial: TEdit;
    endereco: TEdit;
    numero: TEdit;
    telefone: TEdit;
    fonecontato: TEdit;
    Label13: TLabel;
    cidade: TEdit;
    Label14: TLabel;
    Btninserir: TButton;
    Btnnovoregistro: TButton;
    Btnvoltar: TButton;
    Btnconsulta: TButton;
    Btnsair: TButton;
    Label15: TLabel;
    ativo: TEdit;
    DataSource1: TDataSource;
    ClientDataSet1: TClientDataSet;
    XPManifest1: TXPManifest;
    procedure BtnsairClick(Sender: TObject);
    procedure BtninserirClick(Sender: TObject);
    procedure BtnnovoregistroClick(Sender: TObject);
    procedure BtnvoltarClick(Sender: TObject);
  private
    { Private declarations }
     procedure LIMPATELA;
  public
    { Public declarations }
  end;

var
  Formfornecedor: TFormfornecedor;

implementation

uses  ucllientes, uprincipal;

{$R *.dfm}

procedure TFormfornecedor.BtnsairClick(Sender: TObject);
begin
Close;
end;

procedure TFormfornecedor.BtninserirClick(Sender: TObject);
begin
dmMYSQL.Zquery1.Close;

dmMYSQL.Zquery1.SQL.Text := 'INSERT INTO agroprimo.fornecedor (nome,endereço,'+
                           ' numero,telefone,email,cpf,cnpj,datacadastro,'+
                           ' complemento,ativo, razãosocial,fonecelularcontato,cidade, contatonome) ' +

                             'VALUES ( '  +

                           '''' + nome.Text + ''',' +
                           '''' + endereco.Text + ''',' +
                           '''' + numero.Text + ''',' +
                           '''' + telefone.Text + ''',' +
                           '''' + email.Text + ''',' +
                           '''' + cpf.Text + ''',' +
                           '''' + cnpj.Text + ''',' +
                           '''' + datacadastro.Text + ''',' +
                           '''' + complemento.Text + ''',' +
                           '''' + razaosocial.Text + ''',' +
                           '''' + fonecontato.Text + ''',' +
                           '''' + cidade.Text + ''',' +
                           '''' + nomecontato.Text + ''',' +
                           '''' + ativo.Text + ''' )';

dmMYSQL.Zquery1.execSQL;
Btninserir.Enabled:=False;
Showmessage ('Gravado com Sucesso ');

end;
   procedure TFormfornecedor.LIMPATELA;

var

i : integer;

begin

for i:=0 to Formfornecedor.ComponentCount-1 do

begin

if Formfornecedor.Components[i] is TEdit then
(Formfornecedor.Components[i] as TEdit).Clear;

//if Formfornecedor.Components[i] is TMaskEdit then
//Formfornecedor.Components[i] as TMaskEdit).Clear;

end;

end;

procedure TFormfornecedor.BtnnovoregistroClick(Sender: TObject);
begin
Btninserir.Enabled:=True;
dmMYSQL.ZQuery1.SQL.Clear;
LIMPATELA
end;

procedure TFormfornecedor.BtnvoltarClick(Sender: TObject);
begin
Formprincipal.Show;
Formfornecedor.Hide;
end;

end.
