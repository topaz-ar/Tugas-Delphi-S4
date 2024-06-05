object DataModule4: TDataModule4
  Height = 750
  Width = 1000
  PixelsPerInch = 120
  object ZConnection1: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    Properties.Strings = (
      'RawStringEncoding=DB_CP')
    Connected = True
    DisableSavepoints = False
    HostName = 'localhost'
    Port = 3306
    Database = 'db_penjualan2'
    User = 'root'
    Password = ''
    Protocol = 'mysql'
    LibraryLocation = 'C:\Program Files (x86)\Embarcadero\libmysql.dll'
    Left = 152
    Top = 200
  end
  object Zkategori: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from kategori'
      '')
    Params = <>
    Left = 256
    Top = 192
  end
  object Zsatuan: TZQuery
    Params = <>
    Left = 360
    Top = 192
  end
  object Zuser: TZQuery
    Params = <>
    Left = 448
    Top = 192
  end
  object Zsupplier: TZQuery
    Params = <>
    Left = 536
    Top = 192
  end
  object Zbarang: TZQuery
    Params = <>
    Left = 608
    Top = 192
  end
  object dskategori: TDataSource
    DataSet = Zkategori
    Left = 248
    Top = 288
  end
  object dssatuan: TDataSource
    Left = 352
    Top = 288
  end
  object dsuser: TDataSource
    Left = 432
    Top = 288
  end
  object dssupplier: TDataSource
    Left = 528
    Top = 288
  end
  object dsbarang: TDataSource
    Left = 616
    Top = 280
  end
end
