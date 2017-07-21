$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QGEOPOSITIONINFO
#endif

CLASS QGeoPositionInfoSource INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD setUpdateInterval
   METHOD updateInterval
   METHOD setPreferredPositioningMethods
   METHOD preferredPositioningMethods
   METHOD lastKnownPosition
   METHOD supportedPositioningMethods
   METHOD minimumUpdateInterval
   METHOD sourceName
   METHOD error
   METHOD startUpdates
   METHOD stopUpdates
   METHOD requestUpdate
   METHOD createDefaultSource
   METHOD createSource
   METHOD availableSources

   METHOD onPositionUpdated
   METHOD onUpdateTimeout
   METHOD onError

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,2,0

#include <QStringList>

$deleteMethod=5,2,0

/*
virtual void setUpdateInterval(int msec)
*/
HB_FUNC_STATIC( QGEOPOSITIONINFOSOURCE_SETUPDATEINTERVAL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoPositionInfoSource * obj = (QGeoPositionInfoSource *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setUpdateInterval ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
int updateInterval() const
*/
HB_FUNC_STATIC( QGEOPOSITIONINFOSOURCE_UPDATEINTERVAL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoPositionInfoSource * obj = (QGeoPositionInfoSource *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->updateInterval () );
  }
#endif
}


/*
virtual void setPreferredPositioningMethods(PositioningMethods methods)
*/
HB_FUNC_STATIC( QGEOPOSITIONINFOSOURCE_SETPREFERREDPOSITIONINGMETHODS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoPositionInfoSource * obj = (QGeoPositionInfoSource *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setPreferredPositioningMethods ( (QGeoPositionInfoSource::PositioningMethods) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
PositioningMethods preferredPositioningMethods() const
*/
HB_FUNC_STATIC( QGEOPOSITIONINFOSOURCE_PREFERREDPOSITIONINGMETHODS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoPositionInfoSource * obj = (QGeoPositionInfoSource *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->preferredPositioningMethods () );
  }
#endif
}


/*
virtual QGeoPositionInfo lastKnownPosition(bool fromSatellitePositioningMethodsOnly = false) const = 0
*/
HB_FUNC_STATIC( QGEOPOSITIONINFOSOURCE_LASTKNOWNPOSITION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoPositionInfoSource * obj = (QGeoPositionInfoSource *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGeoPositionInfo * ptr = new QGeoPositionInfo( obj->lastKnownPosition ( OPBOOL(1,false) ) );
    _qt5xhb_createReturnClass ( ptr, "QGEOPOSITIONINFO", true );
  }
#endif
}


/*
virtual PositioningMethods supportedPositioningMethods() const = 0
*/
HB_FUNC_STATIC( QGEOPOSITIONINFOSOURCE_SUPPORTEDPOSITIONINGMETHODS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoPositionInfoSource * obj = (QGeoPositionInfoSource *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->supportedPositioningMethods () );
  }
#endif
}


/*
virtual int minimumUpdateInterval() const = 0
*/
HB_FUNC_STATIC( QGEOPOSITIONINFOSOURCE_MINIMUMUPDATEINTERVAL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoPositionInfoSource * obj = (QGeoPositionInfoSource *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->minimumUpdateInterval () );
  }
#endif
}


/*
QString sourceName() const
*/
HB_FUNC_STATIC( QGEOPOSITIONINFOSOURCE_SOURCENAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoPositionInfoSource * obj = (QGeoPositionInfoSource *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->sourceName () );
  }
#endif
}


/*
virtual Error error() const = 0
*/
HB_FUNC_STATIC( QGEOPOSITIONINFOSOURCE_ERROR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoPositionInfoSource * obj = (QGeoPositionInfoSource *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->error () );
  }
#endif
}


/*
virtual void startUpdates() = 0
*/
HB_FUNC_STATIC( QGEOPOSITIONINFOSOURCE_STARTUPDATES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoPositionInfoSource * obj = (QGeoPositionInfoSource *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->startUpdates ();
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
virtual void stopUpdates() = 0
*/
HB_FUNC_STATIC( QGEOPOSITIONINFOSOURCE_STOPUPDATES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoPositionInfoSource * obj = (QGeoPositionInfoSource *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->stopUpdates ();
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
virtual void requestUpdate(int timeout = 0) = 0
*/
HB_FUNC_STATIC( QGEOPOSITIONINFOSOURCE_REQUESTUPDATE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoPositionInfoSource * obj = (QGeoPositionInfoSource *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->requestUpdate ( OPINT(1,0) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
static QGeoPositionInfoSource *createDefaultSource(QObject *parent)
*/
HB_FUNC_STATIC( QGEOPOSITIONINFOSOURCE_CREATEDEFAULTSOURCE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoPositionInfoSource * ptr = QGeoPositionInfoSource::createDefaultSource ( PQOBJECT(1) );
  _qt5xhb_createReturnClass ( ptr, "QGEOPOSITIONINFOSOURCE" );
#endif
}


/*
static QGeoPositionInfoSource *createSource(const QString &sourceName, QObject *parent)
*/
HB_FUNC_STATIC( QGEOPOSITIONINFOSOURCE_CREATESOURCE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoPositionInfoSource * ptr = QGeoPositionInfoSource::createSource ( PQSTRING(1), PQOBJECT(2) );
  _qt5xhb_createReturnClass ( ptr, "QGEOPOSITIONINFOSOURCE" );
#endif
}


/*
static QStringList availableSources()
*/
HB_FUNC_STATIC( QGEOPOSITIONINFOSOURCE_AVAILABLESOURCES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  RQSTRINGLIST( QGeoPositionInfoSource::availableSources () );
#endif
}




#pragma ENDDUMP
