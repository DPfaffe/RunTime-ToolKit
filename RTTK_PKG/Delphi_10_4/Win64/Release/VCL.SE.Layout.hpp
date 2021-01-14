// CodeGear C++Builder
// Copyright (c) 1995, 2020 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'VCL.SE.Layout.pas' rev: 34.00 (Windows)

#ifndef Vcl_Se_LayoutHPP
#define Vcl_Se_LayoutHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <Vcl.Controls.hpp>

//-- user supplied -----------------------------------------------------------

namespace Vcl
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

class PASCALIMPLEMENTATION TSEAlign : public System::TObject
{
	typedef System::TObject inherited;
	
public:
	__classmethod Vcl::Controls::TAlign __fastcall GetAlign(const TSEControlAlignment AAlign);
public:
	/* TObject.Create */ inline __fastcall TSEAlign() : System::TObject() { }
	/* TObject.Destroy */ inline __fastcall virtual ~TSEAlign() { }
	
};


class PASCALIMPLEMENTATION TSELayout : public Vcl::Extctrls::TPanel
{
	typedef Vcl::Extctrls::TPanel inherited;
	
public:
	__fastcall virtual TSELayout(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TSELayout();
	HIDESBASE void __fastcall SetAlignment(const TSEControlAlignment AAlign);
public:
	/* TWinControl.CreateParented */ inline __fastcall TSELayout(HWND ParentWindow) : Vcl::Extctrls::TPanel(ParentWindow) { }
	
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Layout */
}	/* namespace Se */
}	/* namespace Vcl */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_VCL_SE_LAYOUT)
using namespace Vcl::Se::Layout;
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
#endif	// Vcl_Se_LayoutHPP
