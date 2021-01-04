// CodeGear C++Builder
// Copyright (c) 1995, 2020 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'VCL.SE.CV.ToolInstance.pas' rev: 34.00 (Windows)

#ifndef Vcl_Se_Cv_ToolinstanceHPP
#define Vcl_Se_Cv_ToolinstanceHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <VCL.TMSFNCPageControl.hpp>
#include <VCL.SE.SupportTypes.hpp>

//-- user supplied -----------------------------------------------------------

namespace Vcl
{
namespace Se
{
namespace Cv
{
namespace Toolinstance
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TSECVToolInstance;
//-- type declarations -------------------------------------------------------
#pragma pack(push,4)
class PASCALIMPLEMENTATION TSECVToolInstance : public System::TObject
{
	typedef System::TObject inherited;
	
protected:
	Vcl::Tmsfncpagecontrol::TTMSFNCPageControlPage* FToolPage;
	Vcl::Se::Supporttypes::TSESInspectToolBase* FToolInfo;
	virtual void __fastcall InitToolInstance() = 0 ;
	
public:
	virtual System::UnicodeString __fastcall DisplayName() = 0 ;
	__fastcall TSECVToolInstance(Vcl::Se::Supporttypes::TSESInspectToolBase* const AToolInfo, Vcl::Tmsfncpagecontrol::TTMSFNCPageControlPage* const AToolTab);
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TSECVToolInstance() { }
	
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
}	/* namespace Toolinstance */
}	/* namespace Cv */
}	/* namespace Se */
}	/* namespace Vcl */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_VCL_SE_CV_TOOLINSTANCE)
using namespace Vcl::Se::Cv::Toolinstance;
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
#endif	// Vcl_Se_Cv_ToolinstanceHPP
