// CodeGear C++Builder
// Copyright (c) 1995, 2020 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'VCL.SE.CV.DisplayBase.pas' rev: 34.00 (Windows)

#ifndef Vcl_Se_Cv_DisplaybaseHPP
#define Vcl_Se_Cv_DisplaybaseHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <VCL.SE.SupportRepository.hpp>
#include <VCL.SE.Layout.hpp>

//-- user supplied -----------------------------------------------------------

namespace Vcl
{
namespace Se
{
namespace Cv
{
namespace Displaybase
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TSECVDisplayBase;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TSECVDisplayBase : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	Vcl::Se::Supportrepository::TSESRepository* FSupportRepository;
	Vcl::Se::Supportrepository::TSESRepository* __fastcall RepositoryGet();
	
protected:
	Vcl::Se::Layout::TSELayout* FLayout;
	virtual void __fastcall RepositorySet(Vcl::Se::Supportrepository::TSESRepository* const ASupportRepository);
	
public:
	__property Vcl::Se::Supportrepository::TSESRepository* SR = {read=RepositoryGet, write=RepositorySet};
public:
	/* TObject.Create */ inline __fastcall TSECVDisplayBase() : System::TObject() { }
	/* TObject.Destroy */ inline __fastcall virtual ~TSECVDisplayBase() { }
	
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Displaybase */
}	/* namespace Cv */
}	/* namespace Se */
}	/* namespace Vcl */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_VCL_SE_CV_DISPLAYBASE)
using namespace Vcl::Se::Cv::Displaybase;
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
#endif	// Vcl_Se_Cv_DisplaybaseHPP
