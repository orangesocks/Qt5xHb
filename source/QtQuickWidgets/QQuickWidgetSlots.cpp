/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QQuickWidgetSlots.h"

QQuickWidgetSlots::QQuickWidgetSlots(QObject *parent) : QObject(parent)
{
}

QQuickWidgetSlots::~QQuickWidgetSlots()
{
}
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
void QQuickWidgetSlots::statusChanged( QQuickWidget::Status status )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "statusChanged(QQuickWidget::Status)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QQUICKWIDGET" );
    PHB_ITEM pstatus = hb_itemPutNI( NULL, (int) status );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pstatus );
    hb_itemRelease( psender );
    hb_itemRelease( pstatus );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
void QQuickWidgetSlots::sceneGraphError( QQuickWindow::SceneGraphError error, const QString & message )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "sceneGraphError(QQuickWindow::SceneGraphError,QString)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QQUICKWIDGET" );
    PHB_ITEM perror = hb_itemPutNI( NULL, (int) error );
    PHB_ITEM pmessage = hb_itemPutC( NULL, QSTRINGTOSTRING(message) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, perror, pmessage );
    hb_itemRelease( psender );
    hb_itemRelease( perror );
    hb_itemRelease( pmessage );
  }
}
#endif

void QQuickWidgetSlots_connect_signal ( const QString & signal, const QString & slot )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QQuickWidget * obj = (QQuickWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QQuickWidgetSlots * s = QCoreApplication::instance()->findChild<QQuickWidgetSlots *>();

    if( s == NULL )
    {
      s = new QQuickWidgetSlots();
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
