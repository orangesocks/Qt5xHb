/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QStandardItemModelSlots.h"

QStandardItemModelSlots::QStandardItemModelSlots(QObject *parent) : QObject(parent)
{
}

QStandardItemModelSlots::~QStandardItemModelSlots()
{
}
void QStandardItemModelSlots::itemChanged( QStandardItem * item )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "itemChanged(QStandardItem*)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QSTANDARDITEMMODEL" );
    PHB_ITEM pitem = Signals_return_object( (void *) item, "QSTANDARDITEM" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pitem );
    hb_itemRelease( psender );
    hb_itemRelease( pitem );
  }
}

void QStandardItemModelSlots_connect_signal ( const QString & signal, const QString & slot )
{
  QStandardItemModel * obj = (QStandardItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QStandardItemModelSlots * s = QCoreApplication::instance()->findChild<QStandardItemModelSlots *>();

    if( s == NULL )
    {
      s = new QStandardItemModelSlots();
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
