$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QGEOROUTEREQUEST
REQUEST QGEOROUTE
#endif

CLASS QGeoRouteReply INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD isFinished
   METHOD error
   METHOD errorString
   METHOD request
   METHOD routes
   METHOD abort

   METHOD onFinished
   METHOD onError

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,4,0

/*
QGeoRouteReply(Error error, const QString &errorString, QObject *parent = 0)
*/
HB_FUNC_STATIC( QGEOROUTEREPLY_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRouteReply * o = new QGeoRouteReply ( (QGeoRouteReply::Error) hb_parni(1), PQSTRING(2), OPQOBJECT(3,0) );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}


$deleteMethod=5,4,0

/*
bool isFinished() const
*/
HB_FUNC_STATIC( QGEOROUTEREPLY_ISFINISHED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRouteReply * obj = (QGeoRouteReply *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isFinished () );
  }
#endif
}


/*
Error error() const
*/
HB_FUNC_STATIC( QGEOROUTEREPLY_ERROR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRouteReply * obj = (QGeoRouteReply *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->error () );
  }
#endif
}


/*
QString errorString() const
*/
HB_FUNC_STATIC( QGEOROUTEREPLY_ERRORSTRING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRouteReply * obj = (QGeoRouteReply *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->errorString () );
  }
#endif
}


/*
QGeoRouteRequest request() const
*/
HB_FUNC_STATIC( QGEOROUTEREPLY_REQUEST )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRouteReply * obj = (QGeoRouteReply *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGeoRouteRequest * ptr = new QGeoRouteRequest( obj->request () );
    _qt5xhb_createReturnClass ( ptr, "QGEOROUTEREQUEST", true );
  }
#endif
}


/*
QList<QGeoRoute> routes() const
*/
HB_FUNC_STATIC( QGEOROUTEREPLY_ROUTES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRouteReply * obj = (QGeoRouteReply *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QGeoRoute> list = obj->routes ();
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QGEOROUTE" );
    #else
    pDynSym = hb_dynsymFindName( "QGEOROUTE" );
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
        hb_itemPutPtr( pItem, (QGeoRoute *) new QGeoRoute ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_itemRelease( pItem );
        PHB_ITEM pDestroy = hb_itemNew( NULL );
        hb_itemPutL( pDestroy, true );
        hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
        hb_itemRelease( pDestroy );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
      }
    }
    hb_itemReturnRelease(pArray);
  }
#endif
}


/*
virtual void abort()
*/
HB_FUNC_STATIC( QGEOROUTEREPLY_ABORT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRouteReply * obj = (QGeoRouteReply *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->abort ();
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}




#pragma ENDDUMP