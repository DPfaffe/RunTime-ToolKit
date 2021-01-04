// CodeGear C++Builder
// Copyright (c) 1995, 2020 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'VCL.SE.CV.LogPanel.pas' rev: 34.00 (Windows)

#ifndef Vcl_Se_Cv_LogpanelHPP
#define Vcl_Se_Cv_LogpanelHPP

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
#include <VCL.SE.CV.DisplayBase.hpp>
#include <VCL.SE.CV.LogToolBase.hpp>
#include <VCL.SE.SupportRepository.hpp>
#include <VCL.SE.Layout.hpp>
#include <System.Generics.Defaults.hpp>
#include <System.Types.hpp>
#include <System.SysUtils.hpp>

//-- user supplied -----------------------------------------------------------

namespace Vcl
{
namespace Se
{
namespace Cv
{
namespace Logpanel
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TSECVLogPanel;
//-- type declarations -------------------------------------------------------
#pragma pack(push,4)
class PASCALIMPLEMENTATION TSECVLogPanel : public Vcl::Se::Cv::Displaybase::TSECVDisplayBase
{
	typedef Vcl::Se::Cv::Displaybase::TSECVDisplayBase inherited;
	
private:
	Vcl::Se::Layout::TSELayout* FLayout;
	Vcl::Se::Layout::TSELayout* FpnlLog;
	Vcl::Se::Layout::TSELayout* FlytLogMenu;
	Vcl::Tmsfncbutton::TTMSFNCButton* FbtnClose;
	Vcl::Tmsfncbutton::TTMSFNCButton* FbtnClear;
	Vcl::Tmsfncpagecontrol::TTMSFNCPageControl* FPageControl;
	System::Generics::Collections::TObjectList__1<Vcl::Se::Cv::Logtoolbase::TSECVLogToolBase*>* FTools;
	void __fastcall PanelCreate();
	void __fastcall CreateLogTab();
	Vcl::Se::Cv::Logtoolbase::TSECVLogToolBase* __fastcall ActiveLog();
	void __fastcall ChangePage(System::TObject* Sender, int APreviousPageIndex, int ACurrentPageIndex);
	
protected:
	virtual void __fastcall RepositorySet(Vcl::Se::Supportrepository::TSESRepository* const ASupportRepository);
	
public:
	void __fastcall LogPanelShow(System::TObject* Sender);
	void __fastcall LogPanelHide(System::TObject* Sender);
	__fastcall TSECVLogPanel(Vcl::Se::Layout::TSELayout* const ALayout);
	__fastcall virtual ~TSECVLogPanel();
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
}	/* namespace Logpanel */
}	/* namespace Cv */
}	/* namespace Se */
}	/* namespace Vcl */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_VCL_SE_CV_LOGPANEL)
using namespace Vcl::Se::Cv::Logpanel;
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
#endif	// Vcl_Se_Cv_LogpanelHPP
