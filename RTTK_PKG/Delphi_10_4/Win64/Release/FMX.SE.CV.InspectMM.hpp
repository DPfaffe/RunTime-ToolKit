// CodeGear C++Builder
// Copyright (c) 1995, 2020 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.SE.CV.InspectMM.pas' rev: 34.00 (Windows)

#ifndef Fmx_Se_Cv_InspectmmHPP
#define Fmx_Se_Cv_InspectmmHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Messaging.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Se
{
namespace Cv
{
namespace Inspectmm
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TSESupportMsgBase;
class DELPHICLASS TSESupportMsg;
class DELPHICLASS TSEOIMsg;
class DELPHICLASS TSEOIScreenShot;
class DELPHICLASS TSESBTextChange;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TSESupportMsgBase : public System::Messaging::TMessageBase
{
	typedef System::Messaging::TMessageBase inherited;
	
private:
	System::TDateTime FMsgSendTime;
	System::UnicodeString __fastcall GetMessageTime();
	
public:
	__property System::TDateTime SentDTS = {read=FMsgSendTime};
	__property System::UnicodeString SentTime = {read=GetMessageTime};
	__fastcall TSESupportMsgBase();
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TSESupportMsgBase() { }
	
};


class PASCALIMPLEMENTATION TSESupportMsg : public TSESupportMsgBase
{
	typedef TSESupportMsgBase inherited;
	
private:
	System::UnicodeString FText;
	
public:
	__property System::UnicodeString Text = {read=FText};
	__fastcall TSESupportMsg(const System::UnicodeString AText);
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TSESupportMsg() { }
	
};


class PASCALIMPLEMENTATION TSEOIMsg : public TSESupportMsg
{
	typedef TSESupportMsg inherited;
	
private:
	System::UnicodeString FPropertyName;
	System::UnicodeString FPropertyValue;
	System::UnicodeString FComponentPath;
	
public:
	System::UnicodeString __fastcall LogText();
	__property System::UnicodeString PropertyName = {read=FPropertyName};
	__property System::UnicodeString PropertyValue = {read=FPropertyValue};
	__property System::UnicodeString ComponentPath = {read=FComponentPath};
	__fastcall TSEOIMsg(const System::UnicodeString AText, const System::UnicodeString APropName, const System::UnicodeString APropValue, const System::UnicodeString AComponentPath);
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TSEOIMsg() { }
	
};


class PASCALIMPLEMENTATION TSEOIScreenShot : public TSESupportMsg
{
	typedef TSESupportMsg inherited;
	
private:
	System::UnicodeString FPropertyName;
	System::UnicodeString FPropertyValue;
	
public:
	System::UnicodeString __fastcall LogText();
	__property System::UnicodeString PropertyName = {read=FPropertyName};
	__property System::UnicodeString PropertyValue = {read=FPropertyValue};
	__fastcall TSEOIScreenShot(const System::UnicodeString AText, const System::UnicodeString APropName, const System::UnicodeString APropValue);
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TSEOIScreenShot() { }
	
};


class PASCALIMPLEMENTATION TSESBTextChange : public TSESupportMsg
{
	typedef TSESupportMsg inherited;
	
public:
	/* TSESupportMsg.Create */ inline __fastcall TSESBTextChange(const System::UnicodeString AText) : TSESupportMsg(AText) { }
	
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TSESBTextChange() { }
	
};


//-- var, const, procedure ---------------------------------------------------
extern DELPHI_PACKAGE System::Messaging::TMessageManager* InspectMM;
}	/* namespace Inspectmm */
}	/* namespace Cv */
}	/* namespace Se */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_SE_CV_INSPECTMM)
using namespace Fmx::Se::Cv::Inspectmm;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_SE_CV)
using namespace Fmx::Se::Cv;
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
#endif	// Fmx_Se_Cv_InspectmmHPP
