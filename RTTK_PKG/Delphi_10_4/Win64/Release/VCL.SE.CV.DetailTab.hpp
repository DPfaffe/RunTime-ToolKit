// CodeGear C++Builder
// Copyright (c) 1995, 2020 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'VCL.SE.CV.DetailTab.pas' rev: 34.00 (Windows)

#ifndef Vcl_Se_Cv_DetailtabHPP
#define Vcl_Se_Cv_DetailtabHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Generics.Collections.hpp>
#include <VCL.TMSFNCTreeViewData.hpp>
#include <VCL.TMSFNCPageControl.hpp>
#include <VCL.SE.CV.ToolInstance.hpp>
#include <VCL.SE.SupportTypes.hpp>
#include <System.SysUtils.hpp>
#include <System.Generics.Defaults.hpp>

//-- user supplied -----------------------------------------------------------

namespace Vcl
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
	Vcl::Tmsfncpagecontrol::TTMSFNCPageControl* FTabControl;
	System::Generics::Collections::TObjectDictionary__2<Vcl::Tmsfncpagecontrol::TTMSFNCPageControlPage*,Vcl::Se::Cv::Toolinstance::TSECVToolInstance*>* FTools;
	Vcl::Tmsfnctreeviewdata::TTMSFNCTreeViewNode* TreeNode;
	Vcl::Tmsfncpagecontrol::TTMSFNCPageControlPage* TabItem;
	Vcl::Se::Supporttypes::TSESupportRepoCompRef* RepoComp;
	System::UnicodeString __fastcall TabDisplayName();
	__fastcall TSECVDetailTab();
	__fastcall virtual ~TSECVDetailTab();
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Detailtab */
}	/* namespace Cv */
}	/* namespace Se */
}	/* namespace Vcl */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_VCL_SE_CV_DETAILTAB)
using namespace Vcl::Se::Cv::Detailtab;
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
#endif	// Vcl_Se_Cv_DetailtabHPP
