/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QVideoProbeSlots.h"

QVideoProbeSlots::QVideoProbeSlots(QObject *parent) : QObject(parent)
{
}

QVideoProbeSlots::~QVideoProbeSlots()
{
}
void QVideoProbeSlots::flush()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "flush()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QVIDEOPROBE" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void QVideoProbeSlots::videoFrameProbed( const QVideoFrame & frame )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "videoFrameProbed(QVideoFrame)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QVIDEOPROBE" );
    PHB_ITEM pframe = Signals_return_object( (void *) &frame, "QVIDEOFRAME" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pframe );
    hb_itemRelease( psender );
    hb_itemRelease( pframe );
  }
}

void QVideoProbeSlots_connect_signal ( const QString & signal, const QString & slot )
{
  QVideoProbe * obj = (QVideoProbe *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QVideoProbeSlots * s = QCoreApplication::instance()->findChild<QVideoProbeSlots *>();

    if( s == NULL )
    {
      s = new QVideoProbeSlots();
      s->moveToThread( QCoreApplication::instance()->thread() );
      s->setParent( QCoreApplication::instance() );
    }

    hb_retl( Signals_connection_disconnection( s, signal, slot ) );
  }
  else
  {
    hb_retl( false );
  }
}
