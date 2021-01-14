// CodeGear C++Builder
// Copyright (c) 1995, 2020 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.SE.CV.DisplayBase.pas' rev: 34.00 (Windows)

#ifndef Fmx_Se_Cv_DisplaybaseHPP
#define Fmx_Se_Cv_DisplaybaseHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <FMX.SE.SupportRepository.hpp>
#include <FMX.SE.Layout.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
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
	Fmx::Se::Supportrepository::TSESRepository* FSupportRepository;
	Fmx::Se::Supportrepository::TSESRepository* __fastcall RepositoryGet();
	
protected:
	Fmx::Se::Layout::TSELayout* FLayout;
	System::Classes::TComponent* FOwner;
	virtual void __fastcall RepositorySet(Fmx::Se::Supportrepository::TSESRepository* const ASupportRepository);
	
public:
	__property Fmx::Se::Supportrepository::TSESRepository* SR = {read=RepositoryGet, write=RepositorySet};
	__fastcall TSECVDisplayBase(Fmx::Se::Layout::TSELayout* const ALayout, System::Classes::TComponent* const AOwner);
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TSECVDisplayBase() { }
	
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Displaybase */
}	/* namespace Cv */
}	/* namespace Se */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_SE_CV_DISPLAYBASE)
using namespace Fmx::Se::Cv::Displaybase;
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
#endif	// Fmx_Se_Cv_DisplaybaseHPP
