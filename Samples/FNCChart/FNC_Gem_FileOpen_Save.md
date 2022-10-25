# FNC Gems - SaveFile and SelectFile

FNC products help you in all phases of your migration to cross platform and one of the core tasks is the file open dialog. FNCUtils contains a lot of helpful procedures and it is easy to overlook some when you do not see them in the pallet ( I did!).  Two items I would like to highlight are TTMSFNCUtils.SaveFile and TTMSFNCUtils.SelectFile as replacements for TFileOpen and TFileSave components.

VCL and FMX provide these as components on the pallet, in FNC these are class functions that require a callback method to implement the save. Personally I like this approach versus the component and here is a practical example of how to use the functions.

The following examples are available on Github as part of a Marshal custom inspector written for FNC Chart. https://github.com/SwiftExpat/RunTime-ToolKit/tree/main/Samples/FNCChart/Inspectors

## TTMSFNCUtils.SaveFile

Save file is used to export an image of the FNC Chart to a PDF file via a button click event. This event needs to supply the file name, extension and callback function where the save action will be executed if the user selects ok.

```pascal
procedure TFrameFNCChartTool.ExportPDF(Sender: TObject);
const
  txt_extension = 'PDF files (*.pdf)|*.PDF';  // Extension string as a constant
var
  fn, cn: string;
  fr: Boolean;
begin
  cn := FChart.Name;
  if cn.IsEmpty then // Build a file name based on the component or classname
    fn := TPath.Combine(TTMSFNCUtils.GetTempPath, FChart.ClassName) + '.json'
  else
    fn := TPath.Combine(TTMSFNCUtils.GetTempPath, 'FNCChart' + cn) + '.json';
  fr := TTMSFNCUtils.SaveFile(fn, txt_extension, ExportChartPDF); //display the dialog
end;
```

The export to pdf will execute in the call back function ExportChartPDF.  The callback should check the result to determine if the user selected OK or Cancel.  When OK is selected the export gets processed using the parameter AFile as the filename selected by the user.

```pascal
procedure TFrameFNCChartTool.ExportChartPDF(const AFile: string; const AResult: Boolean);
const
  fmt_datetime = 'yyyy/mm/dd hh:nn:ss';
begin
  if AResult = false then //Exit if user selects cancel
    exit;
  TMSFNCGraphicsPDFIO1.Information.Title := 'Export FNC Chart';
  TMSFNCGraphicsPDFIO1.ExportObject := FChart;
  TMSFNCGraphicsPDFIO1.Options.Header := TMSFNCGraphicsPDFIO1.Information.Title;
  TMSFNCGraphicsPDFIO1.Options.Footer := 'Exported @ ' + FormatDateTime(fmt_datetime, now);
  TMSFNCGraphicsPDFIO1.Save(AFile);
end;
```

## TTMSFNCUtils.SelectFile

Select file is used in place of TFileOpen dialog.

```pascal
procedure TSERTTKToolInstTMSFNCCustomControl.DoAfterCheckNode(Sender: TObject; ANode: TTMSFNCTreeViewVirtualNode;
  AColumn: Integer);
const
  txt_extension = 'JSON files (*.json)|*.JSON';
var
  opt: TSERTTKFNCPersistOption;
  fn: string;
  fr: boolean;
begin
  if (AColumn = 1) and (Assigned(ANode.Node.DataObject)) and (ANode.Node.DataObject is TSERTTKFNCPersistOption) then
  begin
    opt := TSERTTKFNCPersistOption(ANode.Node.DataObject);
      StatusMessage('Load component');
      fr := TTMSFNCUtils.SelectFile(fn, TTMSFNCUtils.GetTempPath, txt_extension, opt.LoadComponent);
      if fr then
        ANode.Node.Text[1] := '@ ' + fn
      else
        ANode.Node.Text[1] := 'export Failed';
      ANode.Node.Checked[1] := false;
  end;
end;
```

The callback has the same signature, just check the AResult to ensure OK was selected and execute your open action.  

```pascal
procedure TSERTTKFncPersistOption.LoadComponent(const AFile: string; const AResult: boolean);
begin
  if AResult = false then //Exit if user selects cancel
    exit;
  try
    FControl.LoadSettingsFromFile(AFile) // AFile provides the filename
  except
    on E: Exception do
      Logger.debug(E.Message);
  end;
end;
```
