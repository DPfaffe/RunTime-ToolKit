// CodeGear C++Builder
// Copyright (c) 1995, 2020 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'VCL.SE.CV.ToolFactory.pas' rev: 34.00 (Windows)

#ifndef Vcl_Se_Cv_ToolfactoryHPP
#define Vcl_Se_Cv_ToolfactoryHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Generics.Collections.hpp>
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
namespace Toolfactory
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TSECVToolFactory;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TSECVToolFactory : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	System::Generics::Collections::TDictionary__2<System::TClass,System::TClass>* FToolMap;
	
public:
	Vcl::Se::Cv::Toolinstance::TSECVToolInstance* __fastcall GetTool(Vcl::Se::Supporttypes::TSESInspectToolBase* const AToolInfo, Vcl::Tmsfncpagecontrol::TTMSFNCPageControlPage* const AToolTab);
	__fastcall TSECVToolFactory();
	__fastcall virtual ~TSECVToolFactory();
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Toolfactory */
}	/* namespace Cv */
}	/* namespace Se */
}	/* namespace Vcl */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_VCL_SE_CV_TOOLFACTORY)
using namespace Vcl::Se::Cv::Toolfactory;
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
#endif	// Vcl_Se_Cv_ToolfactoryHPP
