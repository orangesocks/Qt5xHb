/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QMediaStreamsControlSlots.h"

QMediaStreamsControlSlots::QMediaStreamsControlSlots(QObject *parent) : QObject(parent)
{
}

QMediaStreamsControlSlots::~QMediaStreamsControlSlots()
{
}
void QMediaStreamsControlSlots::activeStreamsChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "activeStreamsChanged()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QMEDIASTREAMSCONTROL" );
    hb_vmEvalBlockV( cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void QMediaStreamsControlSlots::streamsChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "streamsChanged()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QMEDIASTREAMSCONTROL" );
    hb_vmEvalBlockV( cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void QMediaStreamsControlSlots_connect_signal( const QString & signal, const QString & slot )
{
  QMediaStreamsControl * obj = (QMediaStreamsControl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QMediaStreamsControlSlots * s = QCoreApplication::instance()->findChild<QMediaStreamsControlSlots *>();

    if( s == NULL )
    {
      s = new QMediaStreamsControlSlots();
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
