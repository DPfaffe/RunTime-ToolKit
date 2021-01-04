// CodeGear C++Builder
// Copyright (c) 1995, 2020 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'VCL.SE.SupportTransform.pas' rev: 34.00 (Windows)

#ifndef Vcl_Se_SupporttransformHPP
#define Vcl_Se_SupporttransformHPP

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
#include <FireDAC.Comp.DataSet.hpp>
#include <System.SysUtils.hpp>
#include <System.Generics.Defaults.hpp>
#include <System.Types.hpp>

//-- user supplied -----------------------------------------------------------

namespace Vcl
{
namespace Se
{
namespace Supporttransform
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TSESTransformBase;
class DELPHICLASS TSETransDataSet;
class DELPHICLASS TSETransFDConnection;
class DELPHICLASS TSESTransform;
//-- type declarations -------------------------------------------------------
#pragma pack(push,4)
class PASCALIMPLEMENTATION TSESTransformBase : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	Vcl::Se::Supporttypes::TSESupportRepoCompRef* FRepoComponent;
	System::TClass FTransformClass;
	Vcl::Se::Supporttypes::TSESRepoLabel* __fastcall AddLevel(const System::UnicodeString ALevelName);
	
protected:
	virtual void __fastcall ExecTransform() = 0 ;
	virtual void __fastcall Transform(Vcl::Se::Supporttypes::TSESupportRepoCompRef* const ARepoComponent);
	
public:
	System::UnicodeString __fastcall TransClassName();
	__property System::TClass TransformClass = {read=FTransformClass};
	__fastcall virtual TSESTransformBase(const System::TClass ATransformClass);
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TSESTransformBase() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TSETransDataSet : public TSESTransformBase
{
	typedef TSESTransformBase inherited;
	
private:
	Firedac::Comp::Dataset::TFDDataSet* FDS;
	
private:
	void __fastcall TransformFields();
	void __fastcall TransformIndexes();
	void __fastcall TransformAggregates();
	
protected:
	virtual void __fastcall ExecTransform();
	__fastcall TSETransDataSet();
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TSETransDataSet() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TSETransFDConnection : public TSESTransformBase
{
	typedef TSESTransformBase inherited;
	
protected:
	virtual void __fastcall ExecTransform();
	__fastcall TSETransFDConnection();
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TSETransFDConnection() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TSESTransform : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	System::Generics::Collections::TObjectDictionary__2<System::TClass,TSESTransformBase*>* FTransforms;
	void __fastcall LoadCacheTree();
	System::Generics::Collections::TList__1<TSESTransformBase*>* __fastcall TransformList(System::Classes::TComponent* const AComponent);
	void __fastcall RegisterTransform(TSESTransformBase* ATransform);
	
public:
	bool __fastcall TransformExists(const System::UnicodeString AClassName);
	bool __fastcall Transform(Vcl::Se::Supporttypes::TSESupportRepoCompRef* const ARepoComponent);
	__fastcall TSESTransform();
	__fastcall virtual ~TSESTransform();
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
}	/* namespace Supporttransform */
}	/* namespace Se */
}	/* namespace Vcl */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_VCL_SE_SUPPORTTRANSFORM)
using namespace Vcl::Se::Supporttransform;
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
#endif	// Vcl_Se_SupporttransformHPP
