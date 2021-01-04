// CodeGear C++Builder
// Copyright (c) 1995, 2020 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'VCL.SE.CV.DataGrid.pas' rev: 34.00 (Windows)

#ifndef Vcl_Se_Cv_DatagridHPP
#define Vcl_Se_Cv_DatagridHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <Data.DB.hpp>
#include <VCL.TMSFNCGrid.hpp>
#include <VCL.TMSFNCGridDatabaseAdapter.hpp>
#include <VCL.SE.Layout.hpp>

//-- user supplied -----------------------------------------------------------

namespace Vcl
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
#pragma pack(push,4)
class PASCALIMPLEMENTATION TSECVDataGrid : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	Vcl::Tmsfncgrid::TTMSFNCGrid* FDataGrid;
	Vcl::Tmsfncgriddatabaseadapter::TTMSFNCGridDatabaseAdapter* FGridAdapter;
	Data::Db::TDataSource* FDataSource;
	
public:
	__property Data::Db::TDataSource* DataSource = {read=FDataSource};
	void __fastcall CreateGrid(Vcl::Se::Layout::TSELayout* const ALayout);
	void __fastcall AssignGrid(Data::Db::TDataSet* const ADataSet);
public:
	/* TObject.Create */ inline __fastcall TSECVDataGrid() : System::TObject() { }
	/* TObject.Destroy */ inline __fastcall virtual ~TSECVDataGrid() { }
	
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
}	/* namespace Datagrid */
}	/* namespace Cv */
}	/* namespace Se */
}	/* namespace Vcl */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_VCL_SE_CV_DATAGRID)
using namespace Vcl::Se::Cv::Datagrid;
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
#endif	// Vcl_Se_Cv_DatagridHPP
