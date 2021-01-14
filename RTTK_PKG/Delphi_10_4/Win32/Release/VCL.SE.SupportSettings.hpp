// CodeGear C++Builder
// Copyright (c) 1995, 2020 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'VCL.SE.SupportSettings.pas' rev: 34.00 (Windows)

#ifndef Vcl_Se_SupportsettingsHPP
#define Vcl_Se_SupportsettingsHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>

//-- user supplied -----------------------------------------------------------

namespace Vcl
{
namespace Se
{
namespace Supportsettings
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TSESSettings;
//-- type declarations -------------------------------------------------------
#pragma pack(push,4)
class PASCALIMPLEMENTATION TSESSettings : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	System::UnicodeString FSFormName;
	System::UnicodeString FSFormTitle;
	
public:
	__property System::UnicodeString SupportFormName = {read=FSFormName};
	__property System::UnicodeString SupportFormTitle = {read=FSFormTitle};
	__classmethod System::UnicodeString __fastcall SupportSessionDir();
	__fastcall TSESSettings();
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TSESSettings() { }
	
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
}	/* namespace Supportsettings */
}	/* namespace Se */
}	/* namespace Vcl */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_VCL_SE_SUPPORTSETTINGS)
using namespace Vcl::Se::Supportsettings;
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
#endif	// Vcl_Se_SupportsettingsHPP
