object dmMYSQL: TdmMYSQL
  OldCreateOrder = False
  Left = 230
  Top = 229
  Height = 222
  Width = 278
  object ZConnection1: TZConnection
    Protocol = 'mysql-5'
    HostName = 'localhost'
    Port = 3306
    User = 'root'
    Catalog = 'agroprimo'
    Connected = True
    Left = 24
    Top = 48
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Params = <>
    Left = 128
    Top = 48
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 200
    Top = 120
  end
end
