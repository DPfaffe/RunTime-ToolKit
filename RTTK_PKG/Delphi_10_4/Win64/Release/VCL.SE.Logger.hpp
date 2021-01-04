// CodeGear C++Builder
// Copyright (c) 1995, 2020 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'VCL.SE.Logger.pas' rev: 34.00 (Windows)

#ifndef Vcl_Se_LoggerHPP
#define Vcl_Se_LoggerHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.SysUtils.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <System.Generics.Collections.hpp>
#include <System.Generics.Defaults.hpp>
#include <System.Types.hpp>

//-- user supplied -----------------------------------------------------------

namespace Vcl
{
namespace Se
{
namespace Logger
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TSELogMsg;
__interface DELPHIINTERFACE ILogger;
typedef System::DelphiInterface<ILogger> _di_ILogger;
class DELPHICLASS TSELogger;
//-- type declarations -------------------------------------------------------
enum DECLSPEC_DENUM TSELogLevel : unsigned char { Trace, Debug, Info, Warn, Error };

class PASCALIMPLEMENTATION TSELogMsg : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	System::TDateTime FDTS;
	
public:
	TSELogLevel LogLevel;
	System::UnicodeString Msg;
	__property System::TDateTime DTS = {read=FDTS, write=FDTS};
	System::UnicodeString __fastcall PrintDTS(const bool AIncludeYMD = false);
	__fastcall TSELogMsg(const TSELogLevel ALogLevel, const System::UnicodeString AMsg);
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TSELogMsg() { }
	
};


typedef void __fastcall (__closure *TLogMessageEvent)(System::Generics::Collections::TList__1<TSELogMsg*>* ALogList);

__interface  INTERFACE_UUID("{C7C7A512-2BB6-43E9-95C3-6CB46AE176FE}") ILogger  : public System::IInterface 
{
	virtual void __fastcall Debug(const System::UnicodeString AMsg) = 0 /* overload */;
	virtual void __fastcall Debug(const System::UnicodeString AMsg, System::Sysutils::Exception* const AException) = 0 /* overload */;
	virtual System::Generics::Collections::TList__1<TSELogMsg*>* __fastcall LogQueue() = 0 ;
	virtual void __fastcall AssignReceiver(const TLogMessageEvent ALogReceiver) = 0 ;
};

class PASCALIMPLEMENTATION TSELogger : public System::TInterfacedObject
{
	typedef System::TInterfacedObject inherited;
	
private:
	System::Generics::Collections::TThreadedQueue__1<TSELogMsg*>* FLogQueue;
	int FLogQueueDepth;
	Vcl::Extctrls::TTimer* FLogTimer;
	System::Generics::Collections::TObjectQueue__1<TSELogMsg*>* FEntryQueue;
	TLogMessageEvent FLogReceiver;
	void __fastcall OnLogTimer(System::TObject* Sender);
	void __fastcall WriteMsg(const TSELogLevel ALogLevel, const System::UnicodeString AMsg)/* overload */;
	void __fastcall WriteMsg(const TSELogLevel ALogLevel, const System::UnicodeString AMsg, System::Sysutils::Exception* const AException)/* overload */;
	void __fastcall ReSizeQueue();
	int __fastcall LogEntryCount();
	void __fastcall AssignReceiver(const TLogMessageEvent ALogReceiver);
	
public:
	__fastcall TSELogger();
	__fastcall virtual ~TSELogger();
	void __fastcall Debug(const System::UnicodeString AMsg)/* overload */;
	void __fastcall Debug(const System::UnicodeString AMsg, System::Sysutils::Exception* const AException)/* overload */;
	System::Generics::Collections::TList__1<TSELogMsg*>* __fastcall LogQueue();
private:
	void *__ILogger;	// ILogger 
	
public:
	#if defined(MANAGED_INTERFACE_OPERATORS)
	// {C7C7A512-2BB6-43E9-95C3-6CB46AE176FE}
	operator _di_ILogger()
	{
		_di_ILogger intf;
		this->GetInterface(intf);
		return intf;
	}
	#else
	operator ILogger*(void) { return (ILogger*)&__ILogger; }
	#endif
	
};


//-- var, const, procedure ---------------------------------------------------
extern DELPHI_PACKAGE _di_ILogger Logger;
extern DELPHI_PACKAGE _di_ILogger __fastcall GetLogger(void);
}	/* namespace Logger */
}	/* namespace Se */
}	/* namespace Vcl */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_VCL_SE_LOGGER)
using namespace Vcl::Se::Logger;
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
#endif	// Vcl_Se_LoggerHPP
