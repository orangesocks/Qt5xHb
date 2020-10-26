/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QWebFrameSlots.h"

QWebFrameSlots::QWebFrameSlots( QObject *parent ) : QObject( parent )
{
}

QWebFrameSlots::~QWebFrameSlots()
{
}

void QWebFrameSlots::contentsSizeChanged( const QSize & size )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "contentsSizeChanged(QSize)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QWEBFRAME" );
    PHB_ITEM psize = Qt5xHb::Signals_return_object( (void *) &size, "QSIZE" );

    hb_vmEvalBlockV( cb, 2, psender, psize );

    hb_itemRelease( psender );
    hb_itemRelease( psize );
  }
}

void QWebFrameSlots::iconChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "iconChanged()" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QWEBFRAME" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}

void QWebFrameSlots::initialLayoutCompleted()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "initialLayoutCompleted()" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QWEBFRAME" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}

void QWebFrameSlots::javaScriptWindowObjectCleared()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "javaScriptWindowObjectCleared()" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QWEBFRAME" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}

void QWebFrameSlots::loadFinished( bool ok )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "loadFinished(bool)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QWEBFRAME" );
    PHB_ITEM pok = hb_itemPutL( NULL, ok );

    hb_vmEvalBlockV( cb, 2, psender, pok );

    hb_itemRelease( psender );
    hb_itemRelease( pok );
  }
}

void QWebFrameSlots::loadStarted()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "loadStarted()" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QWEBFRAME" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}

void QWebFrameSlots::pageChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "pageChanged()" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QWEBFRAME" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}

void QWebFrameSlots::titleChanged( const QString & title )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "titleChanged(QString)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QWEBFRAME" );
    PHB_ITEM ptitle = hb_itemPutC( NULL, QSTRINGTOSTRING(title) );

    hb_vmEvalBlockV( cb, 2, psender, ptitle );

    hb_itemRelease( psender );
    hb_itemRelease( ptitle );
  }
}

void QWebFrameSlots::urlChanged( const QUrl & url )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "urlChanged(QUrl)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QWEBFRAME" );
    PHB_ITEM purl = Qt5xHb::Signals_return_object( (void *) &url, "QURL" );

    hb_vmEvalBlockV( cb, 2, psender, purl );

    hb_itemRelease( psender );
    hb_itemRelease( purl );
  }
}

void QWebFrameSlots_connect_signal( const QString & signal, const QString & slot )
{
  QWebFrame * obj = (QWebFrame *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QWebFrameSlots * s = QCoreApplication::instance()->findChild<QWebFrameSlots *>();

    if( s == NULL )
    {
      s = new QWebFrameSlots();
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
