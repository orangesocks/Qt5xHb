/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QSignalMapperSlots.h"

QSignalMapperSlots::QSignalMapperSlots(QObject *parent) : QObject(parent)
{
}

QSignalMapperSlots::~QSignalMapperSlots()
{
}
void QSignalMapperSlots::mapped( int arg )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "mapped(int)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QSIGNALMAPPER" );
    PHB_ITEM parg = hb_itemPutNI( NULL, arg );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, parg );
    hb_itemRelease( psender );
    hb_itemRelease( parg );
  }
}
void QSignalMapperSlots::mapped( const QString & arg )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "mapped(QString)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QSIGNALMAPPER" );
    PHB_ITEM parg = hb_itemPutC( NULL, QSTRINGTOSTRING(arg) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, parg );
    hb_itemRelease( psender );
    hb_itemRelease( parg );
  }
}
void QSignalMapperSlots::mapped( QWidget * arg )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "mapped(QWidget*)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QSIGNALMAPPER" );
    PHB_ITEM parg = Signals_return_qobject( (QObject *) arg, "QWIDGET" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, parg );
    hb_itemRelease( psender );
    hb_itemRelease( parg );
  }
}
void QSignalMapperSlots::mapped( QObject * arg )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "mapped(QObject*)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QSIGNALMAPPER" );
    PHB_ITEM parg = Signals_return_qobject( (QObject *) arg, "QOBJECT" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, parg );
    hb_itemRelease( psender );
    hb_itemRelease( parg );
  }
}

void QSignalMapperSlots_connect_signal ( const QString & signal, const QString & slot )
{
  QSignalMapper * obj = (QSignalMapper *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QSignalMapperSlots * s = QCoreApplication::instance()->findChild<QSignalMapperSlots *>();

    if( s == NULL )
    {
      s = new QSignalMapperSlots();
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
