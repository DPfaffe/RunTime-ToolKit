// CodeGear C++Builder
// Copyright (c) 1995, 2020 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'VCL.SE.CV.Tool.Grid.pas' rev: 34.00 (Windows)

#ifndef Vcl_Se_Cv_Tool_GridHPP
#define Vcl_Se_Cv_Tool_GridHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <Data.DB.hpp>
#include <Data.Bind.DBScope.hpp>
#include <VCL.TMSFNCStatusBar.hpp>
#include <Vcl.Bind.Navigator.hpp>
#include <VCL.TMSFNCButton.hpp>
#include <VCL.SE.CV.ToolInstance.hpp>
#include <VCL.SE.CV.DataGrid.hpp>
#include <VCL.SE.Layout.hpp>

//-- user supplied -----------------------------------------------------------

namespace Vcl
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
#pragma pack(push,4)
class PASCALIMPLEMENTATION TSECVGridTool : public Vcl::Se::Cv::Toolinstance::TSECVToolInstance
{
	typedef Vcl::Se::Cv::Toolinstance::TSECVToolInstance inherited;
	
private:
	Vcl::Se::Cv::Datagrid::TSECVDataGrid* FDG;
	Vcl::Tmsfncbutton::TTMSFNCButton* FbtnOpen;
	Vcl::Bind::Navigator::TBindNavigator* FNavigator;
	Data::Bind::Dbscope::TBindSourceDB* FBindSource;
	Vcl::Tmsfncstatusbar::TTMSFNCStatusBar* FSBSETools;
	Vcl::Tmsfncstatusbar::TTMSFNCStatusBarPanel* FSBTextMessage;
	void __fastcall AssignDataset(Data::Db::TDataSet* const ADataSet);
	void __fastcall OpenDataset(System::TObject* Sender);
	void __fastcall DataSourceStateChange(System::TObject* Sender);
	
protected:
	virtual void __fastcall InitToolInstance();
	
public:
	virtual System::UnicodeString __fastcall DisplayName();
	__fastcall virtual ~TSECVGridTool();
public:
	/* TSECVToolInstance.Create */ inline __fastcall TSECVGridTool(Vcl::Se::Supporttypes::TSESInspectToolBase* const AToolInfo, Vcl::Tmsfncpagecontrol::TTMSFNCPageControlPage* const AToolTab) : Vcl::Se::Cv::Toolinstance::TSECVToolInstance(AToolInfo, AToolTab) { }
	
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
}	/* namespace Grid */
}	/* namespace Tool */
}	/* namespace Cv */
}	/* namespace Se */
}	/* namespace Vcl */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_VCL_SE_CV_TOOL_GRID)
using namespace Vcl::Se::Cv::Tool::Grid;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_VCL_SE_CV_TOOL)
using namespace Vcl::Se::Cv::Tool;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_VCL_SE_CV)
using namespace Vcl::Se::Cv;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_VCL_SE)
using namespace Vcl::Se;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_VCL)
using namespace Vcl;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Vcl_Se_Cv_Tool_GridHPP
