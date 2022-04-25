object dmRTTK: TdmRTTK
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 480
  Width = 640
  object FDMemTable: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 304
    Top = 224
  end
  object FDConnection: TFDConnection
    Params.Strings = (
      'Database=:memory:'
      'DriverID=SQLite')
    Connected = True
    LoginPrompt = False
    AfterConnect = FDConnectionAfterConnect
    Left = 288
    Top = 152
  end
  object FDQuerySales: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'select year, month, amount from SalesInfo')
    Left = 176
    Top = 232
    object FDQuerySalesyear: TIntegerField
      FieldName = 'year'
      Origin = 'year'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQuerySalesmonth: TIntegerField
      FieldName = 'month'
      Origin = 'month'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object FDSQLiteFunctionXmY: TFDSQLiteFunction
    DriverLink = FDPhysSQLiteDriverLink1
    Active = True
    FunctionName = 'XmY'
    ArgumentsCount = 2
    OnCalculate = FDSQLiteFunctionXmYCalculate
    Left = 232
    Top = 328
  end
  object FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink
    Left = 416
    Top = 352
  end
  object ClientDataSetSalesInfo: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 96
    Top = 40
  end
  object FDQuerySalesIndexed: TFDQuery
    Indexes = <
      item
        Active = True
        Selected = True
        Name = 'MonthascYeardesc'
        Fields = 'year;month'
        CaseInsFields = 'month'
        DescFields = 'month'
      end>
    IndexName = 'MonthascYeardesc'
    Connection = FDConnection
    SQL.Strings = (
      'select year, month, amount from SalesInfo')
    Left = 472
    Top = 96
    object IntegerField1: TIntegerField
      FieldName = 'year'
      Origin = 'year'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IntegerField2: TIntegerField
      FieldName = 'month'
      Origin = 'month'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
end
