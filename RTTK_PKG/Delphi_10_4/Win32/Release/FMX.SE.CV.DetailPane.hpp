// CodeGear C++Builder
// Copyright (c) 1995, 2020 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.SE.CV.DetailPane.pas' rev: 34.00 (Windows)

#ifndef Fmx_Se_Cv_DetailpaneHPP
#define Fmx_Se_Cv_DetailpaneHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <FMX.TMSFNCPageControl.hpp>
#include <FMX.SE.CV.DisplayBase.hpp>
#include <FMX.SE.Layout.hpp>
#include <FMX.SE.CV.DetailTab.hpp>
#include <FMX.SE.CV.ToolFactory.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Se
{
namespace Cv
{
namespace Detailpane
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TSECVDetailPane;
//-- type declarations -------------------------------------------------------
#pragma pack(push,4)
class PASCALIMPLEMENTATION TSECVDetailPane : public Fmx::Se::Cv::Displaybase::TSECVDisplayBase
{
	typedef Fmx::Se::Cv::Displaybase::TSECVDisplayBase inherited;
	
private:
	Fmx::Tmsfncpagecontrol::TTMSFNCPageControl* FPC;
	int FPreviousPageIndex;
	Fmx::Se::Cv::Toolfactory::TSECVToolFactory* FToolFactory;
	void __fastcall SetPageControlOptions();
	void __fastcall PCClosePage(System::TObject* Sender, int APageIndex, Fmx::Tmsfncpagecontrol::TTMSFNCPageControlPageCloseAction ACloseAction);
	void __fastcall PCChangePage(System::TObject* Sender, int APreviousPageIndex, int ACurrentPageIndex);
	
public:
	void __fastcall ActivatePage(Fmx::Tmsfncpagecontrol::TTMSFNCPageControlPage* const APage);
	void __fastcall AddSupPage(Fmx::Se::Cv::Detailtab::TSECVDetailTab* const ASupTab);
	__fastcall TSECVDetailPane(Fmx::Se::Layout::TSELayout* const ALayout);
	__fastcall virtual ~TSECVDetailPane();
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
}	/* namespace Detailpane */
}	/* namespace Cv */
}	/* namespace Se */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_SE_CV_DETAILPANE)
using namespace Fmx::Se::Cv::Detailpane;
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
#endif	// Fmx_Se_Cv_DetailpaneHPP
