// CodeGear C++Builder
// Copyright (c) 1995, 2020 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'VCL.SERTIRT.pas' rev: 34.00 (Windows)

#ifndef Vcl_SertirtHPP
#define Vcl_SertirtHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <Vcl.StdCtrls.hpp>
#include <System.Types.hpp>
#include <Vcl.Controls.hpp>

//-- user supplied -----------------------------------------------------------

namespace Vcl
{
namespace Sertirt
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TSERTTKMarshal;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TSERTTKMarshal : public Vcl::Stdctrls::TButton
{
	typedef Vcl::Stdctrls::TButton inherited;
	
private:
	System::UnicodeString __fastcall GetVersion();
	void __fastcall MarshalClick(System::TObject* Sender);
	
public:
	__fastcall virtual TSERTTKMarshal(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TSERTTKMarshal();
	
__published:
	__property System::UnicodeString Version = {read=GetVersion};
public:
	/* TWinControl.CreateParented */ inline __fastcall TSERTTKMarshal(HWND ParentWindow) : Vcl::Stdctrls::TButton(ParentWindow) { }
	
};


//-- var, const, procedure ---------------------------------------------------
static const System::Int8 MAJ_VER = System::Int8(0x1);
static const System::Int8 MIN_VER = System::Int8(0x0);
static const System::Int8 REL_VER = System::Int8(0x1);
static const System::Int8 BLD_VER = System::Int8(0x2);
}	/* namespace Sertirt */
}	/* namespace Vcl */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_VCL_SERTIRT)
using namespace Vcl::Sertirt;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_VCL)
using namespace Vcl;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Vcl_SertirtHPP
