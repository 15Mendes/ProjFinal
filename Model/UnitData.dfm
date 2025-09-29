object DataModule2: TDataModule2
  Height = 1080
  Width = 1440
  PixelsPerInch = 144
  object FDConnection: TFDConnection
    Params.Strings = (
      'Server=127.0.0.1'
      'Database=HealthControl'
      'User_Name=postgres'
      'Password=leobd3649'
      'DriverID=PG')
    Connected = True
    Left = 696
    Top = 520
  end
  object FDQuery: TFDQuery
    Connection = FDConnection
    Left = 432
    Top = 416
  end
  object FDPhysPgDriverLink1: TFDPhysPgDriverLink
    VendorLib = 'C:\Delphi\ProjFinal\lib\libpq.dll'
    Left = 408
    Top = 200
  end
end
