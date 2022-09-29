object ChartWebinarDB: TChartWebinarDB
  OnCreate = DataModuleCreate
  Height = 1080
  Width = 1440
  PixelsPerInch = 144
  object FDConnection: TFDConnection
    Params.Strings = (
      'Database=:memory:'
      'DriverID=SQLite')
    Connected = True
    LoginPrompt = False
    AfterConnect = FDConnectionAfterConnect
    Left = 297
    Top = 209
  end
  object FDMemTableSalesGrid: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 320
    Top = 568
  end
  object FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink
    Left = 1224
    Top = 904
  end
  object fdqSalesChart: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'select * from sales_chart')
    Left = 560
    Top = 440
    object fdqSalesChartmonth: TIntegerField
      FieldName = 'month'
      Origin = 'month'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdqSalesChartSA2018: TBCDField
      FieldName = 'SA2018'
      Origin = 'SA2018'
      Precision = 10
      Size = 2
    end
    object fdqSalesChartSA2019: TBCDField
      FieldName = 'SA2019'
      Origin = 'SA2019'
      Precision = 10
      Size = 2
    end
    object fdqSalesChartSA2020: TBCDField
      FieldName = 'SA2020'
      Origin = 'SA2020'
      Precision = 10
      Size = 2
    end
    object fdqSalesChartmdisp: TStringField
      FieldName = 'mdisp'
    end
  end
  object fdqSalesPie: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      
        'select year, sum(amount) as "Sales::Int32" from salesinfo group ' +
        'by year')
    Left = 784
    Top = 392
    object fdqSalesPieyear: TIntegerField
      FieldName = 'year'
      Origin = 'year'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdqSalesPieSales: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Sales'
      Origin = 'Sales'
      ProviderFlags = []
      ReadOnly = True
    end
  end
end
