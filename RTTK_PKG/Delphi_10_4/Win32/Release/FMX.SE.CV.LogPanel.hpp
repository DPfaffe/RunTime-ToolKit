// CodeGear C++Builder
// Copyright (c) 1995, 2020 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.SE.CV.LogPanel.pas' rev: 34.00 (Windows)

#ifndef Fmx_Se_Cv_LogpanelHPP
#define Fmx_Se_Cv_LogpanelHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Generics.Collections.hpp>
#include <System.Classes.hpp>
#include <FMX.TMSFNCPageControl.hpp>
#include <FMX.TMSFNCButton.hpp>
#include <FMX.SE.CV.DisplayBase.hpp>
#include <FMX.SE.CV.LogToolBase.hpp>
#include <FMX.SE.SupportRepository.hpp>
#include <FMX.SE.Layout.hpp>
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
namespace Logpanel
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TSECVLogPanel;
//-- type declarations -------------------------------------------------------
#pragma pack(push,4)
class PASCALIMPLEMENTATION TSECVLogPanel : public Fmx::Se::Cv::Displaybase::TSECVDisplayBase
{
	typedef Fmx::Se::Cv::Displaybase::TSECVDisplayBase inherited;
	
private:
	Fmx::Se::Layout::TSELayout* FpnlLog;
	Fmx::Se::Layout::TSELayout* FlytLogMenu;
	Fmx::Tmsfncbutton::TTMSFNCButton* FbtnClear;
	Fmx::Tmsfncpagecontrol::TTMSFNCPageControl* FPageControl;
	System::Generics::Collections::TObjectList__1<Fmx::Se::Cv::Logtoolbase::TSECVLogToolBase*>* FTools;
	void __fastcall PanelCreate();
	void __fastcall CreateLogTab();
	Fmx::Se::Cv::Logtoolbase::TSECVLogToolBase* __fastcall ActiveLog();
	void __fastcall ChangePage(System::TObject* Sender, int APreviousPageIndex, int ACurrentPageIndex);
	bool __fastcall PnlVisibleGet();
	
protected:
	virtual void __fastcall RepositorySet(Fmx::Se::Supportrepository::TSESRepository* const ASupportRepository);
	
public:
	void __fastcall LogPanelShow(System::TObject* Sender);
	__property bool Visible = {read=PnlVisibleGet, nodefault};
	__fastcall TSECVLogPanel(Fmx::Se::Layout::TSELayout* const ALayout, System::Classes::TComponent* const AOwner);
	__fastcall virtual ~TSECVLogPanel();
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
}	/* namespace Logpanel */
}	/* namespace Cv */
}	/* namespace Se */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_SE_CV_LOGPANEL)
using namespace Fmx::Se::Cv::Logpanel;
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
#endif	// Fmx_Se_Cv_LogpanelHPP
