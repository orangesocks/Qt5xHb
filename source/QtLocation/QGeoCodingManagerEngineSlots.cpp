/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QGeoCodingManagerEngineSlots.h"

QGeoCodingManagerEngineSlots::QGeoCodingManagerEngineSlots(QObject *parent) : QObject(parent)
{
}

QGeoCodingManagerEngineSlots::~QGeoCodingManagerEngineSlots()
{
}
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
void QGeoCodingManagerEngineSlots::finished( QGeoCodeReply * reply )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "finished(QGeoCodeReply*)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QGEOCODINGMANAGERENGINE" );
    PHB_ITEM preply = Signals_return_qobject( (QObject *) reply, "QGEOCODEREPLY" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, preply );
    hb_itemRelease( psender );
    hb_itemRelease( preply );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
void QGeoCodingManagerEngineSlots::error( QGeoCodeReply * reply, QGeoCodeReply::Error error, QString errorString )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "error(QGeoCodeReply*,QGeoCodeReply::Error,QString)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QGEOCODINGMANAGERENGINE" );
    PHB_ITEM preply = Signals_return_qobject( (QObject *) reply, "QGEOCODEREPLY" );
    PHB_ITEM perror = hb_itemPutNI( NULL, (int) error );
    PHB_ITEM perrorString = hb_itemPutC( NULL, (const char *) errorString.toLatin1().data() );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 4, psender, preply, perror, perrorString );
    hb_itemRelease( psender );
    hb_itemRelease( preply );
    hb_itemRelease( perror );
    hb_itemRelease( perrorString );
  }
}
#endif

void QGeoCodingManagerEngineSlots_connect_signal ( const QString & signal, const QString & slot )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoCodingManagerEngine * obj = (QGeoCodingManagerEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QGeoCodingManagerEngineSlots * s = QCoreApplication::instance()->findChild<QGeoCodingManagerEngineSlots *>();

    if( s == NULL )
    {
      s = new QGeoCodingManagerEngineSlots();
      s->moveToThread( QCoreApplication::instance()->thread() );
      s->setParent( QCoreApplication::instance() );
    }

    hb_retl( Signals_connection_disconnection( s, signal, slot ) );
  }
  else
  {
    hb_retl( false );
  }
#else
  hb_retl( false );
#endif
}
