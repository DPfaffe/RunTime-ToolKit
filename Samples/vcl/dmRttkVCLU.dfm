object dmRTTK: TdmRTTK
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 720
  Width = 960
  PixelsPerInch = 144
  object FDConnection: TFDConnection
    Params.Strings = (
      'Database=:memory:'
      'DriverID=SQLite')
    LoginPrompt = False
    AfterConnect = FDConnectionAfterConnect
    Left = 384
    Top = 36
  end
  object FDMemTable: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 624
    Top = 36
  end
  object FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink
    Left = 768
    Top = 588
  end
  object FDSQLiteFunctionXmY: TFDSQLiteFunction
    DriverLink = FDPhysSQLiteDriverLink1
    FunctionName = 'XmY'
    ArgumentsCount = 2
    OnCalculate = FDSQLiteFunctionXmYCalculate
    Left = 240
    Top = 336
  end
  object FDQuerySales: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'select year, month, amount from SalesInfo')
    Left = 216
    Top = 168
  end
end
