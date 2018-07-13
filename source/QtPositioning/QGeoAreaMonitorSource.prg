/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QGEOPOSITIONINFOSOURCE
REQUEST QGEOAREAMONITORINFO
#endif

CLASS QGeoAreaMonitorSource INHERIT QObject

   METHOD delete
   METHOD setPositionInfoSource
   METHOD positionInfoSource
   METHOD sourceName
   METHOD error
   METHOD supportedAreaMonitorFeatures
   METHOD startMonitoring
   METHOD stopMonitoring
   METHOD requestUpdate
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

PROCEDURE destroyObject () CLASS QGeoAreaMonitorSource
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QGeoAreaMonitorSource>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QGeoAreaMonitorSource>
#endif
#endif

HB_FUNC_STATIC( QGEOAREAMONITORSOURCE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAreaMonitorSource * obj = (QGeoAreaMonitorSource *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
virtual void setPositionInfoSource(QGeoPositionInfoSource *source)
*/
HB_FUNC_STATIC( QGEOAREAMONITORSOURCE_SETPOSITIONINFOSOURCE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAreaMonitorSource * obj = (QGeoAreaMonitorSource *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQGEOPOSITIONINFOSOURCE(1) )
    {
      obj->setPositionInfoSource ( PQGEOPOSITIONINFOSOURCE(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(0) )
    {
      QGeoPositionInfoSource * ptr = obj->positionInfoSource ();
      _qt5xhb_createReturnClass ( ptr, "QGEOPOSITIONINFOSOURCE", false );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->sourceName () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(0) )
    {
      RENUM( obj->error () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(0) )
    {
      RENUM( obj->supportedAreaMonitorFeatures () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(1) && ISQGEOAREAMONITORINFO(1) )
    {
      RBOOL( obj->startMonitoring ( *PQGEOAREAMONITORINFO(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(1) && ISQGEOAREAMONITORINFO(1) )
    {
      RBOOL( obj->stopMonitoring ( *PQGEOAREAMONITORINFO(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(2) && ISQGEOAREAMONITORINFO(1) && ISCHAR(2) )
    {
      RBOOL( obj->requestUpdate ( *PQGEOAREAMONITORINFO(1), PCONSTCHAR(2) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
virtual QList<QGeoAreaMonitorInfo> activeMonitors() const = 0
*/
void QGeoAreaMonitorSource_activeMonitors1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAreaMonitorSource * obj = (QGeoAreaMonitorSource *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      QList<QGeoAreaMonitorInfo> list = obj->activeMonitors ();
      PHB_DYNS pDynSym = hb_dynsymFindName( "QGEOAREAMONITORINFO" );
      PHB_ITEM pArray = hb_itemArrayNew(0);
      int i;
      for(i=0;i<list.count();i++)
      {
        if( pDynSym )
        {
          hb_vmPushDynSym( pDynSym );
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
        else
        {
          hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QGEOAREAMONITORINFO", HB_ERR_ARGS_BASEPARAMS );
        }
      }
      hb_itemReturnRelease(pArray);
  }
#endif
}

/*
virtual QList<QGeoAreaMonitorInfo> activeMonitors(const QGeoShape &lookupArea) const = 0
*/
void QGeoAreaMonitorSource_activeMonitors2 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAreaMonitorSource * obj = (QGeoAreaMonitorSource *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      QList<QGeoAreaMonitorInfo> list = obj->activeMonitors ( *PQGEOSHAPE(1) );
      PHB_DYNS pDynSym = hb_dynsymFindName( "QGEOAREAMONITORINFO" );
      PHB_ITEM pArray = hb_itemArrayNew(0);
      int i;
      for(i=0;i<list.count();i++)
      {
        if( pDynSym )
        {
          hb_vmPushDynSym( pDynSym );
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
        else
        {
          hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QGEOAREAMONITORINFO", HB_ERR_ARGS_BASEPARAMS );
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
    QGeoAreaMonitorSource_activeMonitors1();
  }
  else if( ISNUMPAR(1) && ISQGEOSHAPE(1) )
  {
    QGeoAreaMonitorSource_activeMonitors2();
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
    if( ISNUMPAR(1) && ISQOBJECT(1) )
  {
      QGeoAreaMonitorSource * ptr = QGeoAreaMonitorSource::createDefaultSource ( PQOBJECT(1) );
      _qt5xhb_createReturnQObjectClass ( ptr, "QGEOAREAMONITORSOURCE" );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static QGeoAreaMonitorSource *createSource(const QString& sourceName, QObject *parent)
*/
HB_FUNC_STATIC( QGEOAREAMONITORSOURCE_CREATESOURCE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
    if( ISNUMPAR(2) && ISCHAR(1) && ISQOBJECT(2) )
  {
      QGeoAreaMonitorSource * ptr = QGeoAreaMonitorSource::createSource ( PQSTRING(1), PQOBJECT(2) );
      _qt5xhb_createReturnQObjectClass ( ptr, "QGEOAREAMONITORSOURCE" );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static QStringList availableSources()
*/
HB_FUNC_STATIC( QGEOAREAMONITORSOURCE_AVAILABLESOURCES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
    if( ISNUMPAR(0) )
  {
      RQSTRINGLIST( QGeoAreaMonitorSource::availableSources () );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

void QGeoAreaMonitorSourceSlots_connect_signal ( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QGEOAREAMONITORSOURCE_ONAREAENTERED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAreaMonitorSourceSlots_connect_signal( "areaEntered(QGeoAreaMonitorInfo,QGeoPositionInfo)", "areaEntered(QGeoAreaMonitorInfo,QGeoPositionInfo)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QGEOAREAMONITORSOURCE_ONAREAEXITED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAreaMonitorSourceSlots_connect_signal( "areaExited(QGeoAreaMonitorInfo,QGeoPositionInfo)", "areaExited(QGeoAreaMonitorInfo,QGeoPositionInfo)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QGEOAREAMONITORSOURCE_ONMONITOREXPIRED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAreaMonitorSourceSlots_connect_signal( "monitorExpired(QGeoAreaMonitorInfo)", "monitorExpired(QGeoAreaMonitorInfo)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QGEOAREAMONITORSOURCE_ONERROR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAreaMonitorSourceSlots_connect_signal( "error(QGeoAreaMonitorSource::Error)", "error(QGeoAreaMonitorSource::Error)" );
#else
  hb_retl( false );
#endif
}

#pragma ENDDUMP
