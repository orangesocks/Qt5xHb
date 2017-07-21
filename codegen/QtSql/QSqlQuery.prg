$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
REQUEST QSQLDRIVER
REQUEST QSQLERROR
REQUEST QSQLRECORD
REQUEST QSQLRESULT
#endif

CLASS QSqlQuery

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD addBindValue
   METHOD at
   METHOD bindValue
   METHOD boundValue
   METHOD clear
   METHOD driver
   METHOD exec
   METHOD execBatch
   METHOD executedQuery
   METHOD finish
   METHOD first
   METHOD isActive
   METHOD isForwardOnly
   METHOD setForwardOnly
   METHOD isNull
   METHOD isSelect
   METHOD isValid
   METHOD last
   METHOD lastError
   METHOD lastInsertId
   METHOD lastQuery
   METHOD next
   METHOD nextResult
   METHOD numRowsAffected
   METHOD numericalPrecisionPolicy
   METHOD setNumericalPrecisionPolicy
   METHOD prepare
   METHOD previous
   METHOD record
   METHOD result
   METHOD seek
   METHOD size
   METHOD value

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QVariant>
#include <QSqlError>
#include <QSqlRecord>

/*
explicit QSqlQuery ( QSqlResult * result )
*/
void QSqlQuery_new1 ()
{
  QSqlResult * par1 = (QSqlResult *) _qt5xhb_itemGetPtr(1);
  QSqlQuery * o = new QSqlQuery ( par1 );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
explicit QSqlQuery ( const QString & query = QString(), QSqlDatabase db = QSqlDatabase() )
*/
void QSqlQuery_new2 ()
{
  QSqlDatabase par2 = ISNIL(2)? QSqlDatabase() : *(QSqlDatabase *) _qt5xhb_itemGetPtr(2);
  QSqlQuery * o = new QSqlQuery ( OPQSTRING(1,QString()), par2 );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
explicit QSqlQuery ( QSqlDatabase db )
*/
void QSqlQuery_new3 ()
{
  QSqlDatabase * par1 = (QSqlDatabase *) _qt5xhb_itemGetPtr(1);
  QSqlQuery * o = new QSqlQuery ( *par1 );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QSqlQuery ( const QSqlQuery & other )
*/
void QSqlQuery_new4 ()
{
  QSqlQuery * o = new QSqlQuery ( *PQSQLQUERY(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

//[1]explicit QSqlQuery ( QSqlResult * result )
//[2]explicit QSqlQuery ( const QString & query = QString(), QSqlDatabase db = QSqlDatabase() )
//[3]explicit QSqlQuery ( QSqlDatabase db )
//[4]QSqlQuery ( const QSqlQuery & other )

HB_FUNC_STATIC( QSQLQUERY_NEW )
{
  if( ISNUMPAR(1) && ISQSQLRESULT(1) )
  {
    QSqlQuery_new1();
  }
  else if( ISBETWEEN(1,2) && ISOPTCHAR(1) && (ISQSQLDATABASE(2)||ISNIL(2)) )
  {
    QSqlQuery_new2();
  }
  else if( ISNUMPAR(1) && ISQSQLDATABASE(1) )
  {
    QSqlQuery_new3();
  }
  else if( ISNUMPAR(1) && ISQSQLQUERY(1) )
  {
    QSqlQuery_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
void addBindValue ( const QVariant & val, QSql::ParamType paramType = QSql::In )
*/
HB_FUNC_STATIC( QSQLQUERY_ADDBINDVALUE )
{
  QSqlQuery * obj = (QSqlQuery *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQVARIANT(1) && ISOPTNUM(2) )
    {
      int par2 = ISNIL(2)? (int) QSql::In : hb_parni(2);
      obj->addBindValue ( *PQVARIANT(1), (QSql::ParamType) par2 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int at () const
*/
HB_FUNC_STATIC( QSQLQUERY_AT )
{
  QSqlQuery * obj = (QSqlQuery *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->at () );
  }
}

/*
void bindValue ( const QString & placeholder, const QVariant & val, QSql::ParamType paramType = QSql::In )
*/
void QSqlQuery_bindValue1 ()
{
  QSqlQuery * obj = (QSqlQuery *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    int par3 = ISNIL(3)? (int) QSql::In : hb_parni(3);
    obj->bindValue ( PQSTRING(1), *PQVARIANT(2), (QSql::ParamType) par3 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void bindValue ( int pos, const QVariant & val, QSql::ParamType paramType = QSql::In )
*/
void QSqlQuery_bindValue2 ()
{
  QSqlQuery * obj = (QSqlQuery *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    int par3 = ISNIL(3)? (int) QSql::In : hb_parni(3);
    obj->bindValue ( PINT(1), *PQVARIANT(2), (QSql::ParamType) par3 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void bindValue ( const QString & placeholder, const QVariant & val, QSql::ParamType paramType = QSql::In )
//[2]void bindValue ( int pos, const QVariant & val, QSql::ParamType paramType = QSql::In )

HB_FUNC_STATIC( QSQLQUERY_BINDVALUE )
{
  if( ISBETWEEN(2,3) && ISCHAR(1) && ISQVARIANT(2) && ISOPTNUM(3) )
  {
    QSqlQuery_bindValue1();
  }
  else if( ISBETWEEN(2,3) && ISNUM(1) && ISQVARIANT(2) && ISOPTNUM(3) )
  {
    QSqlQuery_bindValue2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QVariant boundValue ( const QString & placeholder ) const
*/
void QSqlQuery_boundValue1 ()
{
  QSqlQuery * obj = (QSqlQuery *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QVariant * ptr = new QVariant( obj->boundValue ( PQSTRING(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}

/*
QVariant boundValue ( int pos ) const
*/
void QSqlQuery_boundValue2 ()
{
  QSqlQuery * obj = (QSqlQuery *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QVariant * ptr = new QVariant( obj->boundValue ( PINT(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}

//[1]QVariant boundValue ( const QString & placeholder ) const
//[2]QVariant boundValue ( int pos ) const

HB_FUNC_STATIC( QSQLQUERY_BOUNDVALUE )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QSqlQuery_boundValue1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QSqlQuery_boundValue2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void clear ()
*/
HB_FUNC_STATIC( QSQLQUERY_CLEAR )
{
  QSqlQuery * obj = (QSqlQuery *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->clear ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
const QSqlDriver * driver () const
*/
HB_FUNC_STATIC( QSQLQUERY_DRIVER )
{
  QSqlQuery * obj = (QSqlQuery *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    const QSqlDriver * ptr = obj->driver ();
    _qt5xhb_createReturnClass ( ptr, "QSQLDRIVER" );
  }
}

/*
bool exec ( const QString & query )
*/
void QSqlQuery_exec1 ()
{
  QSqlQuery * obj = (QSqlQuery *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->exec ( PQSTRING(1) ) );
  }
}

/*
bool exec ()
*/
void QSqlQuery_exec2 ()
{
  QSqlQuery * obj = (QSqlQuery *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->exec () );
  }
}

//[1]bool exec ( const QString & query )
//[2]bool exec ()

HB_FUNC_STATIC( QSQLQUERY_EXEC )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QSqlQuery_exec1();
  }
  else if( ISNUMPAR(0) )
  {
    QSqlQuery_exec2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool execBatch ( BatchExecutionMode mode = ValuesAsRows )
*/
HB_FUNC_STATIC( QSQLQUERY_EXECBATCH )
{
  QSqlQuery * obj = (QSqlQuery *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISOPTNUM(1) )
    {
      int par1 = ISNIL(1)? (int) QSqlQuery::ValuesAsRows : hb_parni(1);
      RBOOL( obj->execBatch ( (QSqlQuery::BatchExecutionMode) par1 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QString executedQuery () const
*/
HB_FUNC_STATIC( QSQLQUERY_EXECUTEDQUERY )
{
  QSqlQuery * obj = (QSqlQuery *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRING( obj->executedQuery () );
  }
}

/*
void finish ()
*/
HB_FUNC_STATIC( QSQLQUERY_FINISH )
{
  QSqlQuery * obj = (QSqlQuery *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->finish ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool first ()
*/
HB_FUNC_STATIC( QSQLQUERY_FIRST )
{
  QSqlQuery * obj = (QSqlQuery *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->first () );
  }
}

/*
bool isActive () const
*/
HB_FUNC_STATIC( QSQLQUERY_ISACTIVE )
{
  QSqlQuery * obj = (QSqlQuery *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->isActive () );
  }
}

/*
bool isForwardOnly () const
*/
HB_FUNC_STATIC( QSQLQUERY_ISFORWARDONLY )
{
  QSqlQuery * obj = (QSqlQuery *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->isForwardOnly () );
  }
}

/*
void setForwardOnly ( bool forward )
*/
HB_FUNC_STATIC( QSQLQUERY_SETFORWARDONLY )
{
  QSqlQuery * obj = (QSqlQuery *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setForwardOnly ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isNull ( int field ) const
*/
void QSqlQuery_isNull1 ()
{
  QSqlQuery * obj = (QSqlQuery *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->isNull ( PINT(1) ) );
  }
}

/*
bool isNull(const QString &name) const
*/
void QSqlQuery_isNull2 ()
{
  QSqlQuery * obj = (QSqlQuery *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->isNull ( PQSTRING(1) ) );
  }
}

//[1]bool isNull ( int field ) const
//[2]bool isNull(const QString &name) const

HB_FUNC_STATIC( QSQLQUERY_ISNULL )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QSqlQuery_isNull1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QSqlQuery_isNull2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool isSelect () const
*/
HB_FUNC_STATIC( QSQLQUERY_ISSELECT )
{
  QSqlQuery * obj = (QSqlQuery *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->isSelect () );
  }
}

/*
bool isValid () const
*/
HB_FUNC_STATIC( QSQLQUERY_ISVALID )
{
  QSqlQuery * obj = (QSqlQuery *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->isValid () );
  }
}

/*
bool last ()
*/
HB_FUNC_STATIC( QSQLQUERY_LAST )
{
  QSqlQuery * obj = (QSqlQuery *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->last () );
  }
}

/*
QSqlError lastError () const
*/
HB_FUNC_STATIC( QSQLQUERY_LASTERROR )
{
  QSqlQuery * obj = (QSqlQuery *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSqlError * ptr = new QSqlError( obj->lastError () );
    _qt5xhb_createReturnClass ( ptr, "QSQLERROR", true );
  }
}

/*
QVariant lastInsertId () const
*/
HB_FUNC_STATIC( QSQLQUERY_LASTINSERTID )
{
  QSqlQuery * obj = (QSqlQuery *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QVariant * ptr = new QVariant( obj->lastInsertId () );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}

/*
QString lastQuery () const
*/
HB_FUNC_STATIC( QSQLQUERY_LASTQUERY )
{
  QSqlQuery * obj = (QSqlQuery *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRING( obj->lastQuery () );
  }
}

/*
bool next ()
*/
HB_FUNC_STATIC( QSQLQUERY_NEXT )
{
  QSqlQuery * obj = (QSqlQuery *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->next () );
  }
}

/*
bool nextResult ()
*/
HB_FUNC_STATIC( QSQLQUERY_NEXTRESULT )
{
  QSqlQuery * obj = (QSqlQuery *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->nextResult () );
  }
}

/*
int numRowsAffected () const
*/
HB_FUNC_STATIC( QSQLQUERY_NUMROWSAFFECTED )
{
  QSqlQuery * obj = (QSqlQuery *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->numRowsAffected () );
  }
}

/*
QSql::NumericalPrecisionPolicy numericalPrecisionPolicy () const
*/
HB_FUNC_STATIC( QSQLQUERY_NUMERICALPRECISIONPOLICY )
{
  QSqlQuery * obj = (QSqlQuery *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->numericalPrecisionPolicy () );
  }
}

/*
void setNumericalPrecisionPolicy ( QSql::NumericalPrecisionPolicy precisionPolicy )
*/
HB_FUNC_STATIC( QSQLQUERY_SETNUMERICALPRECISIONPOLICY )
{
  QSqlQuery * obj = (QSqlQuery *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setNumericalPrecisionPolicy ( (QSql::NumericalPrecisionPolicy) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool prepare ( const QString & query )
*/
HB_FUNC_STATIC( QSQLQUERY_PREPARE )
{
  QSqlQuery * obj = (QSqlQuery *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      RBOOL( obj->prepare ( PQSTRING(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool previous ()
*/
HB_FUNC_STATIC( QSQLQUERY_PREVIOUS )
{
  QSqlQuery * obj = (QSqlQuery *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->previous () );
  }
}

/*
QSqlRecord record () const
*/
HB_FUNC_STATIC( QSQLQUERY_RECORD )
{
  QSqlQuery * obj = (QSqlQuery *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSqlRecord * ptr = new QSqlRecord( obj->record () );
    _qt5xhb_createReturnClass ( ptr, "QSQLRECORD", true );
  }
}

/*
const QSqlResult * result () const
*/
HB_FUNC_STATIC( QSQLQUERY_RESULT )
{
  QSqlQuery * obj = (QSqlQuery *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    const QSqlResult * ptr = obj->result ();
    _qt5xhb_createReturnClass ( ptr, "QSQLRESULT" );
  }
}

/*
bool seek ( int index, bool relative = false )
*/
HB_FUNC_STATIC( QSQLQUERY_SEEK )
{
  QSqlQuery * obj = (QSqlQuery *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISOPTLOG(2) )
    {
      RBOOL( obj->seek ( PINT(1), OPBOOL(2,false) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int size () const
*/
HB_FUNC_STATIC( QSQLQUERY_SIZE )
{
  QSqlQuery * obj = (QSqlQuery *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->size () );
  }
}

/*
QVariant value ( int index ) const
*/
void QSqlQuery_value1 ()
{
  QSqlQuery * obj = (QSqlQuery *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QVariant * ptr = new QVariant( obj->value ( PINT(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}

/*
QVariant value(const QString& name) const
*/
void QSqlQuery_value2 ()
{
  QSqlQuery * obj = (QSqlQuery *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QVariant * ptr = new QVariant( obj->value ( PQSTRING(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}

//[1]QVariant value ( int index ) const
//[2]QVariant value(const QString& name) const

HB_FUNC_STATIC( QSQLQUERY_VALUE )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QSqlQuery_value1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QSqlQuery_value2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$extraMethods

#pragma ENDDUMP