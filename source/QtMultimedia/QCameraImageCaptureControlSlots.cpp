/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QCameraImageCaptureControlSlots.h"

QCameraImageCaptureControlSlots::QCameraImageCaptureControlSlots(QObject *parent) : QObject(parent)
{
}

QCameraImageCaptureControlSlots::~QCameraImageCaptureControlSlots()
{
}
void QCameraImageCaptureControlSlots::error( int id, int error, const QString & errorString )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "error(int,int,QString)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QCAMERAIMAGECAPTURECONTROL" );
    PHB_ITEM pid = hb_itemPutNI( NULL, id );
    PHB_ITEM perror = hb_itemPutNI( NULL, error );
    PHB_ITEM perrorString = hb_itemPutC( NULL, QSTRINGTOSTRING(errorString) );
    hb_vmEvalBlockV( cb, 4, psender, pid, perror, perrorString );
    hb_itemRelease( psender );
    hb_itemRelease( pid );
    hb_itemRelease( perror );
    hb_itemRelease( perrorString );
  }
}
void QCameraImageCaptureControlSlots::imageAvailable( int requestId, const QVideoFrame & buffer )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "imageAvailable(int,QVideoFrame)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QCAMERAIMAGECAPTURECONTROL" );
    PHB_ITEM prequestId = hb_itemPutNI( NULL, requestId );
    PHB_ITEM pbuffer = Signals_return_object( (void *) &buffer, "QVIDEOFRAME" );
    hb_vmEvalBlockV( cb, 3, psender, prequestId, pbuffer );
    hb_itemRelease( psender );
    hb_itemRelease( prequestId );
    hb_itemRelease( pbuffer );
  }
}
void QCameraImageCaptureControlSlots::imageCaptured( int requestId, const QImage & preview )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "imageCaptured(int,QImage)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QCAMERAIMAGECAPTURECONTROL" );
    PHB_ITEM prequestId = hb_itemPutNI( NULL, requestId );
    PHB_ITEM ppreview = Signals_return_object( (void *) &preview, "QIMAGE" );
    hb_vmEvalBlockV( cb, 3, psender, prequestId, ppreview );
    hb_itemRelease( psender );
    hb_itemRelease( prequestId );
    hb_itemRelease( ppreview );
  }
}
void QCameraImageCaptureControlSlots::imageExposed( int requestId )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "imageExposed(int)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QCAMERAIMAGECAPTURECONTROL" );
    PHB_ITEM prequestId = hb_itemPutNI( NULL, requestId );
    hb_vmEvalBlockV( cb, 2, psender, prequestId );
    hb_itemRelease( psender );
    hb_itemRelease( prequestId );
  }
}
void QCameraImageCaptureControlSlots::imageMetadataAvailable( int id, const QString & key, const QVariant & value )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "imageMetadataAvailable(int,QString,QVariant)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QCAMERAIMAGECAPTURECONTROL" );
    PHB_ITEM pid = hb_itemPutNI( NULL, id );
    PHB_ITEM pkey = hb_itemPutC( NULL, QSTRINGTOSTRING(key) );
    PHB_ITEM pvalue = Signals_return_object( (void *) &value, "QVARIANT" );
    hb_vmEvalBlockV( cb, 4, psender, pid, pkey, pvalue );
    hb_itemRelease( psender );
    hb_itemRelease( pid );
    hb_itemRelease( pkey );
    hb_itemRelease( pvalue );
  }
}
void QCameraImageCaptureControlSlots::imageSaved( int requestId, const QString & fileName )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "imageSaved(int,QString)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QCAMERAIMAGECAPTURECONTROL" );
    PHB_ITEM prequestId = hb_itemPutNI( NULL, requestId );
    PHB_ITEM pfileName = hb_itemPutC( NULL, QSTRINGTOSTRING(fileName) );
    hb_vmEvalBlockV( cb, 3, psender, prequestId, pfileName );
    hb_itemRelease( psender );
    hb_itemRelease( prequestId );
    hb_itemRelease( pfileName );
  }
}
void QCameraImageCaptureControlSlots::readyForCaptureChanged( bool ready )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "readyForCaptureChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QCAMERAIMAGECAPTURECONTROL" );
    PHB_ITEM pready = hb_itemPutL( NULL, ready );
    hb_vmEvalBlockV( cb, 2, psender, pready );
    hb_itemRelease( psender );
    hb_itemRelease( pready );
  }
}

void QCameraImageCaptureControlSlots_connect_signal( const QString & signal, const QString & slot )
{
  QCameraImageCaptureControl * obj = (QCameraImageCaptureControl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QCameraImageCaptureControlSlots * s = QCoreApplication::instance()->findChild<QCameraImageCaptureControlSlots *>();

    if( s == NULL )
    {
      s = new QCameraImageCaptureControlSlots();
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
