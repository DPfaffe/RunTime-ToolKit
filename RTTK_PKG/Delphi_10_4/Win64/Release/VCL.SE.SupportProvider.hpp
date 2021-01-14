// CodeGear C++Builder
// Copyright (c) 1995, 2020 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'VCL.SE.SupportProvider.pas' rev: 34.00 (Windows)

#ifndef Vcl_Se_SupportproviderHPP
#define Vcl_Se_SupportproviderHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <System.Generics.Collections.hpp>
#include <Vcl.Forms.hpp>
#include <VCL.TMSFNCTypes.hpp>
#include <VCL.SE.SupportTypes.hpp>
#include <System.Generics.Defaults.hpp>
#include <System.Types.hpp>
#include <System.SysUtils.hpp>

//-- user supplied -----------------------------------------------------------

namespace Vcl
{
namespace Se
{
namespace Supportprovider
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TSESMOGoTo;
class DELPHICLASS TSESRepoForm;
class DELPHICLASS TSESRepoDataModule;
class DELPHICLASS TSESRepoApplication;
class DELPHICLASS TSESProvider;
struct TFormHelper /* Helper for class 'Vcl::Forms::TForm*' */;
struct TDataModuleHelper /* Helper for class 'System::Classes::TDataModule*' */;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TSESMOGoTo : public Vcl::Se::Supporttypes::TSESMenuOptionBase
{
	typedef Vcl::Se::Supporttypes::TSESMenuOptionBase inherited;
	
public:
	/* TSESMenuOptionBase.Create */ inline __fastcall TSESMOGoTo(const System::UnicodeString AOptionText) : Vcl::Se::Supporttypes::TSESMenuOptionBase(AOptionText) { }
	
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TSESMOGoTo() { }
	
};


class PASCALIMPLEMENTATION TSESRepoForm : public Vcl::Se::Supporttypes::TSESRepoRoot
{
	typedef Vcl::Se::Supporttypes::TSESRepoRoot inherited;
	
protected:
	virtual void __fastcall TreeComps();
	virtual System::UnicodeString __fastcall GetDisplayName();
	
public:
	Vcl::Tmsfnctypes::TTMSFNCBitmap* __fastcall ScreenShot();
	bool __fastcall HasFocused();
	int __fastcall FocusedHash();
public:
	/* TSESRepoRoot.Create */ inline __fastcall virtual TSESRepoForm(System::Classes::TComponent* const AComponent) : Vcl::Se::Supporttypes::TSESRepoRoot(AComponent) { }
	/* TSESRepoRoot.Destroy */ inline __fastcall virtual ~TSESRepoForm() { }
	
};


class PASCALIMPLEMENTATION TSESRepoDataModule : public Vcl::Se::Supporttypes::TSESRepoRoot
{
	typedef Vcl::Se::Supporttypes::TSESRepoRoot inherited;
	
protected:
	virtual void __fastcall TreeComps();
	virtual System::UnicodeString __fastcall GetDisplayName();
public:
	/* TSESRepoRoot.Create */ inline __fastcall virtual TSESRepoDataModule(System::Classes::TComponent* const AComponent) : Vcl::Se::Supporttypes::TSESRepoRoot(AComponent) { }
	/* TSESRepoRoot.Destroy */ inline __fastcall virtual ~TSESRepoDataModule() { }
	
};


class PASCALIMPLEMENTATION TSESRepoApplication : public System::TObject
{
	typedef System::TObject inherited;
	
public:
	System::UnicodeString ApplicationName;
	TSESRepoForm* MainForm;
	System::UnicodeString __fastcall ToJSON()/* overload */;
	void __fastcall FromJSON(const System::UnicodeString Value);
	__property System::UnicodeString JSON = {read=ToJSON, write=FromJSON};
	System::UnicodeString __fastcall ToJSON(Vcl::Tmsfnctypes::TTMSFNCObjectExcludePropertyListArray AExcludedProperties)/* overload */;
	void __fastcall Log();
	void __fastcall SaveToJSONFile(const System::UnicodeString AFileName);
	void __fastcall LoadFromJSONFile(const System::UnicodeString AFileName);
	void __fastcall SaveToJSONStream(System::Classes::TStream* const AStream);
	void __fastcall LoadFromJSONStream(System::Classes::TStream* const AStream);
public:
	/* TObject.Create */ inline __fastcall TSESRepoApplication() : System::TObject() { }
	/* TObject.Destroy */ inline __fastcall virtual ~TSESRepoApplication() { }
	
};


class PASCALIMPLEMENTATION TSESProvider : public System::TObject
{
	typedef System::TObject inherited;
	
public:
	System::UnicodeString __fastcall ApplicationName();
	System::Generics::Collections::TList__1<TSESRepoForm*>* __fastcall ListForms();
	System::Generics::Collections::TList__1<TSESRepoDataModule*>* __fastcall ListDataModules();
	System::UnicodeString __fastcall ToJSON()/* overload */;
	void __fastcall FromJSON(const System::UnicodeString Value);
	__property System::UnicodeString JSON = {read=ToJSON, write=FromJSON};
	System::UnicodeString __fastcall ToJSON(Vcl::Tmsfnctypes::TTMSFNCObjectExcludePropertyListArray AExcludedProperties)/* overload */;
	void __fastcall Log();
	void __fastcall SaveToJSONFile(const System::UnicodeString AFileName);
	void __fastcall LoadFromJSONFile(const System::UnicodeString AFileName);
	void __fastcall SaveToJSONStream(System::Classes::TStream* const AStream);
	void __fastcall LoadFromJSONStream(System::Classes::TStream* const AStream);
public:
	/* TObject.Create */ inline __fastcall TSESProvider() : System::TObject() { }
	/* TObject.Destroy */ inline __fastcall virtual ~TSESProvider() { }
	
};


//-- var, const, procedure ---------------------------------------------------
extern DELPHI_PACKAGE System::UnicodeString SupFormName;
}	/* namespace Supportprovider */
}	/* namespace Se */
}	/* namespace Vcl */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_VCL_SE_SUPPORTPROVIDER)
using namespace Vcl::Se::Supportprovider;
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
#endif	// Vcl_Se_SupportproviderHPP
