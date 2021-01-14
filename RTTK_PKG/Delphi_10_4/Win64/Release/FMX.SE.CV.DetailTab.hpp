// CodeGear C++Builder
// Copyright (c) 1995, 2020 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.SE.CV.DetailTab.pas' rev: 34.00 (Windows)

#ifndef Fmx_Se_Cv_DetailtabHPP
#define Fmx_Se_Cv_DetailtabHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Generics.Collections.hpp>
#include <FMX.TMSFNCTreeViewData.hpp>
#include <FMX.TMSFNCPageControl.hpp>
#include <FMX.SE.CV.ToolInstance.hpp>
#include <FMX.SE.SupportTypes.hpp>
#include <System.SysUtils.hpp>
#include <System.Generics.Defaults.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Se
{
namespace Cv
{
namespace Detailtab
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TSECVDetailTab;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TSECVDetailTab : public System::TObject
{
	typedef System::TObject inherited;
	
public:
	Fmx::Tmsfncpagecontrol::TTMSFNCPageControl* FTabControl;
	System::Generics::Collections::TObjectDictionary__2<Fmx::Tmsfncpagecontrol::TTMSFNCPageControlPage*,Fmx::Se::Cv::Toolinstance::TSECVToolInstance*>* FTools;
	Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNode* TreeNode;
	Fmx::Tmsfncpagecontrol::TTMSFNCPageControlPage* TabItem;
	Fmx::Se::Supporttypes::TSESupportRepoCompRef* RepoComp;
	System::UnicodeString __fastcall TabDisplayName();
	__fastcall TSECVDetailTab();
	__fastcall virtual ~TSECVDetailTab();
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Detailtab */
}	/* namespace Cv */
}	/* namespace Se */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_SE_CV_DETAILTAB)
using namespace Fmx::Se::Cv::Detailtab;
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
#endif	// Fmx_Se_Cv_DetailtabHPP
