// CodeGear C++Builder
// Copyright (c) 1995, 2020 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.SE.CV.DebugLog.pas' rev: 34.00 (Windows)

#ifndef Fmx_Se_Cv_DebuglogHPP
#define Fmx_Se_Cv_DebuglogHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Generics.Collections.hpp>
#include <FMX.TMSFNCListBox.hpp>
#include <FMX.SE.CV.LogToolBase.hpp>
#include <FMX.SE.Logger.hpp>
#include <System.Generics.Defaults.hpp>
#include <System.Types.hpp>
#include <System.SysUtils.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Se
{
namespace Cv
{
namespace Debuglog
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TSECVDebugLog;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TSECVDebugLog : public Fmx::Se::Cv::Logtoolbase::TSECVLogToolBase
{
	typedef Fmx::Se::Cv::Logtoolbase::TSECVLogToolBase inherited;
	
private:
	Fmx::Tmsfnclistbox::TTMSFNCListBox* FlbLogger;
	void __fastcall AssignLogger();
	void __fastcall RecvLogMessages(System::Generics::Collections::TList__1<Fmx::Se::Logger::TSELogMsg*>* ALogList);
	void __fastcall InitToolInstance();
	
protected:
	virtual void __fastcall Initialize();
	
public:
	virtual void __fastcall ClearLog(System::TObject* Sender);
	virtual void __fastcall Activate();
	virtual void __fastcall DeActivate();
	__fastcall virtual ~TSECVDebugLog();
public:
	/* TSECVLogToolBase.Create */ inline __fastcall virtual TSECVDebugLog(Fmx::Tmsfncpagecontrol::TTMSFNCPageControlContainer* const APageContainer) : Fmx::Se::Cv::Logtoolbase::TSECVLogToolBase(APageContainer) { }
	
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Debuglog */
}	/* namespace Cv */
}	/* namespace Se */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_SE_CV_DEBUGLOG)
using namespace Fmx::Se::Cv::Debuglog;
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
#endif	// Fmx_Se_Cv_DebuglogHPP
