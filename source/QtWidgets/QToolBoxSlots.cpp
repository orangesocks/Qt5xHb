/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QToolBoxSlots.h"

QToolBoxSlots::QToolBoxSlots( QObject *parent ) : QObject( parent )
{
}

QToolBoxSlots::~QToolBoxSlots()
{
}

void QToolBoxSlots::currentChanged( int index )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "currentChanged(int)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QTOOLBOX" );
    PHB_ITEM pindex = hb_itemPutNI( NULL, index );

    hb_vmEvalBlockV( cb, 2, psender, pindex );

    hb_itemRelease( psender );
    hb_itemRelease( pindex );
  }
}

void QToolBoxSlots_connect_signal( const QString & signal, const QString & slot )
{
  QToolBox * obj = (QToolBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QToolBoxSlots * s = QCoreApplication::instance()->findChild<QToolBoxSlots *>();

    if( s == NULL )
    {
      s = new QToolBoxSlots();
      s->moveToThread( QCoreApplication::instance()->thread() );
      s->setParent( QCoreApplication::instance() );
    }

    hb_retl( Qt5xHb::Signals_connection_disconnection( s, signal, slot ) );
  }
  else
  {
    hb_retl( false );
  }
}
