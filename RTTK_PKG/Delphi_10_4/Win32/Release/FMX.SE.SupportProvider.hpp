// CodeGear C++Builder
// Copyright (c) 1995, 2020 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.SE.SupportProvider.pas' rev: 34.00 (Windows)

#ifndef Fmx_Se_SupportproviderHPP
#define Fmx_Se_SupportproviderHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <System.Generics.Collections.hpp>
#include <FMX.Forms.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.SE.SupportTypes.hpp>
#include <System.Generics.Defaults.hpp>
#include <System.Types.hpp>
#include <System.SysUtils.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
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
struct TFormHelper /* Helper for class 'Fmx::Forms::TForm*' */;
struct TDataModuleHelper /* Helper for class 'System::Classes::TDataModule*' */;
//-- type declarations -------------------------------------------------------
#pragma pack(push,4)
class PASCALIMPLEMENTATION TSESMOGoTo : public Fmx::Se::Supporttypes::TSESMenuOptionBase
{
	typedef Fmx::Se::Supporttypes::TSESMenuOptionBase inherited;
	
public:
	/* TSESMenuOptionBase.Create */ inline __fastcall TSESMOGoTo(const System::UnicodeString AOptionText) : Fmx::Se::Supporttypes::TSESMenuOptionBase(AOptionText) { }
	
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TSESMOGoTo() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TSESRepoForm : public Fmx::Se::Supporttypes::TSESRepoRoot
{
	typedef Fmx::Se::Supporttypes::TSESRepoRoot inherited;
	
protected:
	virtual void __fastcall TreeComps();
	virtual System::UnicodeString __fastcall GetDisplayName();
	
public:
	Fmx::Tmsfnctypes::TTMSFNCBitmap* __fastcall ScreenShot();
	bool __fastcall HasFocused();
	int __fastcall FocusedHash();
public:
	/* TSESRepoRoot.Create */ inline __fastcall virtual TSESRepoForm(System::Classes::TComponent* const AComponent) : Fmx::Se::Supporttypes::TSESRepoRoot(AComponent) { }
	/* TSESRepoRoot.Destroy */ inline __fastcall virtual ~TSESRepoForm() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TSESRepoDataModule : public Fmx::Se::Supporttypes::TSESRepoRoot
{
	typedef Fmx::Se::Supporttypes::TSESRepoRoot inherited;
	
protected:
	virtual void __fastcall TreeComps();
	virtual System::UnicodeString __fastcall GetDisplayName();
public:
	/* TSESRepoRoot.Create */ inline __fastcall virtual TSESRepoDataModule(System::Classes::TComponent* const AComponent) : Fmx::Se::Supporttypes::TSESRepoRoot(AComponent) { }
	/* TSESRepoRoot.Destroy */ inline __fastcall virtual ~TSESRepoDataModule() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TSESRepoApplication : public System::TObject
{
	typedef System::TObject inherited;
	
public:
	System::UnicodeString ApplicationName;
	TSESRepoForm* MainForm;
	System::UnicodeString __fastcall ToJSON()/* overload */;
	void __fastcall FromJSON(const System::UnicodeString Value);
	__property System::UnicodeString JSON = {read=ToJSON, write=FromJSON};
	System::UnicodeString __fastcall ToJSON(Fmx::Tmsfnctypes::TTMSFNCObjectExcludePropertyListArray AExcludedProperties)/* overload */;
	void __fastcall Log();
	void __fastcall SaveToJSONFile(const System::UnicodeString AFileName);
	void __fastcall LoadFromJSONFile(const System::UnicodeString AFileName);
	void __fastcall SaveToJSONStream(System::Classes::TStream* const AStream);
	void __fastcall LoadFromJSONStream(System::Classes::TStream* const AStream);
public:
	/* TObject.Create */ inline __fastcall TSESRepoApplication() : System::TObject() { }
	/* TObject.Destroy */ inline __fastcall virtual ~TSESRepoApplication() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
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
	System::UnicodeString __fastcall ToJSON(Fmx::Tmsfnctypes::TTMSFNCObjectExcludePropertyListArray AExcludedProperties)/* overload */;
	void __fastcall Log();
	void __fastcall SaveToJSONFile(const System::UnicodeString AFileName);
	void __fastcall LoadFromJSONFile(const System::UnicodeString AFileName);
	void __fastcall SaveToJSONStream(System::Classes::TStream* const AStream);
	void __fastcall LoadFromJSONStream(System::Classes::TStream* const AStream);
public:
	/* TObject.Create */ inline __fastcall TSESProvider() : System::TObject() { }
	/* TObject.Destroy */ inline __fastcall virtual ~TSESProvider() { }
	
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
extern DELPHI_PACKAGE System::UnicodeString SupFormName;
}	/* namespace Supportprovider */
}	/* namespace Se */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_SE_SUPPORTPROVIDER)
using namespace Fmx::Se::Supportprovider;
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
#endif	// Fmx_Se_SupportproviderHPP
