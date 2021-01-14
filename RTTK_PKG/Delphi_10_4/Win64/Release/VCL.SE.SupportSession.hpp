// CodeGear C++Builder
// Copyright (c) 1995, 2020 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'VCL.SE.SupportSession.pas' rev: 34.00 (Windows)

#ifndef Vcl_Se_SupportsessionHPP
#define Vcl_Se_SupportsessionHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Generics.Collections.hpp>
#include <VCL.TMSFNCPersistence.hpp>
#include <VCL.TMSFNCTypes.hpp>
#include <VCL.TMSFNCBitmapContainer.hpp>
#include <VCL.SE.SupportSessionTypes.hpp>
#include <System.Classes.hpp>

//-- user supplied -----------------------------------------------------------

namespace Vcl
{
namespace Se
{
namespace Supportsession
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TSESSession;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TSESSession : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	System::TDateTime FStartTime;
	System::TDateTime FEndTime;
	Vcl::Tmsfncpersistence::TTMSFNCObjectList* FSteps;
	Vcl::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* FBMC;
	System::UnicodeString FApplicationName;
	System::UnicodeString FRepoPath;
	void __fastcall AddBitmap(Vcl::Se::Supportsessiontypes::TSESSessionStepBitmap* const ASessionBitmap);
	System::UnicodeString __fastcall SupportSessionFile();
	void __fastcall RegisterJSONDependency();
	
public:
	void __fastcall AddStep(const System::UnicodeString AStepMessage, const bool ASysGenerated = true);
	void __fastcall AddScreenShot(const System::UnicodeString AScreenName, Vcl::Tmsfnctypes::TTMSFNCBitmap* const ABitmap, const bool ASysGenerated = true, const System::UnicodeString AMsg = System::UnicodeString());
	__property System::UnicodeString SessionPath = {read=SupportSessionFile, write=FRepoPath};
	void __fastcall JSONImport(const System::UnicodeString AFileName);
	void __fastcall JSONExport();
	__fastcall TSESSession();
	__fastcall virtual ~TSESSession();
	
__published:
	__property Vcl::Tmsfncpersistence::TTMSFNCObjectList* Steps = {read=FSteps, write=FSteps};
	__property System::TDateTime StartTime = {read=FStartTime, write=FStartTime};
	__property System::TDateTime EndTime = {read=FEndTime, write=FEndTime};
	__property System::UnicodeString ApplicationName = {read=FApplicationName, write=FApplicationName};
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Supportsession */
}	/* namespace Se */
}	/* namespace Vcl */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_VCL_SE_SUPPORTSESSION)
using namespace Vcl::Se::Supportsession;
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
#endif	// Vcl_Se_SupportsessionHPP
