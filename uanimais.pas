unit uanimais;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, uconexao, XPMan, DB, DBClient;

type
  Tformanimais = class(TForm)
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
    peso: TEdit;
    sexo: TEdit;
    datavacina: TEdit;
    doacao: TEdit;
    datasaida: TEdit;
    dataretorno: TEdit;
    nomecliente: TEdit;
    nomeanimal: TEdit;
    tipo: TEdit;
    raca: TEdit;
    datanasc: TEdit;
    dataentrada: TEdit;
    Label13: TLabel;
    DataSource1: TDataSource;
    ClientDataSet1: TClientDataSet;
    XPManifest1: TXPManifest;
    Btnnovoregistro: TButton;
    Btninserir: TButton;
    Btnvoltar: TButton;
    Btnconsulta: TButton;
    Btnsair: TButton;
    procedure BtninserirClick(Sender: TObject);
    procedure BtnnovoregistroClick(Sender: TObject);
    procedure BtnvoltarClick(Sender: TObject);
    procedure BtnsairClick(Sender: TObject);
  private
    { Private declarations }
    procedure LIMPATELA;
  public
    { Public declarations }
  end;

var
  formanimais: Tformanimais;

implementation

uses uprincipal;

{$R *.dfm}

procedure Tformanimais.BtninserirClick(Sender: TObject);
begin
dmMYSQL.Zquery1.Close;

dmMYSQL.Zquery1.SQL.Text := 'INSERT INTO agroprimo.animal (nomecliente,nomeanimal,'+
                           ' tipo, raça, datanasc, dataentrada, peso, sexo,'+
                           '  datavacina, doação, datasaida, retornodata) ' +

                             'VALUES ( '  +

                           '''' + nomecliente.Text + ''',' +
                           '''' + nomeanimal.Text + ''',' +
                           '''' + tipo.Text + ''',' +
                           '''' + raca.Text + ''',' +
                           '''' + datanasc.Text + ''',' +
                           '''' + dataentrada.Text + ''',' +
                           '''' + peso.Text + ''',' +
                           '''' + sexo.Text + ''',' +
                           '''' + datavacina.Text + ''',' +
                           '''' + doacao.Text + ''',' +
                           '''' + datasaida.Text + ''',' +
                           '''' + dataretorno.Text + ''' )';

dmMYSQL.Zquery1.execSQL;
Btninserir.Enabled:=False;
Showmessage ('Gravado com Sucesso ');

end;
   procedure TFormanimais.LIMPATELA;

var

i : integer;

begin

for i:=0 to Formanimais.ComponentCount-1 do

begin

if Formanimais.Components[i] is TEdit then
(Formanimais.Components[i] as TEdit).Clear;

//if Formfornecedor.Components[i] is TMaskEdit then
//Formfornecedor.Components[i] as TMaskEdit).Clear;

end;

end;


procedure Tformanimais.BtnnovoregistroClick(Sender: TObject);
begin
Btninserir.Enabled:=True;
dmMYSQL.ZQuery1.SQL.Clear;
LIMPATELA
end;

procedure Tformanimais.BtnvoltarClick(Sender: TObject);
begin
Formprincipal.Show;
Formanimais.Hide;
end;

procedure Tformanimais.BtnsairClick(Sender: TObject);
begin
Close;
end;

end.
