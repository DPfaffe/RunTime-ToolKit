// CodeGear C++Builder
// Copyright (c) 1995, 2020 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'VCL.SE.CV.DetailPane.pas' rev: 34.00 (Windows)

#ifndef Vcl_Se_Cv_DetailpaneHPP
#define Vcl_Se_Cv_DetailpaneHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <VCL.TMSFNCPageControl.hpp>
#include <VCL.SE.CV.DisplayBase.hpp>
#include <VCL.SE.Layout.hpp>
#include <VCL.SE.CV.DetailTab.hpp>
#include <VCL.SE.CV.ToolFactory.hpp>

//-- user supplied -----------------------------------------------------------

namespace Vcl
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
typedef void __fastcall (__closure *TSECVDetailPageChange)(System::TObject* Sender, Vcl::Se::Cv::Detailtab::TSECVDetailTab* const ADetailTab);

class PASCALIMPLEMENTATION TSECVDetailPane : public Vcl::Se::Cv::Displaybase::TSECVDisplayBase
{
	typedef Vcl::Se::Cv::Displaybase::TSECVDisplayBase inherited;
	
private:
	Vcl::Tmsfncpagecontrol::TTMSFNCPageControl* FPC;
	int FPreviousPageIndex;
	Vcl::Se::Cv::Toolfactory::TSECVToolFactory* FToolFactory;
	TSECVDetailPageChange FDetailPageChange;
	void __fastcall SetPageControlOptions();
	void __fastcall PCClosePage(System::TObject* Sender, int APageIndex, Vcl::Tmsfncpagecontrol::TTMSFNCPageControlPageCloseAction ACloseAction);
	void __fastcall PCChangePage(System::TObject* Sender, int APreviousPageIndex, int ACurrentPageIndex);
	
public:
	void __fastcall ActivatePage(Vcl::Tmsfncpagecontrol::TTMSFNCPageControlPage* const APage);
	void __fastcall AddSupPage(Vcl::Se::Cv::Detailtab::TSECVDetailTab* const ASupTab);
	__property TSECVDetailPageChange OnDetailPageChange = {read=FDetailPageChange, write=FDetailPageChange};
	__fastcall TSECVDetailPane(Vcl::Se::Layout::TSELayout* const ALayout, System::Classes::TComponent* const AOwner);
	__fastcall virtual ~TSECVDetailPane();
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Detailpane */
}	/* namespace Cv */
}	/* namespace Se */
}	/* namespace Vcl */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_VCL_SE_CV_DETAILPANE)
using namespace Vcl::Se::Cv::Detailpane;
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
#endif	// Vcl_Se_Cv_DetailpaneHPP
