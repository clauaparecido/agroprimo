object Formconexao: TFormconexao
  Left = 0
  Top = 0
  Caption = 'unconex'#227'o'
  ClientHeight = 249
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object ZConnection1: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = 'agroprimo'
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = ''
    User = 'root'
    Password = ''
    Protocol = 'mysql-5'
    Left = 48
    Top = 40
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Params = <>
    Left = 168
    Top = 32
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 304
    Top = 40
  end
end
