/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QSystemTrayIconSlots.h"

QSystemTrayIconSlots::QSystemTrayIconSlots( QObject *parent ) : QObject( parent )
{
}

QSystemTrayIconSlots::~QSystemTrayIconSlots()
{
}

void QSystemTrayIconSlots::activated( QSystemTrayIcon::ActivationReason reason )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "activated(QSystemTrayIcon::ActivationReason)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QSYSTEMTRAYICON" );
    PHB_ITEM preason = hb_itemPutNI( NULL, (int) reason );

    hb_vmEvalBlockV( cb, 2, psender, preason );

    hb_itemRelease( psender );
    hb_itemRelease( preason );
  }
}

void QSystemTrayIconSlots::messageClicked()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "messageClicked()" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QSYSTEMTRAYICON" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}

void QSystemTrayIconSlots_connect_signal( const QString & signal, const QString & slot )
{
  QSystemTrayIcon * obj = (QSystemTrayIcon *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QSystemTrayIconSlots * s = QCoreApplication::instance()->findChild<QSystemTrayIconSlots *>();

    if( s == NULL )
    {
      s = new QSystemTrayIconSlots();
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
