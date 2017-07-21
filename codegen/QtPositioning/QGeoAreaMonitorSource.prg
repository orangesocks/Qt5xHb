$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QGEOPOSITIONINFOSOURCE
REQUEST QGEOAREAMONITORINFO
#endif

CLASS QGeoAreaMonitorSource INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD setPositionInfoSource
   METHOD positionInfoSource
   METHOD sourceName
   METHOD error
   METHOD supportedAreaMonitorFeatures
   METHOD startMonitoring
   METHOD stopMonitoring
   METHOD requestUpdate
   METHOD activeMonitors1
   METHOD activeMonitors2
   METHOD activeMonitors
   METHOD createDefaultSource
   METHOD createSource
   METHOD availableSources

   METHOD onAreaEntered
   METHOD onAreaExited
   METHOD onMonitorExpired
   METHOD onError

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,2,0

$deleteMethod=5,2,0

/*
virtual void setPositionInfoSource(QGeoPositionInfoSource *source)
*/
HB_FUNC_STATIC( QGEOAREAMONITORSOURCE_SETPOSITIONINFOSOURCE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAreaMonitorSource * obj = (QGeoAreaMonitorSource *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGeoPositionInfoSource * par1 = (QGeoPositionInfoSource *) _qt5xhb_itemGetPtr(1);
    obj->setPositionInfoSource ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
virtual QGeoPositionInfoSource* positionInfoSource() const
*/
HB_FUNC_STATIC( QGEOAREAMONITORSOURCE_POSITIONINFOSOURCE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAreaMonitorSource * obj = (QGeoAreaMonitorSource *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGeoPositionInfoSource * ptr = obj->positionInfoSource ();
    _qt5xhb_createReturnClass ( ptr, "QGEOPOSITIONINFOSOURCE" );
  }
#endif
}


/*
QString sourceName() const
*/
HB_FUNC_STATIC( QGEOAREAMONITORSOURCE_SOURCENAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAreaMonitorSource * obj = (QGeoAreaMonitorSource *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->sourceName () );
  }
#endif
}


/*
virtual Error error() const = 0
*/
HB_FUNC_STATIC( QGEOAREAMONITORSOURCE_ERROR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAreaMonitorSource * obj = (QGeoAreaMonitorSource *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->error () );
  }
#endif
}


/*
virtual AreaMonitorFeatures supportedAreaMonitorFeatures() const = 0
*/
HB_FUNC_STATIC( QGEOAREAMONITORSOURCE_SUPPORTEDAREAMONITORFEATURES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAreaMonitorSource * obj = (QGeoAreaMonitorSource *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->supportedAreaMonitorFeatures () );
  }
#endif
}


/*
virtual bool startMonitoring(const QGeoAreaMonitorInfo &monitor) = 0
*/
HB_FUNC_STATIC( QGEOAREAMONITORSOURCE_STARTMONITORING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAreaMonitorSource * obj = (QGeoAreaMonitorSource *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->startMonitoring ( *PQGEOAREAMONITORINFO(1) ) );
  }
#endif
}


/*
virtual bool stopMonitoring(const QGeoAreaMonitorInfo &monitor) = 0
*/
HB_FUNC_STATIC( QGEOAREAMONITORSOURCE_STOPMONITORING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAreaMonitorSource * obj = (QGeoAreaMonitorSource *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->stopMonitoring ( *PQGEOAREAMONITORINFO(1) ) );
  }
#endif
}


/*
virtual bool requestUpdate(const QGeoAreaMonitorInfo &monitor, const char *signal) = 0
*/
HB_FUNC_STATIC( QGEOAREAMONITORSOURCE_REQUESTUPDATE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAreaMonitorSource * obj = (QGeoAreaMonitorSource *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->requestUpdate ( *PQGEOAREAMONITORINFO(1), PCONSTCHAR(2) ) );
  }
#endif
}


/*
virtual QList<QGeoAreaMonitorInfo> activeMonitors() const = 0
*/
HB_FUNC_STATIC( QGEOAREAMONITORSOURCE_ACTIVEMONITORS1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAreaMonitorSource * obj = (QGeoAreaMonitorSource *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QGeoAreaMonitorInfo> list = obj->activeMonitors ();
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QGEOAREAMONITORINFO" );
    #else
    pDynSym = hb_dynsymFindName( "QGEOAREAMONITORINFO" );
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
        hb_itemPutPtr( pItem, (QGeoAreaMonitorInfo *) new QGeoAreaMonitorInfo ( list[i] ) );
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
virtual QList<QGeoAreaMonitorInfo> activeMonitors(const QGeoShape &lookupArea) const = 0
*/
HB_FUNC_STATIC( QGEOAREAMONITORSOURCE_ACTIVEMONITORS2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAreaMonitorSource * obj = (QGeoAreaMonitorSource *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QGeoAreaMonitorInfo> list = obj->activeMonitors ( *PQGEOSHAPE(1) );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QGEOAREAMONITORINFO" );
    #else
    pDynSym = hb_dynsymFindName( "QGEOAREAMONITORINFO" );
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
        hb_itemPutPtr( pItem, (QGeoAreaMonitorInfo *) new QGeoAreaMonitorInfo ( list[i] ) );
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


//[1]virtual QList<QGeoAreaMonitorInfo> activeMonitors() const = 0
//[2]virtual QList<QGeoAreaMonitorInfo> activeMonitors(const QGeoShape &lookupArea) const = 0

HB_FUNC_STATIC( QGEOAREAMONITORSOURCE_ACTIVEMONITORS )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QGEOAREAMONITORSOURCE_ACTIVEMONITORS1 );
  }
  else if( ISNUMPAR(1) && ISQGEOSHAPE(1) )
  {
    HB_FUNC_EXEC( QGEOAREAMONITORSOURCE_ACTIVEMONITORS2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QGeoAreaMonitorSource *createDefaultSource(QObject *parent)
*/
HB_FUNC_STATIC( QGEOAREAMONITORSOURCE_CREATEDEFAULTSOURCE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAreaMonitorSource * ptr = QGeoAreaMonitorSource::createDefaultSource ( PQOBJECT(1) );
  _qt5xhb_createReturnClass ( ptr, "QGEOAREAMONITORSOURCE" );
#endif
}


/*
static QGeoAreaMonitorSource *createSource(const QString& sourceName, QObject *parent)
*/
HB_FUNC_STATIC( QGEOAREAMONITORSOURCE_CREATESOURCE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAreaMonitorSource * ptr = QGeoAreaMonitorSource::createSource ( PQSTRING(1), PQOBJECT(2) );
  _qt5xhb_createReturnClass ( ptr, "QGEOAREAMONITORSOURCE" );
#endif
}


/*
static QStringList availableSources()
*/
HB_FUNC_STATIC( QGEOAREAMONITORSOURCE_AVAILABLESOURCES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  RQSTRINGLIST( QGeoAreaMonitorSource::availableSources () );
#endif
}




#pragma ENDDUMP
