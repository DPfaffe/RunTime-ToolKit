// CodeGear C++Builder
// Copyright (c) 1995, 2020 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.SE.CV.ToolFactory.pas' rev: 34.00 (Windows)

#ifndef Fmx_Se_Cv_ToolfactoryHPP
#define Fmx_Se_Cv_ToolfactoryHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Generics.Collections.hpp>
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
namespace Toolfactory
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TSECVToolFactory;
//-- type declarations -------------------------------------------------------
#pragma pack(push,4)
class PASCALIMPLEMENTATION TSECVToolFactory : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	System::Generics::Collections::TDictionary__2<System::TClass,System::TClass>* FToolMap;
	
public:
	Fmx::Se::Cv::Toolinstance::TSECVToolInstance* __fastcall GetTool(Fmx::Se::Supporttypes::TSESInspectToolBase* const AToolInfo, Fmx::Tmsfncpagecontrol::TTMSFNCPageControlPage* const AToolTab);
	__fastcall TSECVToolFactory();
	__fastcall virtual ~TSECVToolFactory();
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
}	/* namespace Toolfactory */
}	/* namespace Cv */
}	/* namespace Se */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_SE_CV_TOOLFACTORY)
using namespace Fmx::Se::Cv::Toolfactory;
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
#endif	// Fmx_Se_Cv_ToolfactoryHPP
