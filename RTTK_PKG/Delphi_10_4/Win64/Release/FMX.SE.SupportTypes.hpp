// CodeGear C++Builder
// Copyright (c) 1995, 2020 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.SE.SupportTypes.pas' rev: 34.00 (Windows)

#ifndef Fmx_Se_SupporttypesHPP
#define Fmx_Se_SupporttypesHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <System.SysUtils.hpp>
#include <System.Generics.Collections.hpp>
#include <System.Generics.Defaults.hpp>
#include <System.Types.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Se
{
namespace Supporttypes
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TSESInspectToolBase;
class DELPHICLASS TSESITObjectInspector;
class DELPHICLASS TSESITQuery;
class DELPHICLASS TSESITGrid;
class DELPHICLASS TSESToolInfo;
class DELPHICLASS TSESMenuOptionBase;
class DELPHICLASS TSESRepoBase;
class DELPHICLASS TSESupportRepoCompRef;
class DELPHICLASS TSESupportRepoItem;
class DELPHICLASS TSESRepoLabel;
class DELPHICLASS TSESRepoRoot;
struct TComponentHelper /* Helper for class 'System::Classes::TComponent*' */;
class DELPHICLASS ETransformException;
class DELPHICLASS ETransformIndividualFailed;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TSESInspectToolBase : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	TSESupportRepoCompRef* FRefComponent;
	System::Classes::TComponent* __fastcall GetAppComponent();
	
public:
	System::UnicodeString ToolType;
	System::UnicodeString DisplayText;
	__property TSESupportRepoCompRef* RefComp = {read=FRefComponent};
	__property System::Classes::TComponent* AppComponent = {read=GetAppComponent};
	__fastcall TSESInspectToolBase(TSESupportRepoCompRef* const ARefComp);
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TSESInspectToolBase() { }
	
};


class PASCALIMPLEMENTATION TSESITObjectInspector : public TSESInspectToolBase
{
	typedef TSESInspectToolBase inherited;
	
private:
	System::UnicodeString FNoRead;
	
public:
	__property System::UnicodeString NoRead = {read=FNoRead};
	__fastcall TSESITObjectInspector(TSESupportRepoCompRef* const ARefComp, const System::UnicodeString ADoNotRead);
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TSESITObjectInspector() { }
	
};


class PASCALIMPLEMENTATION TSESITQuery : public TSESInspectToolBase
{
	typedef TSESInspectToolBase inherited;
	
public:
	/* TSESInspectToolBase.Create */ inline __fastcall TSESITQuery(TSESupportRepoCompRef* const ARefComp) : TSESInspectToolBase(ARefComp) { }
	
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TSESITQuery() { }
	
};


class PASCALIMPLEMENTATION TSESITGrid : public TSESInspectToolBase
{
	typedef TSESInspectToolBase inherited;
	
public:
	/* TSESInspectToolBase.Create */ inline __fastcall TSESITGrid(TSESupportRepoCompRef* const ARefComp) : TSESInspectToolBase(ARefComp) { }
	
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TSESITGrid() { }
	
};


class PASCALIMPLEMENTATION TSESToolInfo : public System::TObject
{
	typedef System::TObject inherited;
	
public:
	System::Generics::Collections::TList__1<TSESInspectToolBase*>* Tools;
	void __fastcall ToolAdd(TSESInspectToolBase* const ATool);
public:
	/* TObject.Create */ inline __fastcall TSESToolInfo() : System::TObject() { }
	/* TObject.Destroy */ inline __fastcall virtual ~TSESToolInfo() { }
	
};


enum DECLSPEC_DENUM TSESPMOption : unsigned char { pmoShowPath, pmoGoToActive };

class PASCALIMPLEMENTATION TSESMenuOptionBase : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	System::UnicodeString FOptionText;
	
public:
	virtual bool __fastcall Enabled() = 0 ;
	virtual bool __fastcall Visible() = 0 ;
	__property System::UnicodeString OptionText = {read=FOptionText};
	virtual void __fastcall OnClick(System::TObject* Sender) = 0 ;
	__fastcall TSESMenuOptionBase(const System::UnicodeString AOptionText);
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TSESMenuOptionBase() { }
	
};


class PASCALIMPLEMENTATION TSESRepoBase : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	System::Generics::Collections::TObjectList__1<TSESRepoLabel*>* FLabels;
	System::Generics::Collections::TList__1<TSESupportRepoCompRef*>* FItems;
	
private:
	System::UnicodeString FText1;
	System::UnicodeString FText2;
	virtual System::UnicodeString __fastcall GetText1();
	virtual System::UnicodeString __fastcall GetText2();
	System::TArray__1<TSESRepoLabel*> __fastcall GetLabels();
	int __fastcall GetItemCount();
	System::TArray__1<TSESupportRepoCompRef*> __fastcall GetItems();
	
public:
	__property System::UnicodeString Text1 = {read=GetText1};
	__property System::UnicodeString Text2 = {read=GetText2};
	__property System::TArray__1<TSESRepoLabel*> Labels = {read=GetLabels};
	void __fastcall AddChild(TSESupportRepoCompRef* const ASupportBase);
	TSESRepoLabel* __fastcall AddLabel(const System::UnicodeString ALabel);
	__property System::TArray__1<TSESupportRepoCompRef*> Items = {read=GetItems};
	__property int ItemCount = {read=GetItemCount, nodefault};
	__property System::Generics::Collections::TList__1<TSESupportRepoCompRef*>* ItemList = {read=FItems};
	__fastcall TSESRepoBase();
	__fastcall virtual ~TSESRepoBase();
};


class PASCALIMPLEMENTATION TSESupportRepoCompRef : public TSESRepoBase
{
	typedef TSESRepoBase inherited;
	
private:
	System::Classes::TComponent* FAppComponent;
	System::UnicodeString FAppCompPath;
	int FCompLevel;
	System::Generics::Collections::TObjectList__1<TSESInspectToolBase*>* FToolInfos;
	System::UnicodeString __fastcall GetParentName();
	void __fastcall SetParentPath(System::Classes::TComponent* AComp);
	void __fastcall CheckParent();
	
private:
	int __fastcall GetParentHash();
	virtual System::UnicodeString __fastcall GetText1();
	virtual System::UnicodeString __fastcall GetText2();
	System::UnicodeString __fastcall GetCompClassName();
	
public:
	bool __fastcall ParentAccessible();
	__property System::Classes::TComponent* AppComponent = {read=FAppComponent};
	int __fastcall AppCompHash();
	void __fastcall ToolAdd(TSESInspectToolBase* const ATool);
	__property System::Generics::Collections::TObjectList__1<TSESInspectToolBase*>* Tools = {read=FToolInfos};
	__property System::UnicodeString AppCompParentName = {read=GetParentName};
	__property System::UnicodeString AppCompClassName = {read=GetCompClassName};
	__property int AppCompParentHash = {read=GetParentHash, nodefault};
	__property System::UnicodeString AppCompPath = {read=FAppCompPath};
	__property int AppCompLevel = {read=FCompLevel, nodefault};
	__fastcall virtual TSESupportRepoCompRef(System::Classes::TComponent* const AComponent);
	__fastcall virtual ~TSESupportRepoCompRef();
};


class PASCALIMPLEMENTATION TSESupportRepoItem : public TSESupportRepoCompRef
{
	typedef TSESupportRepoCompRef inherited;
	
public:
	/* TSESupportRepoCompRef.Create */ inline __fastcall virtual TSESupportRepoItem(System::Classes::TComponent* const AComponent) : TSESupportRepoCompRef(AComponent) { }
	/* TSESupportRepoCompRef.Destroy */ inline __fastcall virtual ~TSESupportRepoItem() { }
	
};


class PASCALIMPLEMENTATION TSESRepoLabel : public TSESRepoBase
{
	typedef TSESRepoBase inherited;
	
public:
	__fastcall TSESRepoLabel(const System::UnicodeString ALabel);
public:
	/* TSESRepoBase.Destroy */ inline __fastcall virtual ~TSESRepoLabel() { }
	
};


class PASCALIMPLEMENTATION TSESRepoRoot : public TSESupportRepoCompRef
{
	typedef TSESupportRepoCompRef inherited;
	
private:
	void __fastcall AddRootDiscovery(TSESupportRepoItem* const ARepoItem);
	void __fastcall AddChildDiscovery(TSESupportRepoItem* const AChildComp);
	bool __fastcall ParentExists(TSESupportRepoItem* const AChildComp);
	
protected:
	System::Generics::Collections::TObjectDictionary__2<int,TSESupportRepoItem*>* FHashes;
	virtual System::UnicodeString __fastcall GetDisplayName() = 0 ;
	virtual void __fastcall TreeComps() = 0 ;
	
public:
	void __fastcall TreeChildObjects(const int AStartLevel);
	__property System::UnicodeString DisplayName = {read=GetDisplayName};
	__fastcall virtual TSESRepoRoot(System::Classes::TComponent* const AComponent);
	__fastcall virtual ~TSESRepoRoot();
};


class PASCALIMPLEMENTATION ETransformException : public System::Sysutils::Exception
{
	typedef System::Sysutils::Exception inherited;
	
public:
	/* Exception.Create */ inline __fastcall ETransformException(const System::UnicodeString Msg) : System::Sysutils::Exception(Msg) { }
	/* Exception.CreateFmt */ inline __fastcall ETransformException(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High) : System::Sysutils::Exception(Msg, Args, Args_High) { }
	/* Exception.CreateRes */ inline __fastcall ETransformException(NativeUInt Ident)/* overload */ : System::Sysutils::Exception(Ident) { }
	/* Exception.CreateRes */ inline __fastcall ETransformException(System::PResStringRec ResStringRec)/* overload */ : System::Sysutils::Exception(ResStringRec) { }
	/* Exception.CreateResFmt */ inline __fastcall ETransformException(NativeUInt Ident, const System::TVarRec *Args, const int Args_High)/* overload */ : System::Sysutils::Exception(Ident, Args, Args_High) { }
	/* Exception.CreateResFmt */ inline __fastcall ETransformException(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High)/* overload */ : System::Sysutils::Exception(ResStringRec, Args, Args_High) { }
	/* Exception.CreateHelp */ inline __fastcall ETransformException(const System::UnicodeString Msg, int AHelpContext) : System::Sysutils::Exception(Msg, AHelpContext) { }
	/* Exception.CreateFmtHelp */ inline __fastcall ETransformException(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High, int AHelpContext) : System::Sysutils::Exception(Msg, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall ETransformException(NativeUInt Ident, int AHelpContext)/* overload */ : System::Sysutils::Exception(Ident, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall ETransformException(System::PResStringRec ResStringRec, int AHelpContext)/* overload */ : System::Sysutils::Exception(ResStringRec, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall ETransformException(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : System::Sysutils::Exception(ResStringRec, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall ETransformException(NativeUInt Ident, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : System::Sysutils::Exception(Ident, Args, Args_High, AHelpContext) { }
	/* Exception.Destroy */ inline __fastcall virtual ~ETransformException() { }
	
};


class PASCALIMPLEMENTATION ETransformIndividualFailed : public ETransformException
{
	typedef ETransformException inherited;
	
public:
	/* Exception.Create */ inline __fastcall ETransformIndividualFailed(const System::UnicodeString Msg) : ETransformException(Msg) { }
	/* Exception.CreateFmt */ inline __fastcall ETransformIndividualFailed(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High) : ETransformException(Msg, Args, Args_High) { }
	/* Exception.CreateRes */ inline __fastcall ETransformIndividualFailed(NativeUInt Ident)/* overload */ : ETransformException(Ident) { }
	/* Exception.CreateRes */ inline __fastcall ETransformIndividualFailed(System::PResStringRec ResStringRec)/* overload */ : ETransformException(ResStringRec) { }
	/* Exception.CreateResFmt */ inline __fastcall ETransformIndividualFailed(NativeUInt Ident, const System::TVarRec *Args, const int Args_High)/* overload */ : ETransformException(Ident, Args, Args_High) { }
	/* Exception.CreateResFmt */ inline __fastcall ETransformIndividualFailed(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High)/* overload */ : ETransformException(ResStringRec, Args, Args_High) { }
	/* Exception.CreateHelp */ inline __fastcall ETransformIndividualFailed(const System::UnicodeString Msg, int AHelpContext) : ETransformException(Msg, AHelpContext) { }
	/* Exception.CreateFmtHelp */ inline __fastcall ETransformIndividualFailed(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High, int AHelpContext) : ETransformException(Msg, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall ETransformIndividualFailed(NativeUInt Ident, int AHelpContext)/* overload */ : ETransformException(Ident, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall ETransformIndividualFailed(System::PResStringRec ResStringRec, int AHelpContext)/* overload */ : ETransformException(ResStringRec, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall ETransformIndividualFailed(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : ETransformException(ResStringRec, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall ETransformIndividualFailed(NativeUInt Ident, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : ETransformException(Ident, Args, Args_High, AHelpContext) { }
	/* Exception.Destroy */ inline __fastcall virtual ~ETransformIndividualFailed() { }
	
};


typedef System::StaticArray<System::UnicodeString, 2> Fmx_Se_Supporttypes__41;

//-- var, const, procedure ---------------------------------------------------
extern DELPHI_PACKAGE Fmx_Se_Supporttypes__41 PMOptionDisplay;
}	/* namespace Supporttypes */
}	/* namespace Se */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_SE_SUPPORTTYPES)
using namespace Fmx::Se::Supporttypes;
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
#endif	// Fmx_Se_SupporttypesHPP
