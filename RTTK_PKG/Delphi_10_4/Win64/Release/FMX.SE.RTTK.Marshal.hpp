// CodeGear C++Builder
// Copyright (c) 1995, 2020 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.SE.RTTK.Marshal.pas' rev: 34.00 (Windows)

#ifndef Fmx_Se_Rttk_MarshalHPP
#define Fmx_Se_Rttk_MarshalHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <FMX.StdCtrls.hpp>
#include <FMX.Forms.hpp>
#include <FMX.SE.Layout.hpp>
#include <FMX.SE.CVSupport.hpp>
#include <FMX.Types.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Se
{
namespace Rttk
{
namespace Marshal
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TSERTTKWorker;
class DELPHICLASS TSESupportForm;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TSERTTKWorker : public System::TObject
{
	typedef System::TObject inherited;
	
public:
	__classmethod void __fastcall ShowMarshal();
public:
	/* TObject.Create */ inline __fastcall TSERTTKWorker() : System::TObject() { }
	/* TObject.Destroy */ inline __fastcall virtual ~TSERTTKWorker() { }
	
};


class PASCALIMPLEMENTATION TSESupportForm : public Fmx::Forms::TForm
{
	typedef Fmx::Forms::TForm inherited;
	
private:
	Fmx::Se::Layout::TSELayout* pnlInspect;
	Fmx::Se::Cvsupport::TSECVSupport* FUITools;
	void __fastcall formDestroy(System::TObject* Sender);
	
public:
	__fastcall virtual TSESupportForm(System::Classes::TComponent* AOwner);
public:
	/* TCustomForm.CreateNew */ inline __fastcall virtual TSESupportForm(System::Classes::TComponent* AOwner, NativeInt Dummy) : Fmx::Forms::TForm(AOwner, Dummy) { }
	/* TCustomForm.Destroy */ inline __fastcall virtual ~TSESupportForm() { }
	
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Marshal */
}	/* namespace Rttk */
}	/* namespace Se */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_SE_RTTK_MARSHAL)
using namespace Fmx::Se::Rttk::Marshal;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_SE_RTTK)
using namespace Fmx::Se::Rttk;
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
#endif	// Fmx_Se_Rttk_MarshalHPP
