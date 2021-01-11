// CodeGear C++Builder
// Copyright (c) 1995, 2020 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'VCL.SE.CVSupport.pas' rev: 34.00 (Windows)

#ifndef Vcl_Se_CvsupportHPP
#define Vcl_Se_CvsupportHPP

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
#include <VCL.TMSFNCToolBar.hpp>
#include <VCL.TMSFNCTreeViewData.hpp>
#include <VCL.TMSFNCHTMLText.hpp>
#include <VCL.TMSFNCStatusBar.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <VCL.TMSFNCSplitter.hpp>
#include <VCL.TMSFNCTaskDialog.hpp>
#include <Vcl.Forms.hpp>
#include <VCL.SE.SupportTypes.hpp>
#include <VCL.SE.SupportRepository.hpp>
#include <VCL.SE.DBQuery.hpp>
#include <VCL.SE.Logger.hpp>
#include <VCL.SE.CV.DetailTab.hpp>
#include <VCL.SE.CV.NavTree.hpp>
#include <VCL.SE.CV.DetailPane.hpp>
#include <VCL.SE.CV.LogPanel.hpp>
#include <VCL.SE.Layout.hpp>
#include <System.SysUtils.hpp>
#include <System.UITypes.hpp>
#include <System.Generics.Defaults.hpp>

//-- user supplied -----------------------------------------------------------

namespace Vcl
{
namespace Se
{
namespace Cvsupport
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TSECVSupport;
//-- type declarations -------------------------------------------------------
#pragma pack(push,4)
class PASCALIMPLEMENTATION TSECVSupport : public System::TObject
{
	typedef System::TObject inherited;
	
	
private:
	class DELPHICLASS TSECVToolBar;
	class PASCALIMPLEMENTATION TSECVToolBar : public System::TObject
	{
		typedef System::TObject inherited;
		
	private:
		Vcl::Se::Layout::TSELayout* FLayout;
		Vcl::Tmsfnctoolbar::TTMSFNCToolBar* FTBSETools;
		System::Generics::Collections::TDictionary__2<System::UnicodeString,Vcl::Tmsfnctoolbar::TTMSFNCToolBarButton*>* FButtons;
		void __fastcall CreateToolBar();
		void __fastcall AddButton(const System::UnicodeString AName);
		
	public:
		__fastcall TSECVToolBar(Vcl::Se::Layout::TSELayout* const ALayout);
		Vcl::Tmsfnctoolbar::TTMSFNCToolBarButton* __fastcall ButtonByName(const System::UnicodeString AName);
		__fastcall virtual ~TSECVToolBar();
	};
	
	
	
private:
	Vcl::Se::Layout::TSELayout* FLayout;
	Vcl::Forms::TForm* FOwner;
	Vcl::Se::Supportrepository::TSESRepository* FRepository;
	System::Generics::Collections::TObjectDictionary__2<Vcl::Tmsfnctreeviewdata::TTMSFNCTreeViewNode*,Vcl::Se::Cv::Detailtab::TSECVDetailTab*>* FToolList;
	Vcl::Se::Layout::TSELayout* FlytLeft;
	Vcl::Tmsfncsplitter::TTMSFNCSplitter* FsplitR;
	Vcl::Se::Layout::TSELayout* FlytClient;
	Vcl::Se::Layout::TSELayout* FlytMain;
	Vcl::Se::Layout::TSELayout* FlytTools;
	Vcl::Se::Layout::TSELayout* FlytStatus;
	Vcl::Tmsfncstatusbar::TTMSFNCStatusBar* FSBSETools;
	Vcl::Tmsfncstatusbar::TTMSFNCStatusBarPanel* FSBTextMessage;
	int FSubscriptionId;
	Vcl::Se::Cv::Navtree::TSECVNavTree* FTreeDisp;
	Vcl::Se::Cv::Detailpane::TSECVDetailPane* FPageDisp;
	Vcl::Se::Cv::Logpanel::TSECVLogPanel* FLogPanel;
	TSECVToolBar* FToolBar;
	Vcl::Tmsfnctaskdialog::TTMSFNCTaskDialog* FAddNoteDialog;
	void __fastcall CreateLayouts();
	void __fastcall CreateStatusBar();
	void __fastcall StatusMessageSet(System::TObject* const Sender, System::Messaging::TMessageBase* const M);
	void __fastcall BindRepository();
	void __fastcall InitializeTools();
	void __fastcall SubScribeMessages();
	void __fastcall ShowAddNote(System::TObject* Sender);
	void __fastcall NoteAddDialogClosed(System::TObject* Sender);
	void __fastcall NoteAddDialogResult(System::TObject* Sender, System::Uitypes::TModalResult AModalResult);
	void __fastcall tvNodeClick(System::TObject* Sender, Vcl::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode);
	void __fastcall SendStatusText(const System::UnicodeString ATextMessage, System::TObject* const Sender);
	
public:
	__fastcall TSECVSupport(Vcl::Se::Layout::TSELayout* const ALayout, Vcl::Forms::TForm* AOwner);
	__fastcall virtual ~TSECVSupport();
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
}	/* namespace Cvsupport */
}	/* namespace Se */
}	/* namespace Vcl */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_VCL_SE_CVSUPPORT)
using namespace Vcl::Se::Cvsupport;
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
#endif	// Vcl_Se_CvsupportHPP
