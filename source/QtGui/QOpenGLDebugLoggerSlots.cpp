/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QOpenGLDebugLoggerSlots.h"

QOpenGLDebugLoggerSlots::QOpenGLDebugLoggerSlots( QObject *parent ) : QObject( parent )
{
}

QOpenGLDebugLoggerSlots::~QOpenGLDebugLoggerSlots()
{
}

void QOpenGLDebugLoggerSlots::messageLogged( const QOpenGLDebugMessage & debugMessage )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Signals_return_codeblock( object, "messageLogged(QOpenGLDebugMessage)" );

  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QOPENGLDEBUGLOGGER" );
    PHB_ITEM pdebugMessage = Signals_return_object( (void *) &debugMessage, "QOPENGLDEBUGMESSAGE" );

    hb_vmEvalBlockV( cb, 2, psender, pdebugMessage );

    hb_itemRelease( psender );
    hb_itemRelease( pdebugMessage );
  }
}

void QOpenGLDebugLoggerSlots_connect_signal( const QString & signal, const QString & slot )
{
  QOpenGLDebugLogger * obj = (QOpenGLDebugLogger *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QOpenGLDebugLoggerSlots * s = QCoreApplication::instance()->findChild<QOpenGLDebugLoggerSlots *>();

    if( s == NULL )
    {
      s = new QOpenGLDebugLoggerSlots();
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
