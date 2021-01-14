// CodeGear C++Builder
// Copyright (c) 1995, 2020 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.SE.CV.Tool.Grid.pas' rev: 34.00 (Windows)

#ifndef Fmx_Se_Cv_Tool_GridHPP
#define Fmx_Se_Cv_Tool_GridHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <Data.DB.hpp>
#include <Data.Bind.DBScope.hpp>
#include <FMX.TMSFNCStatusBar.hpp>
#include <Fmx.Bind.Navigator.hpp>
#include <FMX.TMSFNCButton.hpp>
#include <FMX.SE.CV.ToolInstance.hpp>
#include <FMX.SE.CV.DataGrid.hpp>
#include <FMX.SE.Layout.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Se
{
namespace Cv
{
namespace Tool
{
namespace Grid
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TSECVGridTool;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TSECVGridTool : public Fmx::Se::Cv::Toolinstance::TSECVToolInstance
{
	typedef Fmx::Se::Cv::Toolinstance::TSECVToolInstance inherited;
	
private:
	Fmx::Se::Cv::Datagrid::TSECVDataGrid* FDG;
	Fmx::Tmsfncbutton::TTMSFNCButton* FbtnOpen;
	Fmx::Bind::Navigator::TBindNavigator* FNavigator;
	Data::Bind::Dbscope::TBindSourceDB* FBindSource;
	Fmx::Tmsfncstatusbar::TTMSFNCStatusBar* FSBSETools;
	Fmx::Tmsfncstatusbar::TTMSFNCStatusBarPanel* FSBTextMessage;
	void __fastcall AssignDataset(Data::Db::TDataSet* const ADataSet);
	void __fastcall OpenDataset(System::TObject* Sender);
	void __fastcall DataSourceStateChange(System::TObject* Sender);
	
protected:
	virtual void __fastcall InitToolInstance();
	
public:
	virtual System::UnicodeString __fastcall DisplayName();
	__fastcall virtual ~TSECVGridTool();
public:
	/* TSECVToolInstance.Create */ inline __fastcall TSECVGridTool(Fmx::Se::Supporttypes::TSESInspectToolBase* const AToolInfo, Fmx::Tmsfncpagecontrol::TTMSFNCPageControlPage* const AToolTab) : Fmx::Se::Cv::Toolinstance::TSECVToolInstance(AToolInfo, AToolTab) { }
	
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Grid */
}	/* namespace Tool */
}	/* namespace Cv */
}	/* namespace Se */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_SE_CV_TOOL_GRID)
using namespace Fmx::Se::Cv::Tool::Grid;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_SE_CV_TOOL)
using namespace Fmx::Se::Cv::Tool;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_SE_CV)
using namespace Fmx::Se::Cv;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_SE)
using namespace Fmx::Se;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_Se_Cv_Tool_GridHPP
