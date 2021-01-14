// CodeGear C++Builder
// Copyright (c) 1995, 2020 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.SE.Layout.pas' rev: 34.00 (Windows)

#ifndef Fmx_Se_LayoutHPP
#define Fmx_Se_LayoutHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <FMX.StdCtrls.hpp>
#include <FMX.Types.hpp>
#include <FMX.Controls.Presentation.hpp>
#include <FMX.Controls.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Se
{
namespace Layout
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TSEAlign;
class DELPHICLASS TSELayout;
//-- type declarations -------------------------------------------------------
enum DECLSPEC_DENUM TSEControlAlignment : unsigned char { caNone, caTop, caBottom, caLeft, caRight, caClient };

#pragma pack(push,4)
class PASCALIMPLEMENTATION TSEAlign : public System::TObject
{
	typedef System::TObject inherited;
	
public:
	__classmethod Fmx::Types::TAlignLayout __fastcall GetAlign(const TSEControlAlignment AAlign);
public:
	/* TObject.Create */ inline __fastcall TSEAlign() : System::TObject() { }
	/* TObject.Destroy */ inline __fastcall virtual ~TSEAlign() { }
	
};

#pragma pack(pop)

class PASCALIMPLEMENTATION TSELayout : public Fmx::Stdctrls::TPanel
{
	typedef Fmx::Stdctrls::TPanel inherited;
	
public:
	__fastcall virtual TSELayout(System::Classes::TComponent* AOwner)/* overload */;
	__fastcall virtual ~TSELayout();
	void __fastcall SetAlignment(const TSEControlAlignment AAlign);
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Layout */
}	/* namespace Se */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_SE_LAYOUT)
using namespace Fmx::Se::Layout;
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
#endif	// Fmx_Se_LayoutHPP
