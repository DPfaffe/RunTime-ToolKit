// CodeGear C++Builder
// Copyright (c) 1995, 2020 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.SE.SupportSessionTypes.pas' rev: 34.00 (Windows)

#ifndef Fmx_Se_SupportsessiontypesHPP
#define Fmx_Se_SupportsessiontypesHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <FMX.TMSFNCPersistence.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <System.Classes.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Se
{
namespace Supportsessiontypes
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TSESSessionStepBase;
class DELPHICLASS TSESSessionStepLog;
class DELPHICLASS TSESSessionStepBitmap;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TSESSessionStepBase : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	System::TDateTime FDTS;
	bool FSysGenerated;
	System::UnicodeString __fastcall GetDisplayDTS();
	virtual System::UnicodeString __fastcall GetDisplayString() = 0 ;
	System::UnicodeString __fastcall GetReportDTSHtml();
	virtual System::UnicodeString __fastcall GetReportHtml() = 0 ;
	
public:
	__property System::UnicodeString DisplayString = {read=GetDisplayString};
	__property System::UnicodeString DTSString = {read=GetDisplayDTS};
	__property System::UnicodeString ReportHtmlText = {read=GetReportHtml};
	__fastcall TSESSessionStepBase(const bool ASysGenerated);
	
__published:
	__property System::TDateTime DTS = {read=FDTS, write=FDTS};
	__property bool SysGenerated = {read=FSysGenerated, write=FSysGenerated, nodefault};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TSESSessionStepBase() { }
	
};


class PASCALIMPLEMENTATION TSESSessionStepLog : public TSESSessionStepBase
{
	typedef TSESSessionStepBase inherited;
	
private:
	System::UnicodeString FStepMessage;
	virtual System::UnicodeString __fastcall GetDisplayString();
	virtual System::UnicodeString __fastcall GetReportHtml();
	
public:
	__property System::UnicodeString DisplayString = {read=GetDisplayString};
	__fastcall TSESSessionStepLog(const System::UnicodeString AStepMessage, const bool ASysGenerated);
	
__published:
	__property System::UnicodeString StepMessage = {read=FStepMessage, write=FStepMessage};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TSESSessionStepLog() { }
	
};


class PASCALIMPLEMENTATION TSESSessionStepBitmap : public TSESSessionStepBase
{
	typedef TSESSessionStepBase inherited;
	
private:
	System::UnicodeString FStepMessage;
	Fmx::Tmsfnctypes::TTMSFNCBitmap* FBitmap;
	GUID FGUID;
	virtual System::UnicodeString __fastcall GetDisplayString();
	System::UnicodeString __fastcall GetGuidString();
	virtual System::UnicodeString __fastcall GetReportHtml();
	Fmx::Tmsfnctypes::TTMSFNCBitmap* __fastcall BitMapGet();
	
public:
	__property System::UnicodeString DisplayString = {read=GetDisplayString};
	__property System::UnicodeString GUID = {read=GetGuidString};
	__fastcall TSESSessionStepBitmap(const System::UnicodeString AStepMessage, Fmx::Tmsfnctypes::TTMSFNCBitmap* const ABitmap, const bool ASysGenerated);
	__fastcall virtual ~TSESSessionStepBitmap();
	
__published:
	__property System::UnicodeString StepMessage = {read=FStepMessage, write=FStepMessage};
	__property Fmx::Tmsfnctypes::TTMSFNCBitmap* Bitmap = {read=BitMapGet, write=FBitmap};
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Supportsessiontypes */
}	/* namespace Se */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_SE_SUPPORTSESSIONTYPES)
using namespace Fmx::Se::Supportsessiontypes;
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
#endif	// Fmx_Se_SupportsessiontypesHPP
