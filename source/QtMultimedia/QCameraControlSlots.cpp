/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QCameraControlSlots.h"

QCameraControlSlots::QCameraControlSlots(QObject *parent) : QObject(parent)
{
}

QCameraControlSlots::~QCameraControlSlots()
{
}
void QCameraControlSlots::captureModeChanged( QCamera::CaptureModes mode )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "captureModeChanged(QCamera::CaptureModes)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QCAMERACONTROL" );
    PHB_ITEM pmode = hb_itemPutNI( NULL, (int) mode );
    hb_vmEvalBlockV( cb, 2, psender, pmode );
    hb_itemRelease( psender );
    hb_itemRelease( pmode );
  }
}
void QCameraControlSlots::error( int error, const QString & errorString )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "error(int,QString)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QCAMERACONTROL" );
    PHB_ITEM perror = hb_itemPutNI( NULL, error );
    PHB_ITEM perrorString = hb_itemPutC( NULL, QSTRINGTOSTRING(errorString) );
    hb_vmEvalBlockV( cb, 3, psender, perror, perrorString );
    hb_itemRelease( psender );
    hb_itemRelease( perror );
    hb_itemRelease( perrorString );
  }
}
void QCameraControlSlots::stateChanged( QCamera::State state )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "stateChanged(QCamera::State)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QCAMERACONTROL" );
    PHB_ITEM pstate = hb_itemPutNI( NULL, (int) state );
    hb_vmEvalBlockV( cb, 2, psender, pstate );
    hb_itemRelease( psender );
    hb_itemRelease( pstate );
  }
}
void QCameraControlSlots::statusChanged( QCamera::Status status )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "statusChanged(QCamera::Status)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QCAMERACONTROL" );
    PHB_ITEM pstatus = hb_itemPutNI( NULL, (int) status );
    hb_vmEvalBlockV( cb, 2, psender, pstatus );
    hb_itemRelease( psender );
    hb_itemRelease( pstatus );
  }
}

void QCameraControlSlots_connect_signal( const QString & signal, const QString & slot )
{
  QCameraControl * obj = (QCameraControl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QCameraControlSlots * s = QCoreApplication::instance()->findChild<QCameraControlSlots *>();

    if( s == NULL )
    {
      s = new QCameraControlSlots();
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
