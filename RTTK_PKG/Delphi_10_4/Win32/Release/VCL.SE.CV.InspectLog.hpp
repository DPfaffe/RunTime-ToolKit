// CodeGear C++Builder
// Copyright (c) 1995, 2020 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'VCL.SE.CV.InspectLog.pas' rev: 34.00 (Windows)

#ifndef Vcl_Se_Cv_InspectlogHPP
#define Vcl_Se_Cv_InspectlogHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Generics.Collections.hpp>
#include <VCL.TMSFNCPageControl.hpp>
#include <VCL.TMSFNCButton.hpp>
#include <VCL.TMSFNCHTMLText.hpp>
#include <VCL.TMSFNCTableView.hpp>
#include <VCL.TMSFNCImage.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <Vcl.Controls.hpp>
#include <VCL.SE.CV.LogToolBase.hpp>
#include <VCL.SE.SupportTypes.hpp>
#include <VCL.SE.SupportSession.hpp>
#include <VCL.SE.SupportSessionTypes.hpp>

//-- user supplied -----------------------------------------------------------

namespace Vcl
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
class PASCALIMPLEMENTATION TSECVInspectLog : public Vcl::Se::Cv::Logtoolbase::TSECVLogToolBase
{
	typedef Vcl::Se::Cv::Logtoolbase::TSECVLogToolBase inherited;
	
private:
	int FLastStep;
	Vcl::Se::Supportsession::TSESSession* FSession;
	Vcl::Extctrls::TTimer* FTimer;
	Vcl::Tmsfnctableview::TTMSFNCTableView* FTableView;
	Vcl::Tmsfnchtmltext::TTMSFNCHTMLText* FTextDetail;
	Vcl::Tmsfncimage::TTMSFNCImage* FDetailImage;
	void __fastcall PullEntries(System::TObject* Sender);
	void __fastcall TableItemAdd(Vcl::Se::Supportsessiontypes::TSESSessionStepBase* const ASessionStep);
	void __fastcall BeforeItemShowDetailControl(System::TObject* Sender, Vcl::Tmsfnctableview::TTMSFNCTableViewItem* AItem, Vcl::Controls::TControl* ADetailControl, bool &AAllow);
	
protected:
	virtual void __fastcall Initialize();
	
public:
	virtual void __fastcall ClearLog(System::TObject* Sender);
	virtual void __fastcall Activate();
	virtual void __fastcall DeActivate();
	void __fastcall AssignSession(Vcl::Se::Supportsession::TSESSession* const ASession);
	__fastcall virtual TSECVInspectLog(Vcl::Tmsfncpagecontrol::TTMSFNCPageControlContainer* const APageContainer);
	__fastcall virtual ~TSECVInspectLog();
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
}	/* namespace Inspectlog */
}	/* namespace Cv */
}	/* namespace Se */
}	/* namespace Vcl */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_VCL_SE_CV_INSPECTLOG)
using namespace Vcl::Se::Cv::Inspectlog;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_VCL_SE_CV)
using namespace Vcl::Se::Cv;
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
#endif	// Vcl_Se_Cv_InspectlogHPP
