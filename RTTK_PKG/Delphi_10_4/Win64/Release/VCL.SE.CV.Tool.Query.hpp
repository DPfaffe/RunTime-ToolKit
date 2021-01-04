// CodeGear C++Builder
// Copyright (c) 1995, 2020 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'VCL.SE.CV.Tool.Query.pas' rev: 34.00 (Windows)

#ifndef Vcl_Se_Cv_Tool_QueryHPP
#define Vcl_Se_Cv_Tool_QueryHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <Data.DB.hpp>
#include <FireDAC.Comp.DataSet.hpp>
#include <FireDAC.Stan.Error.hpp>
#include <System.SysUtils.hpp>
#include <FireDAC.Stan.Intf.hpp>
#include <VCL.TMSFNCButton.hpp>
#include <Vcl.StdCtrls.hpp>
#include <VCL.SE.CV.ToolInstance.hpp>
#include <VCL.SE.DBQuery.hpp>
#include <VCL.SE.CV.DataGrid.hpp>

//-- user supplied -----------------------------------------------------------

namespace Vcl
{
namespace Se
{
namespace Cv
{
namespace Tool
{
namespace Query
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TSECVQueryTool;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TSECVQueryTool : public Vcl::Se::Cv::Toolinstance::TSECVToolInstance
{
	typedef Vcl::Se::Cv::Toolinstance::TSECVToolInstance inherited;
	
	
private:
	class DELPHICLASS TSECVTableBrowser;
	class PASCALIMPLEMENTATION TSECVTableBrowser : public System::TObject
	{
		typedef System::TObject inherited;
		
	private:
		Vcl::Se::Dbquery::TSEDBQuerySession* FDBQSession;
		
	public:
		__fastcall TSECVTableBrowser(Vcl::Se::Dbquery::TSEDBQuerySession* const ASession);
	public:
		/* TObject.Destroy */ inline __fastcall virtual ~TSECVTableBrowser() { }
		
	};
	
	
	
private:
	Vcl::Se::Cv::Datagrid::TSECVDataGrid* FDG;
	Vcl::Stdctrls::TMemo* memoQuery;
	Vcl::Stdctrls::TMemo* FMemoMessages;
	Vcl::Tmsfncbutton::TTMSFNCButton* btnExec;
	Vcl::Se::Dbquery::TSEDBQuerySession* FDBQSession;
	TSECVTableBrowser* FCVTableBrowser;
	void __fastcall QueryBeforeOpen(Data::Db::TDataSet* DataSet);
	void __fastcall QueryBeforeExecute(Firedac::Comp::Dataset::TFDDataSet* DataSet);
	void __fastcall QueryAfterOpen(Data::Db::TDataSet* DataSet);
	void __fastcall QueryAfterExecute(Firedac::Comp::Dataset::TFDDataSet* DataSet);
	void __fastcall QueryOnError(System::TObject* ASender, System::TObject* AInitiator, System::Sysutils::Exception* &AException);
	void __fastcall QueryOnExecuteError(System::TObject* ASender, int ATimes, int AOffset, Firedac::Stan::Error::EFDDBEngineException* AError, Firedac::Stan::Intf::TFDErrorAction &AAction);
	void __fastcall ExecBtnClick(System::TObject* Sender);
	void __fastcall AssignSession();
	
protected:
	virtual void __fastcall InitToolInstance();
	
public:
	virtual System::UnicodeString __fastcall DisplayName();
	__fastcall virtual ~TSECVQueryTool();
public:
	/* TSECVToolInstance.Create */ inline __fastcall TSECVQueryTool(Vcl::Se::Supporttypes::TSESInspectToolBase* const AToolInfo, Vcl::Tmsfncpagecontrol::TTMSFNCPageControlPage* const AToolTab) : Vcl::Se::Cv::Toolinstance::TSECVToolInstance(AToolInfo, AToolTab) { }
	
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Query */
}	/* namespace Tool */
}	/* namespace Cv */
}	/* namespace Se */
}	/* namespace Vcl */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_VCL_SE_CV_TOOL_QUERY)
using namespace Vcl::Se::Cv::Tool::Query;
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
#endif	// Vcl_Se_Cv_Tool_QueryHPP
