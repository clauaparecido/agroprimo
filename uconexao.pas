unit uconexao;

interface

uses
  SysUtils, Classes, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZConnection;

type
  TdmMYSQL = class(TDataModule)
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    DataSource1: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmMYSQL: TdmMYSQL;

implementation

{$R *.dfm}

end.
