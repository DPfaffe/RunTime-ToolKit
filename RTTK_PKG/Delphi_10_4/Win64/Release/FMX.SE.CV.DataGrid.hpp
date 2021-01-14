// CodeGear C++Builder
// Copyright (c) 1995, 2020 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.SE.CV.DataGrid.pas' rev: 34.00 (Windows)

#ifndef Fmx_Se_Cv_DatagridHPP
#define Fmx_Se_Cv_DatagridHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <Data.DB.hpp>
#include <FMX.TMSFNCGrid.hpp>
#include <FMX.TMSFNCGridDatabaseAdapter.hpp>
#include <FMX.SE.Layout.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Se
{
namespace Cv
{
namespace Datagrid
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TSECVDataGrid;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TSECVDataGrid : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	Fmx::Tmsfncgrid::TTMSFNCGrid* FDataGrid;
	Fmx::Tmsfncgriddatabaseadapter::TTMSFNCGridDatabaseAdapter* FGridAdapter;
	Data::Db::TDataSource* FDataSource;
	
public:
	__property Data::Db::TDataSource* DataSource = {read=FDataSource};
	void __fastcall CreateGrid(Fmx::Se::Layout::TSELayout* const ALayout);
	void __fastcall AssignGrid(Data::Db::TDataSet* const ADataSet);
public:
	/* TObject.Create */ inline __fastcall TSECVDataGrid() : System::TObject() { }
	/* TObject.Destroy */ inline __fastcall virtual ~TSECVDataGrid() { }
	
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Datagrid */
}	/* namespace Cv */
}	/* namespace Se */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_SE_CV_DATAGRID)
using namespace Fmx::Se::Cv::Datagrid;
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
#endif	// Fmx_Se_Cv_DatagridHPP
