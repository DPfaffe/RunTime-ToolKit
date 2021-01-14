// CodeGear C++Builder
// Copyright (c) 1995, 2020 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'VCLSERTTKDXE13.dpk' rev: 34.00 (Windows)

#ifndef Vclserttkdxe13HPP
#define Vclserttkdxe13HPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>	// (rtl)
#include <SysInit.hpp>
#include <VCL.SE.CVSupport.hpp>
#include <VCL.SE.DBQuery.hpp>
#include <VCL.SE.Layout.hpp>
#include <VCL.SE.Logger.hpp>
#include <VCL.SE.SupportProvider.hpp>
#include <VCL.SE.SupportRepository.hpp>
#include <VCL.SE.SupportSession.hpp>
#include <VCL.SE.SupportSessionTypes.hpp>
#include <VCL.SE.SupportSettings.hpp>
#include <VCL.SE.SupportTransform.hpp>
#include <VCL.SE.SupportTypes.hpp>
#include <VCL.SE.RTTK.Marshal.hpp>
#include <VCL.SE.CV.DebugLog.hpp>
#include <VCL.SE.CV.DetailPane.hpp>
#include <VCL.SE.CV.DetailTab.hpp>
#include <VCL.SE.CV.InspectLog.hpp>
#include <VCL.SE.CV.InspectMM.hpp>
#include <VCL.SE.CV.LogPanel.hpp>
#include <VCL.SE.CV.NavTree.hpp>
#include <VCL.SE.CV.ToolFactory.hpp>
#include <VCL.SE.CV.DisplayBase.hpp>
#include <VCL.SE.CV.LogToolBase.hpp>
#include <VCL.SE.CV.ToolInstance.hpp>
#include <VCL.SE.CV.DataGrid.hpp>
#include <VCL.SE.CV.Tool.Grid.hpp>
#include <VCL.SE.CV.Tool.ObjectInspector.hpp>
#include <VCL.SE.CV.Tool.Query.hpp>
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
#include <System.DateUtils.hpp>	// (rtl)
#include <System.IOUtils.hpp>	// (rtl)
#include <System.IniFiles.hpp>	// (rtl)
#include <System.Win.Registry.hpp>	// (rtl)
#include <System.UIConsts.hpp>	// (rtl)
#include <Vcl.Graphics.hpp>	// (vcl)
#include <System.Actions.hpp>	// (rtl)
#include <Vcl.ActnList.hpp>	// (vcl)
#include <System.HelpIntfs.hpp>	// (rtl)
#include <System.SyncObjs.hpp>	// (rtl)
#include <Winapi.UxTheme.hpp>	// (rtl)
#include <Vcl.GraphUtil.hpp>	// (vcl)
#include <Vcl.StdCtrls.hpp>	// (vcl)
#include <Winapi.ShellAPI.hpp>	// (rtl)
#include <Vcl.Printers.hpp>	// (vcl)
#include <Vcl.Clipbrd.hpp>	// (vcl)
#include <Vcl.ComCtrls.hpp>	// (vcl)
#include <Vcl.Dialogs.hpp>	// (vcl)
#include <Vcl.ExtCtrls.hpp>	// (vcl)
#include <Vcl.Themes.hpp>	// (vcl)
#include <System.AnsiStrings.hpp>	// (rtl)
#include <System.Win.ComObj.hpp>	// (rtl)
#include <Winapi.FlatSB.hpp>	// (rtl)
#include <Vcl.Forms.hpp>	// (vcl)
#include <Vcl.Menus.hpp>	// (vcl)
#include <Winapi.MsCTF.hpp>	// (rtl)
#include <Vcl.Controls.hpp>	// (vcl)
#include <Vcl.Imaging.jpeg.hpp>	// (vclimg)
#include <Vcl.Imaging.pngimage.hpp>	// (vclimg)
#include <Vcl.Imaging.GIFImg.hpp>	// (vclimg)
#include <System.JSON.hpp>	// (rtl)
#include <System.NetEncoding.hpp>	// (rtl)
#include <VCL.TMSFNCUtils.hpp>	// (VCLTMSFNCCorePkgDXE13)
#include <VCL.TMSFNCPersistence.hpp>	// (VCLTMSFNCCorePkgDXE13)
#include <Xml.Win.msxmldom.hpp>	// (xmlrtl)
#include <Xml.xmldom.hpp>	// (xmlrtl)
#include <Xml.XMLSchema.hpp>	// (xmlrtl)
#include <Xml.xmlutil.hpp>	// (xmlrtl)
#include <VCL.TMSFNCStyles.hpp>	// (VCLTMSFNCCorePkgDXE13)
#include <VCL.TMSFNCTypes.hpp>	// (VCLTMSFNCCorePkgDXE13)
#include <VCL.TMSFNCGraphicsTypes.hpp>	// (VCLTMSFNCCorePkgDXE13)
#include <VCL.TMSFNCGDIPlusApi.hpp>	// (VCLTMSFNCCorePkgDXE13)
#include <VCL.TMSFNCGDIPlusClasses.hpp>	// (VCLTMSFNCCorePkgDXE13)
#include <VCL.TMSFNCHint.hpp>	// (VCLTMSFNCCorePkgDXE13)
#include <VCL.TMSFNCXPVS.hpp>	// (VCLTMSFNCCorePkgDXE13)
#include <VCL.TMSFNCCustomSelector.hpp>	// (VCLTMSFNCUIPackPkgDXE13)
#include <VCL.TMSFNCPopup.hpp>	// (VCLTMSFNCCorePkgDXE13)
#include <System.Bindings.Search.hpp>	// (bindengine)
#include <System.Bindings.Evaluator.hpp>	// (bindengine)
#include <System.Bindings.EvalSys.hpp>	// (bindengine)
#include <System.Bindings.Graph.hpp>	// (bindengine)
#include <System.Bindings.Factories.hpp>	// (bindengine)
#include <System.Bindings.Outputs.hpp>	// (bindengine)
#include <System.Bindings.Methods.hpp>	// (bindengine)
#include <Data.Bind.Grid.hpp>	// (bindcomp)
#include <Data.Bind.Components.hpp>	// (bindcomp)
#include <VCL.TMSFNCEdit.hpp>	// (VCLTMSFNCUIPackPkgDXE13)
#include <VCL.TMSFNCToolBar.hpp>	// (VCLTMSFNCUIPackPkgDXE13)
#include <VCL.TMSFNCTaskDialog.hpp>	// (VCLTMSFNCUIPackPkgDXE13)
#include <Data.SqlTimSt.hpp>	// (dbrtl)
#include <Data.FmtBcd.hpp>	// (dbrtl)
#include <Data.DB.hpp>	// (dbrtl)
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
#include <VCL.TMSFNCPageControl.hpp>	// (VCLTMSFNCUIPackPkgDXE13)
#include <Vcl.Buttons.hpp>	// (vcl)
#include <Data.Bind.ObjectScope.hpp>	// (bindcomp)
#include <Data.Bind.DBScope.hpp>	// (bindcomp)
#include <Vcl.Bind.Navigator.hpp>	// (bindcompvcl)
// PRG_EXT: .bpl
// BPI_DIR: C:\Data\GitHub\SwiftExpat\RunTime-ToolKit\RunTime-ToolKit\RTTK_PKG\Delphi_10_4\Win32\Dcp
// OBJ_DIR: C:\Data\GitHub\SwiftExpat\RunTime-ToolKit\RunTime-ToolKit\RTTK_PKG\Delphi_10_4\Win32\Release
// OBJ_EXT: .obj

//-- user supplied -----------------------------------------------------------

namespace Vclserttkdxe13
{
//-- forward type declarations -----------------------------------------------
//-- type declarations -------------------------------------------------------
//-- var, const, procedure ---------------------------------------------------
}	/* namespace Vclserttkdxe13 */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_VCLSERTTKDXE13)
using namespace Vclserttkdxe13;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Vclserttkdxe13HPP
