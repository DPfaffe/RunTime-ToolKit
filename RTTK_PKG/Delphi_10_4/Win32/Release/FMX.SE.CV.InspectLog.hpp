// CodeGear C++Builder
// Copyright (c) 1995, 2020 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.SE.CV.InspectLog.pas' rev: 34.00 (Windows)

#ifndef Fmx_Se_Cv_InspectlogHPP
#define Fmx_Se_Cv_InspectlogHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Generics.Collections.hpp>
#include <FMX.TMSFNCPageControl.hpp>
#include <FMX.TMSFNCButton.hpp>
#include <FMX.TMSFNCHTMLText.hpp>
#include <FMX.TMSFNCTableView.hpp>
#include <FMX.TMSFNCImage.hpp>
#include <FMX.Types.hpp>
#include <FMX.Controls.hpp>
#include <FMX.SE.CV.LogToolBase.hpp>
#include <FMX.SE.SupportTypes.hpp>
#include <FMX.SE.SupportSession.hpp>
#include <FMX.SE.SupportSessionTypes.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Se
{
namespace Cv
{
namespace Inspectlog
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TSECVInspectLog;
//-- type declarations -------------------------------------------------------
#pragma pack(push,4)
class PASCALIMPLEMENTATION TSECVInspectLog : public Fmx::Se::Cv::Logtoolbase::TSECVLogToolBase
{
	typedef Fmx::Se::Cv::Logtoolbase::TSECVLogToolBase inherited;
	
private:
	int FLastStep;
	Fmx::Se::Supportsession::TSESSession* FSession;
	Fmx::Types::TTimer* FTimer;
	Fmx::Tmsfnctableview::TTMSFNCTableView* FTableView;
	Fmx::Tmsfnchtmltext::TTMSFNCHTMLText* FTextDetail;
	Fmx::Tmsfncimage::TTMSFNCImage* FDetailImage;
	void __fastcall PullEntries(System::TObject* Sender);
	void __fastcall TableItemAdd(Fmx::Se::Supportsessiontypes::TSESSessionStepBase* const ASessionStep);
	void __fastcall BeforeItemShowDetailControl(System::TObject* Sender, Fmx::Tmsfnctableview::TTMSFNCTableViewItem* AItem, Fmx::Controls::TControl* ADetailControl, bool &AAllow);
	
protected:
	virtual void __fastcall Initialize();
	
public:
	virtual void __fastcall ClearLog(System::TObject* Sender);
	virtual void __fastcall Activate();
	virtual void __fastcall DeActivate();
	void __fastcall AssignSession(Fmx::Se::Supportsession::TSESSession* const ASession);
	__fastcall virtual TSECVInspectLog(Fmx::Tmsfncpagecontrol::TTMSFNCPageControlContainer* const APageContainer);
	__fastcall virtual ~TSECVInspectLog();
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
}	/* namespace Inspectlog */
}	/* namespace Cv */
}	/* namespace Se */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_SE_CV_INSPECTLOG)
using namespace Fmx::Se::Cv::Inspectlog;
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
#endif	// Fmx_Se_Cv_InspectlogHPP
