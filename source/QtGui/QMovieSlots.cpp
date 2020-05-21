/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QMovieSlots.h"

QMovieSlots::QMovieSlots( QObject *parent ) : QObject( parent )
{
}

QMovieSlots::~QMovieSlots()
{
}

void QMovieSlots::error( QImageReader::ImageReaderError error )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Signals_return_codeblock( object, "error(QImageReader::ImageReaderError)" );

  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QMOVIE" );
    PHB_ITEM perror = hb_itemPutNI( NULL, (int) error );

    hb_vmEvalBlockV( cb, 2, psender, perror );

    hb_itemRelease( psender );
    hb_itemRelease( perror );
  }
}

void QMovieSlots::finished()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Signals_return_codeblock( object, "finished()" );

  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QMOVIE" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}

void QMovieSlots::frameChanged( int frameNumber )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Signals_return_codeblock( object, "frameChanged(int)" );

  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QMOVIE" );
    PHB_ITEM pframeNumber = hb_itemPutNI( NULL, frameNumber );

    hb_vmEvalBlockV( cb, 2, psender, pframeNumber );

    hb_itemRelease( psender );
    hb_itemRelease( pframeNumber );
  }
}

void QMovieSlots::resized( const QSize & size )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Signals_return_codeblock( object, "resized(QSize)" );

  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QMOVIE" );
    PHB_ITEM psize = Signals_return_object( (void *) &size, "QSIZE" );

    hb_vmEvalBlockV( cb, 2, psender, psize );

    hb_itemRelease( psender );
    hb_itemRelease( psize );
  }
}

void QMovieSlots::started()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Signals_return_codeblock( object, "started()" );

  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QMOVIE" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}

void QMovieSlots::stateChanged( QMovie::MovieState state )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Signals_return_codeblock( object, "stateChanged(QMovie::MovieState)" );

  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QMOVIE" );
    PHB_ITEM pstate = hb_itemPutNI( NULL, (int) state );

    hb_vmEvalBlockV( cb, 2, psender, pstate );

    hb_itemRelease( psender );
    hb_itemRelease( pstate );
  }
}

void QMovieSlots::updated( const QRect & rect )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Signals_return_codeblock( object, "updated(QRect)" );

  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QMOVIE" );
    PHB_ITEM prect = Signals_return_object( (void *) &rect, "QRECT" );

    hb_vmEvalBlockV( cb, 2, psender, prect );

    hb_itemRelease( psender );
    hb_itemRelease( prect );
  }
}

void QMovieSlots_connect_signal( const QString & signal, const QString & slot )
{
  QMovie * obj = (QMovie *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QMovieSlots * s = QCoreApplication::instance()->findChild<QMovieSlots *>();

    if( s == NULL )
    {
      s = new QMovieSlots();
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
