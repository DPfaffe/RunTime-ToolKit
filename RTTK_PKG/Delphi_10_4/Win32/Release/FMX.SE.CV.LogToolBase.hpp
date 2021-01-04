// CodeGear C++Builder
// Copyright (c) 1995, 2020 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.SE.CV.LogToolBase.pas' rev: 34.00 (Windows)

#ifndef Fmx_Se_Cv_LogtoolbaseHPP
#define Fmx_Se_Cv_LogtoolbaseHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <FMX.TMSFNCPageControl.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Se
{
namespace Cv
{
namespace Logtoolbase
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TSECVLogToolBase;
//-- type declarations -------------------------------------------------------
#pragma pack(push,4)
class PASCALIMPLEMENTATION TSECVLogToolBase : public System::TObject
{
	typedef System::TObject inherited;
	
protected:
	Fmx::Tmsfncpagecontrol::TTMSFNCPageControlContainer* FPageContainer;
	virtual void __fastcall Initialize() = 0 ;
	
public:
	virtual void __fastcall Activate() = 0 ;
	virtual void __fastcall DeActivate() = 0 ;
	virtual void __fastcall ClearLog(System::TObject* Sender) = 0 ;
	__fastcall virtual TSECVLogToolBase(Fmx::Tmsfncpagecontrol::TTMSFNCPageControlContainer* const APageContainer);
	__fastcall virtual ~TSECVLogToolBase() = 0 ;
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
}	/* namespace Logtoolbase */
}	/* namespace Cv */
}	/* namespace Se */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_SE_CV_LOGTOOLBASE)
using namespace Fmx::Se::Cv::Logtoolbase;
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
#endif	// Fmx_Se_Cv_LogtoolbaseHPP
