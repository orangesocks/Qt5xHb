$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMEDIATIMEINTERVAL
#endif

CLASS QMediaTimeRange

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new
   METHOD delete
   METHOD addInterval1
   METHOD addInterval2
   METHOD addInterval
   METHOD addTimeRange
   METHOD clear
   METHOD contains
   METHOD earliestTime
   METHOD intervals
   METHOD isContinuous
   METHOD isEmpty
   METHOD latestTime
   METHOD removeInterval1
   METHOD removeInterval2
   METHOD removeInterval
   METHOD removeTimeRange

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

#include <QList>

/*
QMediaTimeRange()
*/
HB_FUNC_STATIC( QMEDIATIMERANGE_NEW1 )
{
  QMediaTimeRange * o = new QMediaTimeRange ();
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QMediaTimeRange(qint64 start, qint64 end)
*/
HB_FUNC_STATIC( QMEDIATIMERANGE_NEW2 )
{
  QMediaTimeRange * o = new QMediaTimeRange ( PQINT64(1), PQINT64(2) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QMediaTimeRange(const QMediaTimeInterval & interval)
*/
HB_FUNC_STATIC( QMEDIATIMERANGE_NEW3 )
{
  QMediaTimeRange * o = new QMediaTimeRange ( *PQMEDIATIMEINTERVAL(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QMediaTimeRange(const QMediaTimeRange & range)
*/
HB_FUNC_STATIC( QMEDIATIMERANGE_NEW4 )
{
  QMediaTimeRange * o = new QMediaTimeRange ( *PQMEDIATIMERANGE(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}


//[1]QMediaTimeRange()
//[2]QMediaTimeRange(qint64 start, qint64 end)
//[3]QMediaTimeRange(const QMediaTimeInterval & interval)
//[4]QMediaTimeRange(const QMediaTimeRange & range)

HB_FUNC_STATIC( QMEDIATIMERANGE_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QMEDIATIMERANGE_NEW1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QMEDIATIMERANGE_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQMEDIATIMEINTERVAL(1) )
  {
    HB_FUNC_EXEC( QMEDIATIMERANGE_NEW3 );
  }
  else if( ISNUMPAR(1) && ISQMEDIATIMERANGE(1) )
  {
    HB_FUNC_EXEC( QMEDIATIMERANGE_NEW4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
void addInterval(const QMediaTimeInterval & interval)
*/
HB_FUNC_STATIC( QMEDIATIMERANGE_ADDINTERVAL1 )
{
  QMediaTimeRange * obj = (QMediaTimeRange *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->addInterval ( *PQMEDIATIMEINTERVAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void addInterval(qint64 start, qint64 end)
*/
HB_FUNC_STATIC( QMEDIATIMERANGE_ADDINTERVAL2 )
{
  QMediaTimeRange * obj = (QMediaTimeRange *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->addInterval ( PQINT64(1), PQINT64(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void addInterval(const QMediaTimeInterval & interval)
//[2]void addInterval(qint64 start, qint64 end)

HB_FUNC_STATIC( QMEDIATIMERANGE_ADDINTERVAL )
{
  if( ISNUMPAR(1) && ISQMEDIATIMEINTERVAL(1) )
  {
    HB_FUNC_EXEC( QMEDIATIMERANGE_ADDINTERVAL1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QMEDIATIMERANGE_ADDINTERVAL2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void addTimeRange(const QMediaTimeRange & range)
*/
HB_FUNC_STATIC( QMEDIATIMERANGE_ADDTIMERANGE )
{
  QMediaTimeRange * obj = (QMediaTimeRange *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->addTimeRange ( *PQMEDIATIMERANGE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void clear()
*/
HB_FUNC_STATIC( QMEDIATIMERANGE_CLEAR )
{
  QMediaTimeRange * obj = (QMediaTimeRange *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clear ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool contains(qint64 time) const
*/
HB_FUNC_STATIC( QMEDIATIMERANGE_CONTAINS )
{
  QMediaTimeRange * obj = (QMediaTimeRange *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->contains ( PQINT64(1) ) );
  }
}


/*
qint64 earliestTime() const
*/
HB_FUNC_STATIC( QMEDIATIMERANGE_EARLIESTTIME )
{
  QMediaTimeRange * obj = (QMediaTimeRange *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQINT64( obj->earliestTime () );
  }
}


/*
QList<QMediaTimeInterval> intervals() const
*/
HB_FUNC_STATIC( QMEDIATIMERANGE_INTERVALS )
{
  QMediaTimeRange * obj = (QMediaTimeRange *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QMediaTimeInterval> list = obj->intervals ();
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QMEDIATIMEINTERVAL" );
    #else
    pDynSym = hb_dynsymFindName( "QMEDIATIMEINTERVAL" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QMediaTimeInterval *) new QMediaTimeInterval ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_itemRelease( pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}


/*
bool isContinuous() const
*/
HB_FUNC_STATIC( QMEDIATIMERANGE_ISCONTINUOUS )
{
  QMediaTimeRange * obj = (QMediaTimeRange *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isContinuous () );
  }
}


/*
bool isEmpty() const
*/
HB_FUNC_STATIC( QMEDIATIMERANGE_ISEMPTY )
{
  QMediaTimeRange * obj = (QMediaTimeRange *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isEmpty () );
  }
}


/*
qint64 latestTime() const
*/
HB_FUNC_STATIC( QMEDIATIMERANGE_LATESTTIME )
{
  QMediaTimeRange * obj = (QMediaTimeRange *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQINT64( obj->latestTime () );
  }
}


/*
void removeInterval(const QMediaTimeInterval & interval)
*/
HB_FUNC_STATIC( QMEDIATIMERANGE_REMOVEINTERVAL1 )
{
  QMediaTimeRange * obj = (QMediaTimeRange *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->removeInterval ( *PQMEDIATIMEINTERVAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void removeInterval(qint64 start, qint64 end)
*/
HB_FUNC_STATIC( QMEDIATIMERANGE_REMOVEINTERVAL2 )
{
  QMediaTimeRange * obj = (QMediaTimeRange *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->removeInterval ( PQINT64(1), PQINT64(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void removeInterval(const QMediaTimeInterval & interval)
//[2]void removeInterval(qint64 start, qint64 end)

HB_FUNC_STATIC( QMEDIATIMERANGE_REMOVEINTERVAL )
{
  if( ISNUMPAR(1) && ISQMEDIATIMEINTERVAL(1) )
  {
    HB_FUNC_EXEC( QMEDIATIMERANGE_REMOVEINTERVAL1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QMEDIATIMERANGE_REMOVEINTERVAL2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void removeTimeRange(const QMediaTimeRange & range)
*/
HB_FUNC_STATIC( QMEDIATIMERANGE_REMOVETIMERANGE )
{
  QMediaTimeRange * obj = (QMediaTimeRange *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->removeTimeRange ( *PQMEDIATIMERANGE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



$extraMethods

#pragma ENDDUMP