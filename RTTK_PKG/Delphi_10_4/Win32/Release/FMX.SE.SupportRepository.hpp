// CodeGear C++Builder
// Copyright (c) 1995, 2020 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.SE.SupportRepository.pas' rev: 34.00 (Windows)

#ifndef Fmx_Se_SupportrepositoryHPP
#define Fmx_Se_SupportrepositoryHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Generics.Collections.hpp>
#include <System.Classes.hpp>
#include <FMX.SE.SupportTypes.hpp>
#include <FMX.SE.SupportProvider.hpp>
#include <FMX.SE.SupportTransform.hpp>
#include <FMX.SE.SupportSession.hpp>
#include <System.Messaging.hpp>
#include <System.SysUtils.hpp>
#include <System.Generics.Defaults.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
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
	System::Generics::Collections::TObjectDictionary__2<System::UnicodeString,Fmx::Se::Supporttypes::TSESRepoRoot*>* FRoots;
	Fmx::Se::Supportsession::TSESSession* FSession;
	Fmx::Se::Supportprovider::TSESProvider* FSupportProvider;
	Fmx::Se::Supporttransform::TSESTransform* FTransforms;
	System::Generics::Collections::TDictionary__2<System::TClass,int>* FMsgSubs;
	void __fastcall ReloadModel();
	int __fastcall GetRootCount();
	System::DynamicArray<Fmx::Se::Supporttypes::TSESRepoRoot*> __fastcall GetRoots();
	void __fastcall TransformRepo();
	void __fastcall TransformRepoItem(Fmx::Se::Supporttypes::TSESupportRepoCompRef* const ARepoItem);
	void __fastcall TakeScreenShots(const System::UnicodeString AMessage);
	int __fastcall MessageSubscribe(const System::TClass AClass, const System::Messaging::TMessageListenerMethod AListenerMethod);
	void __fastcall MsgOIMsgRecv(System::TObject* const Sender, System::Messaging::TMessageBase* const M);
	void __fastcall MsgOIScreenShotRecv(System::TObject* const Sender, System::Messaging::TMessageBase* const M);
	void __fastcall SubscribeToMessages();
	
public:
	Fmx::Se::Supporttypes::TSESRepoRoot* __fastcall ReloadRepoRoot(Fmx::Se::Supporttypes::TSESRepoRoot* const ARepoRoot);
	__property Fmx::Se::Supportsession::TSESSession* Session = {read=FSession};
	__property System::DynamicArray<Fmx::Se::Supporttypes::TSESRepoRoot*> Roots = {read=GetRoots};
	__property int RootCount = {read=GetRootCount, nodefault};
	void __fastcall ReloadRepository();
	__fastcall TSESRepository();
	__fastcall virtual ~TSESRepository();
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
}	/* namespace Supportrepository */
}	/* namespace Se */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_SE_SUPPORTREPOSITORY)
using namespace Fmx::Se::Supportrepository;
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
#endif	// Fmx_Se_SupportrepositoryHPP
