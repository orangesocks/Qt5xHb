/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QAUDIOBUFFER
REQUEST QAUDIOFORMAT
REQUEST QIODEVICE
#endif

CLASS QAudioDecoder INHERIT QMediaObject

   METHOD new
   METHOD delete
   METHOD sourceFilename
   METHOD setSourceFilename
   METHOD state
   METHOD errorString
   METHOD bufferAvailable
   METHOD audioFormat
   METHOD setAudioFormat
   METHOD duration
   METHOD error
   METHOD position
   METHOD read
   METHOD sourceDevice
   METHOD setSourceDevice
   METHOD start
   METHOD stop
   METHOD hasSupport

   METHOD onBufferAvailableChanged
   METHOD onBufferReady
   METHOD onDurationChanged
   METHOD onError
   METHOD onFinished
   METHOD onFormatChanged
   METHOD onPositionChanged
   METHOD onSourceChanged
   METHOD onStateChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QAudioDecoder
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtMultimedia/QAudioDecoder>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtMultimedia/QAudioDecoder>
#endif

/*
explicit QAudioDecoder(QObject *parent = Q_NULLPTR)
*/
HB_FUNC_STATIC( QAUDIODECODER_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QAudioDecoder * o = new QAudioDecoder( OPQOBJECT(1,0) );
    _qt5xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
~QAudioDecoder()
*/
HB_FUNC_STATIC( QAUDIODECODER_DELETE )
{
  QAudioDecoder * obj = (QAudioDecoder *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString sourceFilename() const
*/
HB_FUNC_STATIC( QAUDIODECODER_SOURCEFILENAME )
{
  QAudioDecoder * obj = (QAudioDecoder *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->sourceFilename() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setSourceFilename(const QString & fileName)
*/
HB_FUNC_STATIC( QAUDIODECODER_SETSOURCEFILENAME )
{
  QAudioDecoder * obj = (QAudioDecoder *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      obj->setSourceFilename( PQSTRING(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
State state() const
*/
HB_FUNC_STATIC( QAUDIODECODER_STATE )
{
  QAudioDecoder * obj = (QAudioDecoder *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->state() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QString errorString() const
*/
HB_FUNC_STATIC( QAUDIODECODER_ERRORSTRING )
{
  QAudioDecoder * obj = (QAudioDecoder *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->errorString() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool bufferAvailable() const
*/
HB_FUNC_STATIC( QAUDIODECODER_BUFFERAVAILABLE )
{
  QAudioDecoder * obj = (QAudioDecoder *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->bufferAvailable() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QAudioFormat audioFormat() const
*/
HB_FUNC_STATIC( QAUDIODECODER_AUDIOFORMAT )
{
  QAudioDecoder * obj = (QAudioDecoder *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QAudioFormat * ptr = new QAudioFormat( obj->audioFormat() );
      _qt5xhb_createReturnClass( ptr, "QAUDIOFORMAT", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setAudioFormat(const QAudioFormat & format)
*/
HB_FUNC_STATIC( QAUDIODECODER_SETAUDIOFORMAT )
{
  QAudioDecoder * obj = (QAudioDecoder *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQAUDIOFORMAT(1) )
    {
#endif
      obj->setAudioFormat( *PQAUDIOFORMAT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
qint64 duration() const
*/
HB_FUNC_STATIC( QAUDIODECODER_DURATION )
{
  QAudioDecoder * obj = (QAudioDecoder *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQINT64( obj->duration() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
Error error() const
*/
HB_FUNC_STATIC( QAUDIODECODER_ERROR )
{
  QAudioDecoder * obj = (QAudioDecoder *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->error() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
qint64 position() const
*/
HB_FUNC_STATIC( QAUDIODECODER_POSITION )
{
  QAudioDecoder * obj = (QAudioDecoder *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQINT64( obj->position() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QAudioBuffer read() const
*/
HB_FUNC_STATIC( QAUDIODECODER_READ )
{
  QAudioDecoder * obj = (QAudioDecoder *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QAudioBuffer * ptr = new QAudioBuffer( obj->read() );
      _qt5xhb_createReturnClass( ptr, "QAUDIOBUFFER", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QIODevice * sourceDevice() const
*/
HB_FUNC_STATIC( QAUDIODECODER_SOURCEDEVICE )
{
  QAudioDecoder * obj = (QAudioDecoder *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QIODevice * ptr = obj->sourceDevice();
      _qt5xhb_createReturnQObjectClass( ptr, "QIODEVICE" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setSourceDevice(QIODevice * device)
*/
HB_FUNC_STATIC( QAUDIODECODER_SETSOURCEDEVICE )
{
  QAudioDecoder * obj = (QAudioDecoder *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQIODEVICE(1) )
    {
#endif
      obj->setSourceDevice( PQIODEVICE(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void start()
*/
HB_FUNC_STATIC( QAUDIODECODER_START )
{
  QAudioDecoder * obj = (QAudioDecoder *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->start();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void stop()
*/
HB_FUNC_STATIC( QAUDIODECODER_STOP )
{
  QAudioDecoder * obj = (QAudioDecoder *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->stop();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
static QMultimedia::SupportEstimate hasSupport(const QString & mimeType, const QStringList & codecs = QStringList())
*/
HB_FUNC_STATIC( QAUDIODECODER_HASSUPPORT )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTARRAY(2) )
  {
#endif
    RENUM( QAudioDecoder::hasSupport( PQSTRING(1), OPQSTRINGLIST(2,QStringList()) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
bool bind(QObject *) override
*/

/*
void unbind(QObject *) override
*/

void QAudioDecoderSlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QAUDIODECODER_ONBUFFERAVAILABLECHANGED )
{
  QAudioDecoderSlots_connect_signal( "bufferAvailableChanged(bool)", "bufferAvailableChanged(bool)" );
}

HB_FUNC_STATIC( QAUDIODECODER_ONBUFFERREADY )
{
  QAudioDecoderSlots_connect_signal( "bufferReady()", "bufferReady()" );
}

HB_FUNC_STATIC( QAUDIODECODER_ONDURATIONCHANGED )
{
  QAudioDecoderSlots_connect_signal( "durationChanged(qint64)", "durationChanged(qint64)" );
}

HB_FUNC_STATIC( QAUDIODECODER_ONERROR )
{
  QAudioDecoderSlots_connect_signal( "error(QAudioDecoder::Error)", "error(QAudioDecoder::Error)" );
}

HB_FUNC_STATIC( QAUDIODECODER_ONFINISHED )
{
  QAudioDecoderSlots_connect_signal( "finished()", "finished()" );
}

HB_FUNC_STATIC( QAUDIODECODER_ONFORMATCHANGED )
{
  QAudioDecoderSlots_connect_signal( "formatChanged(QAudioFormat)", "formatChanged(QAudioFormat)" );
}

HB_FUNC_STATIC( QAUDIODECODER_ONPOSITIONCHANGED )
{
  QAudioDecoderSlots_connect_signal( "positionChanged(qint64)", "positionChanged(qint64)" );
}

HB_FUNC_STATIC( QAUDIODECODER_ONSOURCECHANGED )
{
  QAudioDecoderSlots_connect_signal( "sourceChanged()", "sourceChanged()" );
}

HB_FUNC_STATIC( QAUDIODECODER_ONSTATECHANGED )
{
  QAudioDecoderSlots_connect_signal( "stateChanged(QAudioDecoder::State)", "stateChanged(QAudioDecoder::State)" );
}

#pragma ENDDUMP
