// CodeGear C++Builder
// Copyright (c) 1995, 2020 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'VCL.SE.CV.Tool.ObjectInspector.pas' rev: 34.00 (Windows)

#ifndef Vcl_Se_Cv_Tool_ObjectinspectorHPP
#define Vcl_Se_Cv_Tool_ObjectinspectorHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <VCL.TMSFNCObjectInspector.hpp>
#include <VCL.SE.CV.ToolInstance.hpp>
#include <System.TypInfo.hpp>
#include <System.Classes.hpp>

//-- user supplied -----------------------------------------------------------

namespace Vcl
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
class PASCALIMPLEMENTATION TSECVObjectInspectorTool : public Vcl::Se::Cv::Toolinstance::TSECVToolInstance
{
	typedef Vcl::Se::Cv::Toolinstance::TSECVToolInstance inherited;
	
private:
	Vcl::Tmsfncobjectinspector::TTMSFNCObjectInspector* Floi;
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
	/* TSECVToolInstance.Create */ inline __fastcall TSECVObjectInspectorTool(Vcl::Se::Supporttypes::TSESInspectToolBase* const AToolInfo, Vcl::Tmsfncpagecontrol::TTMSFNCPageControlPage* const AToolTab) : Vcl::Se::Cv::Toolinstance::TSECVToolInstance(AToolInfo, AToolTab) { }
	
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TSECVObjectInspectorTool() { }
	
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Objectinspector */
}	/* namespace Tool */
}	/* namespace Cv */
}	/* namespace Se */
}	/* namespace Vcl */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_VCL_SE_CV_TOOL_OBJECTINSPECTOR)
using namespace Vcl::Se::Cv::Tool::Objectinspector;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_VCL_SE_CV_TOOL)
using namespace Vcl::Se::Cv::Tool;
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
#endif	// Vcl_Se_Cv_Tool_ObjectinspectorHPP
