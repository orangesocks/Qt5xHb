/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QOpenGLContextSlots.h"

QOpenGLContextSlots::QOpenGLContextSlots( QObject *parent ) : QObject( parent )
{
}

QOpenGLContextSlots::~QOpenGLContextSlots()
{
}

void QOpenGLContextSlots::aboutToBeDestroyed()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Signals_return_codeblock( object, "aboutToBeDestroyed()" );

  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QOPENGLCONTEXT" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}

void QOpenGLContextSlots_connect_signal( const QString & signal, const QString & slot )
{
  QOpenGLContext * obj = (QOpenGLContext *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QOpenGLContextSlots * s = QCoreApplication::instance()->findChild<QOpenGLContextSlots *>();

    if( s == NULL )
    {
      s = new QOpenGLContextSlots();
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
