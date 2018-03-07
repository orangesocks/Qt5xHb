/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QGeoSatelliteInfoSourceSlots.h"

static QGeoSatelliteInfoSourceSlots * s = NULL;

QGeoSatelliteInfoSourceSlots::QGeoSatelliteInfoSourceSlots(QObject *parent) : QObject(parent)
{
}

QGeoSatelliteInfoSourceSlots::~QGeoSatelliteInfoSourceSlots()
{
}
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
void QGeoSatelliteInfoSourceSlots::satellitesInViewUpdated( const QList<QGeoSatelliteInfo> & satellites )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "satellitesInViewUpdated(QList<QGeoSatelliteInfo>)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QGEOSATELLITEINFOSOURCE" );
    PHB_DYNS pDynSym = hb_dynsymFindName( "QGEOSATELLITEINFO" );
    PHB_ITEM psatellites = hb_itemArrayNew(0);
    int i;
    for(i=0;i<satellites.count();i++)
    {
      if( pDynSym )
      {
        hb_vmPushDynSym( pDynSym );
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pTempObject = hb_itemNew( NULL );
        hb_itemCopy( pTempObject, hb_stackReturnItem() );
        PHB_ITEM pTempItem = hb_itemNew( NULL );
        hb_itemPutPtr( pTempItem, (QGeoSatelliteInfo *) new QGeoSatelliteInfo ( satellites [i] ) );
        hb_objSendMsg( pTempObject, "NEWFROMPOINTER", 1, pTempItem );
        hb_arrayAddForward( psatellites, pTempObject );
        hb_itemRelease( pTempObject );
        hb_itemRelease( pTempItem );
      }
      else
      {
        hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QGEOSATELLITEINFO", HB_ERR_ARGS_BASEPARAMS );
      }
    }
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, psatellites );
    hb_itemRelease( psender );
    hb_itemRelease( psatellites );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
void QGeoSatelliteInfoSourceSlots::satellitesInUseUpdated( const QList<QGeoSatelliteInfo> & satellites )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "satellitesInUseUpdated(QList<QGeoSatelliteInfo>)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QGEOSATELLITEINFOSOURCE" );
    PHB_DYNS pDynSym = hb_dynsymFindName( "QGEOSATELLITEINFO" );
    PHB_ITEM psatellites = hb_itemArrayNew(0);
    int i;
    for(i=0;i<satellites.count();i++)
    {
      if( pDynSym )
      {
        hb_vmPushDynSym( pDynSym );
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pTempObject = hb_itemNew( NULL );
        hb_itemCopy( pTempObject, hb_stackReturnItem() );
        PHB_ITEM pTempItem = hb_itemNew( NULL );
        hb_itemPutPtr( pTempItem, (QGeoSatelliteInfo *) new QGeoSatelliteInfo ( satellites [i] ) );
        hb_objSendMsg( pTempObject, "NEWFROMPOINTER", 1, pTempItem );
        hb_arrayAddForward( psatellites, pTempObject );
        hb_itemRelease( pTempObject );
        hb_itemRelease( pTempItem );
      }
      else
      {
        hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QGEOSATELLITEINFO", HB_ERR_ARGS_BASEPARAMS );
      }
    }
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, psatellites );
    hb_itemRelease( psender );
    hb_itemRelease( psatellites );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
void QGeoSatelliteInfoSourceSlots::requestTimeout()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "requestTimeout()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QGEOSATELLITEINFOSOURCE" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
void QGeoSatelliteInfoSourceSlots::error( QGeoSatelliteInfoSource::Error error )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "error(QGeoSatelliteInfoSource::Error)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QGEOSATELLITEINFOSOURCE" );
    PHB_ITEM perror = hb_itemPutNI( NULL, (int) error );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, perror );
    hb_itemRelease( psender );
    hb_itemRelease( perror );
  }
}
#endif

void QGeoSatelliteInfoSourceSlots_connect_signal ( const QString & signal, const QString & slot )
{
  if( s == NULL )
  {
    s = new QGeoSatelliteInfoSourceSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, signal, slot ) );
}
