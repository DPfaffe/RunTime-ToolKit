// CodeGear C++Builder
// Copyright (c) 1995, 2020 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.SE.DBQuery.pas' rev: 34.00 (Windows)

#ifndef Fmx_Se_DbqueryHPP
#define Fmx_Se_DbqueryHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <System.Generics.Collections.hpp>
#include <FireDAC.Comp.Client.hpp>
#include <FireDAC.DApt.hpp>
#include <System.Generics.Defaults.hpp>
#include <System.Types.hpp>
#include <System.SysUtils.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Se
{
namespace Dbquery
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTableColumn;
class DELPHICLASS TIndexColumn;
class DELPHICLASS TTableIndex;
class DELPHICLASS TTableMetaInfo;
class DELPHICLASS TSEDBQuerySession;
//-- type declarations -------------------------------------------------------
#pragma pack(push,4)
class PASCALIMPLEMENTATION TTableColumn : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	System::UnicodeString fColumnName;
	System::UnicodeString fTableName;
	int fColumnPosition;
	System::UnicodeString fColumnDataType;
	System::UnicodeString fColumnTypeName;
	int fColumnPrecision;
	int fColumnScale;
	int fColumnLength;
	
public:
	__property System::UnicodeString ColumnName = {read=fColumnName, write=fColumnName};
	__property System::UnicodeString TableName = {read=fTableName};
	__property System::UnicodeString ColumnTypeName = {read=fColumnTypeName, write=fColumnTypeName};
	__property System::UnicodeString ColumnDataType = {read=fColumnDataType, write=fColumnDataType};
	__property int ColumnPosition = {read=fColumnPosition, write=fColumnPosition, nodefault};
	__property int ColumnPrecision = {read=fColumnPrecision, write=fColumnPrecision, nodefault};
	__property int ColumnScale = {read=fColumnScale, write=fColumnScale, nodefault};
	__property int ColumnLength = {read=fColumnLength, write=fColumnLength, nodefault};
	System::UnicodeString __fastcall ColumnDisplayHtml();
	__fastcall TTableColumn(const System::UnicodeString ATableName);
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TTableColumn() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TIndexColumn : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	System::UnicodeString fIndexName;
	System::UnicodeString fColumnName;
	int fColumnPosition;
	System::UnicodeString fSortOrder;
	System::UnicodeString fFilter;
	
public:
	__property System::UnicodeString IndexName = {read=fIndexName, write=fIndexName};
	__property System::UnicodeString ColumnName = {read=fColumnName, write=fColumnName};
	__property System::UnicodeString SortOrder = {read=fSortOrder, write=fSortOrder};
	__property System::UnicodeString Filter = {read=fFilter, write=fFilter};
	__property int ColumnPosition = {read=fColumnPosition, write=fColumnPosition, nodefault};
public:
	/* TObject.Create */ inline __fastcall TIndexColumn() : System::TObject() { }
	/* TObject.Destroy */ inline __fastcall virtual ~TIndexColumn() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTableIndex : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	System::UnicodeString fIndexName;
	System::UnicodeString fTableName;
	System::Generics::Collections::TList__1<TIndexColumn*>* fIndexColumns;
	System::UnicodeString fIndexType;
	System::UnicodeString fConstraintName;
	
public:
	__property System::UnicodeString IndexName = {read=fIndexName, write=fIndexName};
	__property System::UnicodeString TableName = {read=fTableName, write=fTableName};
	__property System::Generics::Collections::TList__1<TIndexColumn*>* IndexColumns = {read=fIndexColumns, write=fIndexColumns};
	__property System::UnicodeString IndexType = {read=fIndexType, write=fIndexType};
	__property System::UnicodeString ConstraintName = {read=fConstraintName, write=fConstraintName};
public:
	/* TObject.Create */ inline __fastcall TTableIndex() : System::TObject() { }
	/* TObject.Destroy */ inline __fastcall virtual ~TTableIndex() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTableMetaInfo : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	System::UnicodeString fTableDDL;
	System::UnicodeString fTableName;
	System::Generics::Collections::TList__1<TTableColumn*>* fTableColumns;
	System::UnicodeString fTableType;
	
public:
	__property System::UnicodeString TableDDL = {read=fTableDDL, write=fTableDDL};
	__property System::UnicodeString TableName = {read=fTableName, write=fTableName};
	__property System::Generics::Collections::TList__1<TTableColumn*>* TableColumns = {read=fTableColumns, write=fTableColumns};
	System::UnicodeString __fastcall GenerateSelectStatement();
	__property System::UnicodeString TableType = {read=fTableType, write=fTableType};
	System::UnicodeString __fastcall TableDisplayHtml();
public:
	/* TObject.Create */ inline __fastcall TTableMetaInfo() : System::TObject() { }
	/* TObject.Destroy */ inline __fastcall virtual ~TTableMetaInfo() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TSEDBQuerySession : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	System::Classes::TComponent* FOwner;
	Firedac::Comp::Client::TFDQuery* FQuery;
	Firedac::Comp::Client::TFDConnection* FConn;
	System::Generics::Collections::TList__1<TTableMetaInfo*>* FMetaInfo;
	Firedac::Comp::Client::TFDMetaInfoQuery* FMITables;
	Firedac::Comp::Client::TFDMetaInfoQuery* FMIFields;
	System::Generics::Collections::TList__1<TTableColumn*>* __fastcall GetTableColumnList(const System::UnicodeString schemaName, const System::UnicodeString catalogName, const System::UnicodeString TableName);
	
public:
	void __fastcall MetaInfoCollect();
	void __fastcall setSqlString(const System::UnicodeString AQueryString);
	__property System::Generics::Collections::TList__1<TTableMetaInfo*>* MetaInfo = {read=FMetaInfo};
	__property Firedac::Comp::Client::TFDQuery* Query = {read=FQuery};
	__fastcall TSEDBQuerySession(Firedac::Comp::Client::TFDConnection* const AFDConnection, System::Classes::TComponent* const AComponent);
	__fastcall virtual ~TSEDBQuerySession();
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
}	/* namespace Dbquery */
}	/* namespace Se */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_SE_DBQUERY)
using namespace Fmx::Se::Dbquery;
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
#endif	// Fmx_Se_DbqueryHPP
