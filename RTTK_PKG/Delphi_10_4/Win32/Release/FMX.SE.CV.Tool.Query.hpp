// CodeGear C++Builder
// Copyright (c) 1995, 2020 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.SE.CV.Tool.Query.pas' rev: 34.00 (Windows)

#ifndef Fmx_Se_Cv_Tool_QueryHPP
#define Fmx_Se_Cv_Tool_QueryHPP

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
#include <FMX.TMSFNCButton.hpp>
#include <FMX.StdCtrls.hpp>
#include <FMX.Memo.hpp>
#include <FMX.SE.CV.ToolInstance.hpp>
#include <FMX.SE.DBQuery.hpp>
#include <FMX.SE.CV.DataGrid.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
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
#pragma pack(push,4)
class PASCALIMPLEMENTATION TSECVQueryTool : public Fmx::Se::Cv::Toolinstance::TSECVToolInstance
{
	typedef Fmx::Se::Cv::Toolinstance::TSECVToolInstance inherited;
	
	
private:
	class DELPHICLASS TSECVTableBrowser;
	class PASCALIMPLEMENTATION TSECVTableBrowser : public System::TObject
	{
		typedef System::TObject inherited;
		
	private:
		Fmx::Se::Dbquery::TSEDBQuerySession* FDBQSession;
		
	public:
		__fastcall TSECVTableBrowser(Fmx::Se::Dbquery::TSEDBQuerySession* const ASession);
	public:
		/* TObject.Destroy */ inline __fastcall virtual ~TSECVTableBrowser() { }
		
	};
	
	
	
private:
	Fmx::Se::Cv::Datagrid::TSECVDataGrid* FDG;
	Fmx::Memo::TMemo* memoQuery;
	Fmx::Memo::TMemo* FMemoMessages;
	Fmx::Tmsfncbutton::TTMSFNCButton* btnExec;
	Fmx::Se::Dbquery::TSEDBQuerySession* FDBQSession;
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
	/* TSECVToolInstance.Create */ inline __fastcall TSECVQueryTool(Fmx::Se::Supporttypes::TSESInspectToolBase* const AToolInfo, Fmx::Tmsfncpagecontrol::TTMSFNCPageControlPage* const AToolTab) : Fmx::Se::Cv::Toolinstance::TSECVToolInstance(AToolInfo, AToolTab) { }
	
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
}	/* namespace Query */
}	/* namespace Tool */
}	/* namespace Cv */
}	/* namespace Se */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_SE_CV_TOOL_QUERY)
using namespace Fmx::Se::Cv::Tool::Query;
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
#endif	// Fmx_Se_Cv_Tool_QueryHPP
