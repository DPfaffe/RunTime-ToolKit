// CodeGear C++Builder
// Copyright (c) 1995, 2020 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMXSERTTKDXE13.dpk' rev: 34.00 (Windows)

#ifndef Fmxserttkdxe13HPP
#define Fmxserttkdxe13HPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>	// (rtl)
#include <SysInit.hpp>
#include <FMX.SE.CVSupport.hpp>
#include <FMX.SE.DBQuery.hpp>
#include <FMX.SE.Layout.hpp>
#include <FMX.SE.Logger.hpp>
#include <FMX.SE.SupportProvider.hpp>
#include <FMX.SE.SupportRepository.hpp>
#include <FMX.SE.SupportSession.hpp>
#include <FMX.SE.SupportSessionTypes.hpp>
#include <FMX.SE.SupportSettings.hpp>
#include <FMX.SE.SupportTransform.hpp>
#include <FMX.SE.SupportTypes.hpp>
#include <FMX.SE.RTTK.Marshal.hpp>
#include <FMX.SE.CV.DebugLog.hpp>
#include <FMX.SE.CV.DetailPane.hpp>
#include <FMX.SE.CV.DetailTab.hpp>
#include <FMX.SE.CV.InspectLog.hpp>
#include <FMX.SE.CV.InspectMM.hpp>
#include <FMX.SE.CV.LogPanel.hpp>
#include <FMX.SE.CV.NavTree.hpp>
#include <FMX.SE.CV.ToolFactory.hpp>
#include <FMX.SE.CV.DisplayBase.hpp>
#include <FMX.SE.CV.LogToolBase.hpp>
#include <FMX.SE.CV.ToolInstance.hpp>
#include <FMX.SE.CV.DataGrid.hpp>
#include <FMX.SE.CV.Tool.Grid.hpp>
#include <FMX.SE.CV.Tool.ObjectInspector.hpp>
#include <FMX.SE.CV.Tool.Query.hpp>
#include <System.UITypes.hpp>	// (rtl)
#include <Winapi.Windows.hpp>	// (rtl)
#include <Winapi.PsAPI.hpp>	// (rtl)
#include <System.Character.hpp>	// (rtl)
#include <System.Internal.ExcUtils.hpp>	// (rtl)
#include <System.SysUtils.hpp>	// (rtl)
#include <System.VarUtils.hpp>	// (rtl)
#include <System.Variants.hpp>	// (rtl)
#include <System.Math.hpp>	// (rtl)
#include <System.Rtti.hpp>	// (rtl)
#include <System.TypInfo.hpp>	// (rtl)
#include <System.Generics.Defaults.hpp>	// (rtl)
#include <System.TimeSpan.hpp>	// (rtl)
#include <System.Classes.hpp>	// (rtl)
#include <System.Messaging.hpp>	// (rtl)
#include <System.Actions.hpp>	// (rtl)
#include <System.Devices.hpp>	// (rtl)
#include <System.UIConsts.hpp>	// (rtl)
#include <FMX.BehaviorManager.hpp>	// (fmx)
#include <FMX.Styles.hpp>	// (fmx)
#include <FMX.Utils.hpp>	// (fmx)
#include <FMX.Text.hpp>	// (fmx)
#include <FMX.TextLayout.hpp>	// (fmx)
#include <FMX.Types3D.hpp>	// (fmx)
#include <FMX.Filter.hpp>	// (fmx)
#include <FMX.Filter.Custom.hpp>	// (fmx)
#include <FMX.Effects.hpp>	// (fmx)
#include <System.SyncObjs.hpp>	// (rtl)
#include <FMX.MultiResBitmap.hpp>	// (fmx)
#include <FMX.Ani.hpp>	// (fmx)
#include <System.DateUtils.hpp>	// (rtl)
#include <System.IOUtils.hpp>	// (rtl)
#include <FMX.ImgList.hpp>	// (fmx)
#include <Winapi.D2D1.hpp>	// (rtl)
#include <Winapi.UxTheme.hpp>	// (rtl)
#include <FMX.DialogService.Sync.hpp>	// (fmx)
#include <FMX.Dialogs.hpp>	// (fmx)
#include <FMX.DialogService.hpp>	// (fmx)
#include <FMX.Menus.hpp>	// (fmx)
#include <System.AnsiStrings.hpp>	// (rtl)
#include <System.Win.ComObj.hpp>	// (rtl)
#include <Winapi.MsCTF.hpp>	// (rtl)
#include <Winapi.ShellAPI.hpp>	// (rtl)
#include <FMX.Helpers.Win.hpp>	// (fmx)
#include <FMX.FontGlyphs.hpp>	// (fmx)
#include <FMX.Objects.hpp>	// (fmx)
#include <Winapi.GDIPOBJ.hpp>	// (rtl)
#include <FMX.Canvas.GDIP.hpp>	// (fmx)
#include <FMX.Printer.hpp>	// (fmx)
#include <FMX.Presentation.Factory.hpp>	// (fmx)
#include <FMX.Controls.Win.hpp>	// (fmx)
#include <FMX.Presentation.Win.hpp>	// (fmx)
#include <FMX.Presentation.Win.Style.hpp>	// (fmx)
#include <FMX.Controls.Presentation.hpp>	// (fmx)
#include <FMX.Styles.Objects.hpp>	// (fmx)
#include <FMX.Styles.Switch.hpp>	// (fmx)
#include <FMX.Switch.Style.hpp>	// (fmx)
#include <FMX.Switch.Win.hpp>	// (fmx)
#include <FMX.StdCtrls.hpp>	// (fmx)
#include <FMX.InertialMovement.hpp>	// (fmx)
#include <FMX.Layouts.hpp>	// (fmx)
#include <FMX.MagnifierGlass.hpp>	// (fmx)
#include <FMX.Edit.Style.hpp>	// (fmx)
#include <FMX.Edit.Win.hpp>	// (fmx)
#include <FMX.Edit.hpp>	// (fmx)
#include <FMX.DialogHelper.hpp>	// (fmx)
#include <FMX.Dialogs.Win.hpp>	// (fmx)
#include <FMX.Canvas.D2D.hpp>	// (fmx)
#include <FMX.Canvas.GPU.Helpers.hpp>	// (fmx)
#include <FMX.TextLayout.GPU.hpp>	// (fmx)
#include <FMX.Canvas.GPU.hpp>	// (fmx)
#include <FMX.Context.DX9.hpp>	// (fmx)
#include <FMX.Context.DX11.hpp>	// (fmx)
#include <FMX.ListBox.hpp>	// (fmx)
#include <FMX.DateTimeCtrls.Types.hpp>	// (fmx)
#include <FMX.DateTimeCtrls.hpp>	// (fmx)
#include <FMX.Calendar.Style.hpp>	// (fmx)
#include <FMX.Calendar.hpp>	// (fmx)
#include <FMX.Pickers.hpp>	// (fmx)
#include <FMX.ExtCtrls.hpp>	// (fmx)
#include <System.Win.InternetExplorer.hpp>	// (rtl)
#include <FMX.WebBrowser.hpp>	// (fmx)
#include <FMX.Platform.Win.hpp>	// (fmx)
#include <FMX.Gestures.Win.hpp>	// (fmx)
#include <FMX.Gestures.hpp>	// (fmx)
#include <FMX.Controls.hpp>	// (fmx)
#include <FMX.Header.hpp>	// (fmx)
#include <FMX.Forms.hpp>	// (fmx)
#include <FMX.Clipboard.Win.hpp>	// (fmx)
#include <FMX.Platform.hpp>	// (fmx)
#include <FMX.Types.hpp>	// (fmx)
#include <FMX.Graphics.hpp>	// (fmx)
#include <System.JSON.hpp>	// (rtl)
#include <System.NetEncoding.hpp>	// (rtl)
#include <FMX.TMSFNCUtils.hpp>	// (FMXTMSFNCCorePkgDXE13)
#include <FMX.TMSFNCPersistence.hpp>	// (FMXTMSFNCCorePkgDXE13)
#include <Xml.Win.msxmldom.hpp>	// (xmlrtl)
#include <Xml.xmldom.hpp>	// (xmlrtl)
#include <Xml.XMLSchema.hpp>	// (xmlrtl)
#include <Xml.xmlutil.hpp>	// (xmlrtl)
#include <FMX.TMSFNCStyles.hpp>	// (FMXTMSFNCCorePkgDXE13)
#include <FMX.TMSFNCGraphicsTypes.hpp>	// (FMXTMSFNCCorePkgDXE13)
#include <FMX.TMSFNCGraphics.General.hpp>	// (FMXTMSFNCCorePkgDXE13)
#include <FMX.TMSFNCGDIPlusApi.hpp>	// (FMXTMSFNCCorePkgDXE13)
#include <FMX.TMSFNCGDIPlusClasses.hpp>	// (FMXTMSFNCCorePkgDXE13)
#include <FMX.TMSFNCHint.hpp>	// (FMXTMSFNCCorePkgDXE13)
#include <FMX.TMSFNCCustomSelector.hpp>	// (FMXTMSFNCUIPackPkgDXE13)
#include <System.Bindings.Search.hpp>	// (bindengine)
#include <System.Bindings.Evaluator.hpp>	// (bindengine)
#include <System.Bindings.EvalSys.hpp>	// (bindengine)
#include <System.Bindings.Graph.hpp>	// (bindengine)
#include <System.Bindings.Factories.hpp>	// (bindengine)
#include <System.Bindings.Outputs.hpp>	// (bindengine)
#include <System.Bindings.Methods.hpp>	// (bindengine)
#include <Data.Bind.Grid.hpp>	// (bindcomp)
#include <Data.Bind.Components.hpp>	// (bindcomp)
#include <FMX.TMSFNCEdit.hpp>	// (FMXTMSFNCUIPackPkgDXE13)
#include <FMX.TMSFNCToolBar.hpp>	// (FMXTMSFNCUIPackPkgDXE13)
#include <FMX.TabControl.hpp>	// (fmx)
#include <FMX.ScrollBox.Style.hpp>	// (fmx)
#include <FMX.ScrollBox.Win.hpp>	// (fmx)
#include <FMX.ScrollBox.hpp>	// (fmx)
#include <FMX.Memo.Style.New.hpp>	// (fmx)
#include <FMX.Memo.Win.hpp>	// (fmx)
#include <FMX.Memo.hpp>	// (fmx)
#include <FMX.TMSFNCTaskDialog.hpp>	// (FMXTMSFNCUIPackPkgDXE13)
#include <Data.SqlTimSt.hpp>	// (dbrtl)
#include <Data.FmtBcd.hpp>	// (dbrtl)
#include <Data.DB.hpp>	// (dbrtl)
#include <System.IniFiles.hpp>	// (rtl)
#include <System.Win.Registry.hpp>	// (rtl)
#include <FireDAC.Stan.Error.hpp>	// (FireDACCommon)
#include <FireDAC.Stan.Intf.hpp>	// (FireDACCommon)
#include <FireDAC.Stan.Util.hpp>	// (FireDACCommon)
#include <FireDAC.Stan.SQLTimeInt.hpp>	// (FireDACCommon)
#include <FireDAC.Stan.Param.hpp>	// (FireDACCommon)
#include <FireDAC.DatS.hpp>	// (FireDACCommon)
#include <FireDAC.UI.Intf.hpp>	// (FireDACCommon)
#include <FireDAC.Stan.Factory.hpp>	// (FireDACCommon)
#include <FireDAC.Stan.Option.hpp>	// (FireDACCommon)
#include <FireDAC.Stan.Expr.hpp>	// (FireDACCommon)
#include <FireDAC.Comp.Client.hpp>	// (FireDAC)
#include <FireDAC.DApt.hpp>	// (FireDACCommonDriver)
#include <FMX.TMSFNCPageControl.hpp>	// (FMXTMSFNCUIPackPkgDXE13)
#include <FMX.ComboEdit.Style.hpp>	// (fmx)
#include <FMX.ComboEdit.hpp>	// (fmx)
#include <FMX.EditBox.Style.hpp>	// (fmx)
#include <FMX.SpinBox.Style.hpp>	// (fmx)
#include <FMX.SpinBox.hpp>	// (fmx)
#include <Data.Bind.ObjectScope.hpp>	// (bindcomp)
#include <Data.Bind.DBScope.hpp>	// (bindcomp)
#include <Fmx.Bind.Navigator.hpp>	// (Bindcompfmx)
// PRG_EXT: .bpl
// BPI_DIR: C:\Data\GitHub\SwiftExpat\RunTime-ToolKit\RunTime-ToolKit\RTTK_PKG\Delphi_10_4\Win32\Dcp
// OBJ_DIR: C:\Data\GitHub\SwiftExpat\RunTime-ToolKit\RunTime-ToolKit\RTTK_PKG\Delphi_10_4\Win32\Release
// OBJ_EXT: .obj

//-- user supplied -----------------------------------------------------------

namespace Fmxserttkdxe13
{
//-- forward type declarations -----------------------------------------------
//-- type declarations -------------------------------------------------------
//-- var, const, procedure ---------------------------------------------------
}	/* namespace Fmxserttkdxe13 */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMXSERTTKDXE13)
using namespace Fmxserttkdxe13;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmxserttkdxe13HPP
