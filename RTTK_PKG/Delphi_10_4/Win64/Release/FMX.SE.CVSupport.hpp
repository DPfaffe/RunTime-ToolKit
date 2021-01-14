// CodeGear C++Builder
// Copyright (c) 1995, 2020 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.SE.CVSupport.pas' rev: 34.00 (Windows)

#ifndef Fmx_Se_CvsupportHPP
#define Fmx_Se_CvsupportHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <System.Generics.Collections.hpp>
#include <System.Messaging.hpp>
#include <FMX.TMSFNCToolBar.hpp>
#include <FMX.TMSFNCTreeViewData.hpp>
#include <FMX.TMSFNCHTMLText.hpp>
#include <FMX.TMSFNCStatusBar.hpp>
#include <FMX.Forms.hpp>
#include <FMX.TabControl.hpp>
#include <FMX.Types.hpp>
#include <FMX.StdCtrls.hpp>
#include <FMX.TMSFNCSplitter.hpp>
#include <FMX.TMSFNCTaskDialog.hpp>
#include <FMX.SE.SupportTypes.hpp>
#include <FMX.SE.SupportRepository.hpp>
#include <FMX.SE.DBQuery.hpp>
#include <FMX.SE.Logger.hpp>
#include <FMX.SE.CV.DetailTab.hpp>
#include <FMX.SE.CV.NavTree.hpp>
#include <FMX.SE.CV.DetailPane.hpp>
#include <FMX.SE.CV.LogPanel.hpp>
#include <FMX.SE.Layout.hpp>
#include <System.SysUtils.hpp>
#include <System.UITypes.hpp>
#include <System.Generics.Defaults.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Se
{
namespace Cvsupport
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TSECVSupport;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TSECVSupport : public System::TObject
{
	typedef System::TObject inherited;
	
	
private:
	class DELPHICLASS TSECVToolBar;
	class PASCALIMPLEMENTATION TSECVToolBar : public System::TObject
	{
		typedef System::TObject inherited;
		
	private:
		Fmx::Se::Layout::TSELayout* FLayout;
		Fmx::Tmsfnctoolbar::TTMSFNCToolBar* FTBSETools;
		System::Generics::Collections::TDictionary__2<System::UnicodeString,Fmx::Tmsfnctoolbar::TTMSFNCToolBarButton*>* FButtons;
		void __fastcall CreateToolBar();
		void __fastcall AddButton(const System::UnicodeString AName);
		
	public:
		__fastcall TSECVToolBar(Fmx::Se::Layout::TSELayout* const ALayout);
		Fmx::Tmsfnctoolbar::TTMSFNCToolBarButton* __fastcall ButtonByName(const System::UnicodeString AName);
		__fastcall virtual ~TSECVToolBar();
	};
	
	
	
private:
	Fmx::Se::Layout::TSELayout* FLayout;
	Fmx::Forms::TForm* FOwner;
	Fmx::Se::Supportrepository::TSESRepository* FRepository;
	System::Generics::Collections::TObjectDictionary__2<Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNode*,Fmx::Se::Cv::Detailtab::TSECVDetailTab*>* FToolList;
	Fmx::Se::Layout::TSELayout* FlytLeft;
	Fmx::Tmsfncsplitter::TTMSFNCSplitter* FsplitR;
	Fmx::Se::Layout::TSELayout* FlytClient;
	Fmx::Se::Layout::TSELayout* FlytMain;
	Fmx::Se::Layout::TSELayout* FlytTools;
	Fmx::Se::Layout::TSELayout* FlytStatus;
	Fmx::Tmsfncstatusbar::TTMSFNCStatusBar* FSBSETools;
	Fmx::Tmsfncstatusbar::TTMSFNCStatusBarPanel* FSBTextMessage;
	int FSubscriptionId;
	Fmx::Se::Cv::Navtree::TSECVNavTree* FTreeDisp;
	Fmx::Se::Cv::Detailpane::TSECVDetailPane* FPageDisp;
	Fmx::Se::Cv::Logpanel::TSECVLogPanel* FLogPanel;
	TSECVToolBar* FToolBar;
	Fmx::Tmsfnctaskdialog::TTMSFNCTaskDialog* FAddNoteDialog;
	void __fastcall CreateLayouts();
	void __fastcall CreateStatusBar();
	void __fastcall StatusMessageSet(System::TObject* const Sender, System::Messaging::TMessageBase* const M);
	void __fastcall BindRepository();
	void __fastcall InitializeTools();
	void __fastcall SubScribeMessages();
	void __fastcall ShowAddNote(System::TObject* Sender);
	void __fastcall NoteAddDialogClosed(System::TObject* Sender);
	void __fastcall NoteAddDialogResult(System::TObject* Sender, System::Uitypes::TModalResult AModalResult);
	void __fastcall tvNodeClick(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode);
	void __fastcall SendStatusText(const System::UnicodeString ATextMessage, System::TObject* const Sender);
	
public:
	__fastcall TSECVSupport(Fmx::Se::Layout::TSELayout* const ALayout, Fmx::Forms::TForm* AOwner);
	__fastcall virtual ~TSECVSupport();
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Cvsupport */
}	/* namespace Se */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_SE_CVSUPPORT)
using namespace Fmx::Se::Cvsupport;
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
#endif	// Fmx_Se_CvsupportHPP
