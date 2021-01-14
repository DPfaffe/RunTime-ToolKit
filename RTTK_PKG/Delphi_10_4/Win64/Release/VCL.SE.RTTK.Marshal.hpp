// CodeGear C++Builder
// Copyright (c) 1995, 2020 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'VCL.SE.RTTK.Marshal.pas' rev: 34.00 (Windows)

#ifndef Vcl_Se_Rttk_MarshalHPP
#define Vcl_Se_Rttk_MarshalHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <VCL.SE.Layout.hpp>
#include <VCL.SE.CVSupport.hpp>
#include <Vcl.Controls.hpp>

//-- user supplied -----------------------------------------------------------

namespace Vcl
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


class PASCALIMPLEMENTATION TSESupportForm : public Vcl::Forms::TForm
{
	typedef Vcl::Forms::TForm inherited;
	
private:
	Vcl::Se::Layout::TSELayout* pnlInspect;
	Vcl::Se::Cvsupport::TSECVSupport* FUITools;
	void __fastcall formDestroy(System::TObject* Sender);
	
public:
	__fastcall virtual TSESupportForm(System::Classes::TComponent* AOwner);
public:
	/* TCustomForm.CreateNew */ inline __fastcall virtual TSESupportForm(System::Classes::TComponent* AOwner, int Dummy) : Vcl::Forms::TForm(AOwner, Dummy) { }
	/* TCustomForm.Destroy */ inline __fastcall virtual ~TSESupportForm() { }
	
public:
	/* TWinControl.CreateParented */ inline __fastcall TSESupportForm(HWND ParentWindow) : Vcl::Forms::TForm(ParentWindow) { }
	
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Marshal */
}	/* namespace Rttk */
}	/* namespace Se */
}	/* namespace Vcl */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_VCL_SE_RTTK_MARSHAL)
using namespace Vcl::Se::Rttk::Marshal;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_VCL_SE_RTTK)
using namespace Vcl::Se::Rttk;
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
#endif	// Vcl_Se_Rttk_MarshalHPP
