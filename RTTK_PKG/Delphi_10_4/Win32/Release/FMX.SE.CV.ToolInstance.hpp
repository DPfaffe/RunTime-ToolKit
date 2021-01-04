// CodeGear C++Builder
// Copyright (c) 1995, 2020 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.SE.CV.ToolInstance.pas' rev: 34.00 (Windows)

#ifndef Fmx_Se_Cv_ToolinstanceHPP
#define Fmx_Se_Cv_ToolinstanceHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <FMX.TMSFNCPageControl.hpp>
#include <FMX.SE.SupportTypes.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
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
	Fmx::Tmsfncpagecontrol::TTMSFNCPageControlPage* FToolPage;
	Fmx::Se::Supporttypes::TSESInspectToolBase* FToolInfo;
	virtual void __fastcall InitToolInstance() = 0 ;
	
public:
	virtual System::UnicodeString __fastcall DisplayName() = 0 ;
	__fastcall TSECVToolInstance(Fmx::Se::Supporttypes::TSESInspectToolBase* const AToolInfo, Fmx::Tmsfncpagecontrol::TTMSFNCPageControlPage* const AToolTab);
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TSECVToolInstance() { }
	
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
}	/* namespace Toolinstance */
}	/* namespace Cv */
}	/* namespace Se */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_SE_CV_TOOLINSTANCE)
using namespace Fmx::Se::Cv::Toolinstance;
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
#endif	// Fmx_Se_Cv_ToolinstanceHPP
