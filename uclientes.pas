unit uclientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,  unconexaoMYSQL , Vcl.Mask, Vcl.XPMan, Data.DB,
  Datasnap.DBClient, Vcl.StdCtrls;

type
  Tformclientes = class(TForm)
    nome: TEdit;
    nomemae: TEdit;
    endereco: TEdit;
    numero: TEdit;
    email: TEdit;
    datacadastro: TEdit;
    complemento: TEdit;
    cidade: TEdit;
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
    Label13: TLabel;
    Label14: TLabel;
    DataSource1: TDataSource;
    ClientDataSet1: TClientDataSet;
    XPManifest1: TXPManifest;
    Label15: TLabel;
    cpf: TMaskEdit;
    datanasc: TMaskEdit;
    telefone: TMaskEdit;
    cnpj: TMaskEdit;
    fonecelular: TMaskEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formclientes: Tformclientes;

implementation

{$R *.dfm}

end.
