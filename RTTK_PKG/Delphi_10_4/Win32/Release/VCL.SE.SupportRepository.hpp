// CodeGear C++Builder
// Copyright (c) 1995, 2020 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'VCL.SE.SupportRepository.pas' rev: 34.00 (Windows)

#ifndef Vcl_Se_SupportrepositoryHPP
#define Vcl_Se_SupportrepositoryHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Generics.Collections.hpp>
#include <System.Classes.hpp>
#include <VCL.SE.SupportTypes.hpp>
#include <VCL.SE.SupportProvider.hpp>
#include <VCL.SE.SupportTransform.hpp>
#include <VCL.SE.SupportSession.hpp>
#include <System.Messaging.hpp>
#include <System.SysUtils.hpp>
#include <System.Generics.Defaults.hpp>

//-- user supplied -----------------------------------------------------------

namespace Vcl
{
namespace Se
{
namespace Supportrepository
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TSESRepository;
//-- type declarations -------------------------------------------------------
#pragma pack(push,4)
class PASCALIMPLEMENTATION TSESRepository : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	System::Generics::Collections::TObjectDictionary__2<System::UnicodeString,Vcl::Se::Supporttypes::TSESRepoRoot*>* FRoots;
	Vcl::Se::Supportsession::TSESSession* FSession;
	Vcl::Se::Supportprovider::TSESProvider* FSupportProvider;
	Vcl::Se::Supporttransform::TSESTransform* FTransforms;
	System::Generics::Collections::TDictionary__2<System::TClass,int>* FMsgSubs;
	void __fastcall ReloadModel();
	int __fastcall GetRootCount();
	System::DynamicArray<Vcl::Se::Supporttypes::TSESRepoRoot*> __fastcall GetRoots();
	void __fastcall TransformRepo();
	void __fastcall TransformRepoItem(Vcl::Se::Supporttypes::TSESupportRepoCompRef* const ARepoItem);
	void __fastcall TakeScreenShots(const System::UnicodeString AMessage);
	int __fastcall MessageSubscribe(const System::TClass AClass, const System::Messaging::TMessageListenerMethod AListenerMethod);
	void __fastcall MsgOIMsgRecv(System::TObject* const Sender, System::Messaging::TMessageBase* const M);
	void __fastcall MsgOIScreenShotRecv(System::TObject* const Sender, System::Messaging::TMessageBase* const M);
	void __fastcall SubscribeToMessages();
	
public:
	Vcl::Se::Supporttypes::TSESRepoRoot* __fastcall ReloadRepoRoot(Vcl::Se::Supporttypes::TSESRepoRoot* const ARepoRoot);
	__property Vcl::Se::Supportsession::TSESSession* Session = {read=FSession};
	__property System::DynamicArray<Vcl::Se::Supporttypes::TSESRepoRoot*> Roots = {read=GetRoots};
	__property int RootCount = {read=GetRootCount, nodefault};
	void __fastcall ReloadRepository();
	__fastcall TSESRepository();
	__fastcall virtual ~TSESRepository();
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
}	/* namespace Supportrepository */
}	/* namespace Se */
}	/* namespace Vcl */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_VCL_SE_SUPPORTREPOSITORY)
using namespace Vcl::Se::Supportrepository;
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
#endif	// Vcl_Se_SupportrepositoryHPP
