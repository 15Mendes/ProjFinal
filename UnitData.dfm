object DataModule2: TDataModule2
  Height = 1080
  Width = 1440
  PixelsPerInch = 144
  object FDConnection: TFDConnection
    Left = 696
    Top = 520
  end
  object FDQuery: TFDQuery
    Connection = FDConnection
    Left = 432
    Top = 416
  end
  object FDDriver: TFDPhysPgDriverLink
    Left = 240
    Top = 280
  end
end
