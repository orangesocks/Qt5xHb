/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QModbusClientSlots.h"

QModbusClientSlots::QModbusClientSlots(QObject *parent) : QObject(parent)
{
}

QModbusClientSlots::~QModbusClientSlots()
{
}
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
void QModbusClientSlots::timeoutChanged( int newTimeout )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "timeoutChanged(int)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QMODBUSCLIENT" );
    PHB_ITEM pnewTimeout = hb_itemPutNI( NULL, newTimeout );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pnewTimeout );
    hb_itemRelease( psender );
    hb_itemRelease( pnewTimeout );
  }
}
#endif

void QModbusClientSlots_connect_signal ( const QString & signal, const QString & slot )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QModbusClient * obj = (QModbusClient *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QModbusClientSlots * s = QCoreApplication::instance()->findChild<QModbusClientSlots *>();

    if( s == NULL )
    {
      s = new QModbusClientSlots();
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