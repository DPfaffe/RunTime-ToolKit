// CodeGear C++Builder
// Copyright (c) 1995, 2020 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.SE.SupportSession.pas' rev: 34.00 (Windows)

#ifndef Fmx_Se_SupportsessionHPP
#define Fmx_Se_SupportsessionHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Generics.Collections.hpp>
#include <FMX.TMSFNCPersistence.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.TMSFNCBitmapContainer.hpp>
#include <FMX.SE.SupportSessionTypes.hpp>
#include <System.Classes.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
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
	Fmx::Tmsfncpersistence::TTMSFNCObjectList* FSteps;
	Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* FBMC;
	System::UnicodeString FApplicationName;
	System::UnicodeString FRepoPath;
	void __fastcall AddBitmap(Fmx::Se::Supportsessiontypes::TSESSessionStepBitmap* const ASessionBitmap);
	System::UnicodeString __fastcall SupportSessionFile();
	void __fastcall RegisterJSONDependency();
	
public:
	void __fastcall AddStep(const System::UnicodeString AStepMessage, const bool ASysGenerated = true);
	void __fastcall AddScreenShot(const System::UnicodeString AScreenName, Fmx::Tmsfnctypes::TTMSFNCBitmap* const ABitmap, const bool ASysGenerated = true);
	__property System::UnicodeString SessionPath = {read=SupportSessionFile, write=FRepoPath};
	void __fastcall JSONImport(const System::UnicodeString AFileName);
	void __fastcall JSONExport();
	__fastcall TSESSession();
	__fastcall virtual ~TSESSession();
	
__published:
	__property Fmx::Tmsfncpersistence::TTMSFNCObjectList* Steps = {read=FSteps, write=FSteps};
	__property System::TDateTime StartTime = {read=FStartTime, write=FStartTime};
	__property System::TDateTime EndTime = {read=FEndTime, write=FEndTime};
	__property System::UnicodeString ApplicationName = {read=FApplicationName, write=FApplicationName};
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Supportsession */
}	/* namespace Se */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_SE_SUPPORTSESSION)
using namespace Fmx::Se::Supportsession;
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
#endif	// Fmx_Se_SupportsessionHPP
