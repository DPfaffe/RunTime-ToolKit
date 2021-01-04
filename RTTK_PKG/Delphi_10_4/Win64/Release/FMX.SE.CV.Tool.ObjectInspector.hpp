// CodeGear C++Builder
// Copyright (c) 1995, 2020 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.SE.CV.Tool.ObjectInspector.pas' rev: 34.00 (Windows)

#ifndef Fmx_Se_Cv_Tool_ObjectinspectorHPP
#define Fmx_Se_Cv_Tool_ObjectinspectorHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <FMX.TMSFNCObjectInspector.hpp>
#include <FMX.SE.CV.ToolInstance.hpp>
#include <System.TypInfo.hpp>
#include <System.Classes.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Se
{
namespace Cv
{
namespace Tool
{
namespace Objectinspector
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TSECVObjectInspectorTool;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TSECVObjectInspectorTool : public Fmx::Se::Cv::Toolinstance::TSECVToolInstance
{
	typedef Fmx::Se::Cv::Toolinstance::TSECVToolInstance inherited;
	
private:
	Fmx::Tmsfncobjectinspector::TTMSFNCObjectInspector* Floi;
	void __fastcall WritePropertyValue(System::TObject* Sender, System::TObject* AObject, System::Typinfo::PPropInfo APropertyInfo, System::UnicodeString APropertyName, System::TTypeKind APropertyType, System::UnicodeString &APropertyValue, bool &ACanWrite);
	void __fastcall AssignInspector(System::Classes::TComponent* const AComponent);
	void __fastcall ReadPropertyValue(System::TObject* Sender, System::TObject* AObject, System::Typinfo::PPropInfo APropertyInfo, System::UnicodeString APropertyName, System::TTypeKind APropertyType, System::UnicodeString &APropertyValue, bool &ACanRead);
	void __fastcall ReadProperty(System::TObject* Sender, System::TObject* AObject, System::Typinfo::PPropInfo APropertyInfo, System::UnicodeString APropertyName, System::TTypeKind APropertyType, bool &ACanRead);
	void __fastcall PropertyValueChanged(System::TObject* Sender, System::TObject* AObject, System::Typinfo::PPropInfo APropertyInfo, System::UnicodeString APropertyName, System::TTypeKind APropertyType, System::UnicodeString APropertyValue);
	
protected:
	virtual void __fastcall InitToolInstance();
	
public:
	virtual System::UnicodeString __fastcall DisplayName();
public:
	/* TSECVToolInstance.Create */ inline __fastcall TSECVObjectInspectorTool(Fmx::Se::Supporttypes::TSESInspectToolBase* const AToolInfo, Fmx::Tmsfncpagecontrol::TTMSFNCPageControlPage* const AToolTab) : Fmx::Se::Cv::Toolinstance::TSECVToolInstance(AToolInfo, AToolTab) { }
	
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TSECVObjectInspectorTool() { }
	
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Objectinspector */
}	/* namespace Tool */
}	/* namespace Cv */
}	/* namespace Se */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_SE_CV_TOOL_OBJECTINSPECTOR)
using namespace Fmx::Se::Cv::Tool::Objectinspector;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_SE_CV_TOOL)
using namespace Fmx::Se::Cv::Tool;
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
#endif	// Fmx_Se_Cv_Tool_ObjectinspectorHPP
