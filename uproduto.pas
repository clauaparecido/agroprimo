unit uproduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBClient, XPMan;

type
  TFormproduto = class(TForm)
    XPManifest1: TXPManifest;
    DataSource1: TDataSource;
    ClientDataSet1: TClientDataSet;
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
    responsavel: TEdit;
    datavencto: TEdit;
    datacadastro: TEdit;
    precovenda: TEdit;
    precocompra: TEdit;
    cor: TEdit;
    tipo: TEdit;
    fornecedor: TEdit;
    tamanho: TEdit;
    unmedida: TEdit;
    prazogarantia: TEdit;
    Btninserir: TButton;
    Btnnovoregistro: TButton;
    Btnvoltar: TButton;
    Btncosulta: TButton;
    Btnsair: TButton;
    procedure BtnsairClick(Sender: TObject);
    procedure BtninserirClick(Sender: TObject);
    procedure BtnnovoregistroClick(Sender: TObject);
    procedure BtnvoltarClick(Sender: TObject);
  private
    { Private declarations }
    procedure LIMPATELA ;
  public
    { Public declarations }
  end;

var
  Formproduto: TFormproduto;

implementation

uses uconexao, uprincipal, ufornecedor;

{$R *.dfm}

procedure TFormproduto.BtnsairClick(Sender: TObject);
begin
Close;
end;

procedure TFormproduto.BtninserirClick(Sender: TObject);
begin
dmMYSQL.Zquery1.Close;

dmMYSQL.Zquery1.SQL.Text := 'INSERT INTO agroprimo.produto (nome,tipo,fornecedor,'+
                           ' tamanho, unmedida, prazogarantia, responsavel,'+
                           ' datavencto, datacadastro, preçovenda, preçocompra,cor) ' +

                             'VALUES ( '  +

                           '''' + nome.Text + ''',' +
                           '''' + tipo.Text + ''',' +
                           '''' + fornecedor.Text + ''',' +
                           '''' + tamanho.Text + ''',' +
                           '''' + unmedida.Text + ''',' +
                           '''' + prazogarantia.Text + ''',' +
                           '''' + responsavel.Text + ''',' +
                           '''' + datavencto.Text + ''',' +
                           '''' + datacadastro.Text + ''',' +
                           '''' + precovenda.Text + ''',' +
                           '''' + precocompra.Text + ''',' +
                           '''' + cor.Text + ''' )';

dmMYSQL.Zquery1.execSQL;
Btninserir.Enabled:=False;
Showmessage ('Gravado com Sucesso ');
end;

  procedure TFormproduto.LIMPATELA;

var

i : integer;

begin

for i:=0 to Formproduto.ComponentCount-1 do

begin

if Formproduto.Components[i] is TEdit then
(Formproduto.Components[i] as TEdit).Clear;

end;
end;

procedure TFormproduto.BtnnovoregistroClick(Sender: TObject);
begin
Btninserir.Enabled:=True;
dmMYSQL.ZQuery1.SQL.Clear;
LIMPATELA
end;

procedure TFormproduto.BtnvoltarClick(Sender: TObject);
begin
Formprincipal.Show;
Formproduto.Hide;
end;

end.
