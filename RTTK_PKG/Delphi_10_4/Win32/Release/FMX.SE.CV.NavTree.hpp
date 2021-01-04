// CodeGear C++Builder
// Copyright (c) 1995, 2020 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.SE.CV.NavTree.pas' rev: 34.00 (Windows)

#ifndef Fmx_Se_Cv_NavtreeHPP
#define Fmx_Se_Cv_NavtreeHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Generics.Collections.hpp>
#include <FMX.TMSFNCTreeView.hpp>
#include <FMX.TMSFNCTreeViewData.hpp>
#include <FMX.Menus.hpp>
#include <FMX.SE.CV.DisplayBase.hpp>
#include <FMX.SE.SupportRepository.hpp>
#include <FMX.SE.SupportProvider.hpp>
#include <FMX.SE.Layout.hpp>
#include <FMX.SE.SupportTypes.hpp>
#include <System.SysUtils.hpp>
#include <System.Generics.Defaults.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
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
#pragma pack(push,4)
class PASCALIMPLEMENTATION TSECVNavTree : public Fmx::Se::Cv::Displaybase::TSECVDisplayBase
{
	typedef Fmx::Se::Cv::Displaybase::TSECVDisplayBase inherited;
	
private:
	Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNode* FMouseOverNode;
	Fmx::Menus::TPopupMenu* FPM;
	System::Generics::Collections::TDictionary__2<System::UnicodeString,Fmx::Menus::TMenuItem*>* FPopOptions;
	
private:
	Fmx::Tmsfnctreeview::TTMSFNCTreeView* FTV;
	void __fastcall ExpandToNode(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNode* const ADestNode);
	void __fastcall NodeMouseEnter(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode);
	void __fastcall LoadRoot(Fmx::Se::Supporttypes::TSESRepoRoot* const ARepoRoot);
	void __fastcall LoadLabels(Fmx::Se::Supporttypes::TSESupportRepoCompRef* const ARepoItem, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNode* const AParentNode);
	void __fastcall LoadRepoItems(const System::DynamicArray<Fmx::Se::Supporttypes::TSESupportRepoCompRef*> ARepoItems, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNode* const AParentNode);
	void __fastcall FilterSelect(System::TObject* Sender, int AColumn, System::UnicodeString &ACondition);
	void __fastcall Popup(System::TObject* Sender);
	void __fastcall PopupOnClick(System::TObject* Sender);
	void __fastcall LoadPopupOptions();
	
public:
	void __fastcall LoadTreeFromModel();
	__property Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNode* MouseOverNode = {read=FMouseOverNode};
	__property Fmx::Tmsfnctreeview::TTMSFNCTreeView* TV = {read=FTV};
	__fastcall TSECVNavTree(Fmx::Se::Layout::TSELayout* const ALayout);
	__fastcall virtual ~TSECVNavTree();
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
}	/* namespace Navtree */
}	/* namespace Cv */
}	/* namespace Se */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_SE_CV_NAVTREE)
using namespace Fmx::Se::Cv::Navtree;
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
#endif	// Fmx_Se_Cv_NavtreeHPP
