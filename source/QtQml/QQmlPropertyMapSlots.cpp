/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QQmlPropertyMapSlots.h"

QQmlPropertyMapSlots::QQmlPropertyMapSlots(QObject *parent) : QObject(parent)
{
}

QQmlPropertyMapSlots::~QQmlPropertyMapSlots()
{
}
void QQmlPropertyMapSlots::valueChanged( const QString & key, const QVariant & value )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "valueChanged(QString,QVariant)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QQMLPROPERTYMAP" );
    PHB_ITEM pkey = hb_itemPutC( NULL, QSTRINGTOSTRING(key) );
    PHB_ITEM pvalue = Signals_return_object( (void *) &value, "QVARIANT" );
    hb_vmEvalBlockV( cb, 3, psender, pkey, pvalue );
    hb_itemRelease( psender );
    hb_itemRelease( pkey );
    hb_itemRelease( pvalue );
  }
}

void QQmlPropertyMapSlots_connect_signal( const QString & signal, const QString & slot )
{
  QQmlPropertyMap * obj = (QQmlPropertyMap *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QQmlPropertyMapSlots * s = QCoreApplication::instance()->findChild<QQmlPropertyMapSlots *>();

    if( s == NULL )
    {
      s = new QQmlPropertyMapSlots();
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
