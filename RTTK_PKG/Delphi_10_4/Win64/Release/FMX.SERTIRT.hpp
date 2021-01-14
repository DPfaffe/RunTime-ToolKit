// CodeGear C++Builder
// Copyright (c) 1995, 2020 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.SERTIRT.pas' rev: 34.00 (Windows)

#ifndef Fmx_SertirtHPP
#define Fmx_SertirtHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <FMX.StdCtrls.hpp>
#include <System.Types.hpp>
#include <FMX.Controls.Presentation.hpp>
#include <FMX.Controls.hpp>
#include <FMX.Types.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Sertirt
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TSERTTKMarshal;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TSERTTKMarshal : public Fmx::Stdctrls::TButton
{
	typedef Fmx::Stdctrls::TButton inherited;
	
private:
	System::UnicodeString __fastcall GetVersion();
	void __fastcall MarshalClick(System::TObject* Sender);
	
public:
	__fastcall virtual TSERTTKMarshal(System::Classes::TComponent* AOwner)/* overload */;
	__fastcall virtual ~TSERTTKMarshal();
	
__published:
	__property System::UnicodeString Version = {read=GetVersion};
};


//-- var, const, procedure ---------------------------------------------------
static const System::Int8 MAJ_VER = System::Int8(0x1);
static const System::Int8 MIN_VER = System::Int8(0x0);
static const System::Int8 REL_VER = System::Int8(0x1);
static const System::Int8 BLD_VER = System::Int8(0x2);
}	/* namespace Sertirt */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_SERTIRT)
using namespace Fmx::Sertirt;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_SertirtHPP
