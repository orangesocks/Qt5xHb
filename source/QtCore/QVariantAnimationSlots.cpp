/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QVariantAnimationSlots.h"

static QVariantAnimationSlots * s = NULL;

QVariantAnimationSlots::QVariantAnimationSlots(QObject *parent) : QObject(parent)
{
}

QVariantAnimationSlots::~QVariantAnimationSlots()
{
}
void QVariantAnimationSlots::valueChanged( const QVariant & value )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "valueChanged(QVariant)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QVARIANTANIMATION" );
    PHB_ITEM pvalue = Signals_return_object( (void *) &value, "QVARIANT" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pvalue );
    hb_itemRelease( psender );
    hb_itemRelease( pvalue );
  }
}

void QVariantAnimationSlots_connect_signal ( const QString & signal, const QString & slot )
{
  if( s == NULL )
  {
    s = new QVariantAnimationSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, signal, slot ) );
}
