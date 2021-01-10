// CodeGear C++Builder
// Copyright (c) 1995, 2020 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'VCL.SE.CV.NavTree.pas' rev: 34.00 (Windows)

#ifndef Vcl_Se_Cv_NavtreeHPP
#define Vcl_Se_Cv_NavtreeHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Generics.Collections.hpp>
#include <System.Classes.hpp>
#include <VCL.TMSFNCTreeView.hpp>
#include <VCL.TMSFNCTreeViewData.hpp>
#include <Vcl.Menus.hpp>
#include <VCL.SE.CV.DisplayBase.hpp>
#include <VCL.SE.SupportRepository.hpp>
#include <VCL.SE.SupportProvider.hpp>
#include <VCL.SE.Layout.hpp>
#include <VCL.SE.SupportTypes.hpp>
#include <VCL.SE.CV.DetailTab.hpp>
#include <System.SysUtils.hpp>
#include <System.Generics.Defaults.hpp>

//-- user supplied -----------------------------------------------------------

namespace Vcl
{
namespace Se
{
namespace Cv
{
namespace Navtree
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TSECVNavTree;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TSECVNavTree : public Vcl::Se::Cv::Displaybase::TSECVDisplayBase
{
	typedef Vcl::Se::Cv::Displaybase::TSECVDisplayBase inherited;
	
private:
	Vcl::Tmsfnctreeviewdata::TTMSFNCTreeViewNode* FMouseOverNode;
	Vcl::Menus::TPopupMenu* FPM;
	System::Generics::Collections::TDictionary__2<System::UnicodeString,Vcl::Menus::TMenuItem*>* FPopOptions;
	
private:
	Vcl::Tmsfnctreeview::TTMSFNCTreeView* FTV;
	System::UnicodeString __fastcall FormatClass(const System::UnicodeString AClassString);
	void __fastcall ExpandToNode(Vcl::Tmsfnctreeviewdata::TTMSFNCTreeViewNode* const ADestNode);
	void __fastcall NodeMouseEnter(System::TObject* Sender, Vcl::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode);
	void __fastcall LoadRoot(Vcl::Se::Supporttypes::TSESRepoRoot* const ARepoRoot);
	void __fastcall LoadLabels(Vcl::Se::Supporttypes::TSESupportRepoCompRef* const ARepoItem, Vcl::Tmsfnctreeviewdata::TTMSFNCTreeViewNode* const AParentNode);
	void __fastcall LoadRepoItems(const System::TArray__1<Vcl::Se::Supporttypes::TSESupportRepoCompRef*> ARepoItems, Vcl::Tmsfnctreeviewdata::TTMSFNCTreeViewNode* const AParentNode);
	void __fastcall FilterSelect(System::TObject* Sender, int AColumn, System::UnicodeString &ACondition);
	void __fastcall Popup(System::TObject* Sender);
	void __fastcall PopupOnClick(System::TObject* Sender);
	void __fastcall LoadPopupOptions();
	
public:
	void __fastcall LoadTreeFromModel();
	void __fastcall DetailTabChanged(System::TObject* Sender, Vcl::Se::Cv::Detailtab::TSECVDetailTab* const ADetailTab);
	__property Vcl::Tmsfnctreeviewdata::TTMSFNCTreeViewNode* MouseOverNode = {read=FMouseOverNode};
	__property Vcl::Tmsfnctreeview::TTMSFNCTreeView* TV = {read=FTV};
	__fastcall TSECVNavTree(Vcl::Se::Layout::TSELayout* const ALayout, System::Classes::TComponent* const AOwner);
	__fastcall virtual ~TSECVNavTree();
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Navtree */
}	/* namespace Cv */
}	/* namespace Se */
}	/* namespace Vcl */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_VCL_SE_CV_NAVTREE)
using namespace Vcl::Se::Cv::Navtree;
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
#endif	// Vcl_Se_Cv_NavtreeHPP
