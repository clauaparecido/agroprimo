program agroprimo2;

uses
  Forms,
  ulogin in '..\..\agroprimo2\ulogin.pas' {Formlogin},
  uconexao in '..\..\agroprimo2\uconexao.pas' {dmMYSQL: TDataModule},
  ucllientes in '..\..\agroprimo2\ucllientes.pas' {Formclientes},
  uprincipal in '..\..\agroprimo2\uprincipal.pas' {Formprincipal},
  ufornecedor in '..\ufornecedor.pas' {Formfornecedor},
  uproduto in '..\uproduto.pas' {Formproduto},
  uanimais in '..\uanimais.pas' {formanimais};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormlogin, Formlogin);
  Application.CreateForm(TdmMYSQL, dmMYSQL);
  Application.CreateForm(TFormclientes, Formclientes);
  Application.CreateForm(TFormprincipal, Formprincipal);
  Application.CreateForm(TFormfornecedor, Formfornecedor);
  Application.CreateForm(TFormproduto, Formproduto);
  Application.CreateForm(Tformanimais, formanimais);
  Application.Run;
end.
