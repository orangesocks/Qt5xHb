/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QHCandlestickModelMapperSlots.h"

QHCandlestickModelMapperSlots::QHCandlestickModelMapperSlots(QObject *parent) : QObject(parent)
{
}

QHCandlestickModelMapperSlots::~QHCandlestickModelMapperSlots()
{
}
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
void QHCandlestickModelMapperSlots::closeColumnChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "closeColumnChanged()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QHCANDLESTICKMODELMAPPER" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
void QHCandlestickModelMapperSlots::firstSetRowChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "firstSetRowChanged()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QHCANDLESTICKMODELMAPPER" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
void QHCandlestickModelMapperSlots::highColumnChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "highColumnChanged()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QHCANDLESTICKMODELMAPPER" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
void QHCandlestickModelMapperSlots::lastSetRowChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "lastSetRowChanged()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QHCANDLESTICKMODELMAPPER" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
void QHCandlestickModelMapperSlots::lowColumnChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "lowColumnChanged()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QHCANDLESTICKMODELMAPPER" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
void QHCandlestickModelMapperSlots::openColumnChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "openColumnChanged()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QHCANDLESTICKMODELMAPPER" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
void QHCandlestickModelMapperSlots::timestampColumnChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "timestampColumnChanged()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QHCANDLESTICKMODELMAPPER" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
#endif

void QHCandlestickModelMapperSlots_connect_signal ( const QString & signal, const QString & slot )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QHCandlestickModelMapper * obj = (QHCandlestickModelMapper *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QHCandlestickModelMapperSlots * s = QCoreApplication::instance()->findChild<QHCandlestickModelMapperSlots *>();

    if( s == NULL )
    {
      s = new QHCandlestickModelMapperSlots();
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
