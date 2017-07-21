$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QIODEVICE
REQUEST QAUDIOFORMAT
#endif

CLASS QAbstractAudioOutput INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD start1
   METHOD start2
   METHOD start
   METHOD stop
   METHOD reset
   METHOD suspend
   METHOD resume
   METHOD bytesFree
   METHOD periodSize
   METHOD setBufferSize
   METHOD bufferSize
   METHOD setNotifyInterval
   METHOD notifyInterval
   METHOD processedUSecs
   METHOD elapsedUSecs
   METHOD error
   METHOD state
   METHOD setFormat
   METHOD format
   METHOD setVolume
   METHOD volume
   METHOD category
   METHOD setCategory

   METHOD onErrorChanged
   METHOD onStateChanged
   METHOD onNotify

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
virtual void start(QIODevice *device) = 0
*/
HB_FUNC_STATIC( QABSTRACTAUDIOOUTPUT_START1 )
{
  QAbstractAudioOutput * obj = (QAbstractAudioOutput *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->start ( PQIODEVICE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QIODevice* start() = 0
*/
HB_FUNC_STATIC( QABSTRACTAUDIOOUTPUT_START2 )
{
  QAbstractAudioOutput * obj = (QAbstractAudioOutput *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QIODevice * ptr = obj->start ();
    _qt5xhb_createReturnClass ( ptr, "QIODEVICE" );
  }
}


//[1]virtual void start(QIODevice *device) = 0
//[2]virtual QIODevice* start() = 0

HB_FUNC_STATIC( QABSTRACTAUDIOOUTPUT_START )
{
  if( ISNUMPAR(1) && ISQIODEVICE(1) )
  {
    HB_FUNC_EXEC( QABSTRACTAUDIOOUTPUT_START1 );
  }
  else if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QABSTRACTAUDIOOUTPUT_START2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
virtual void stop() = 0
*/
HB_FUNC_STATIC( QABSTRACTAUDIOOUTPUT_STOP )
{
  QAbstractAudioOutput * obj = (QAbstractAudioOutput *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->stop ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void reset() = 0
*/
HB_FUNC_STATIC( QABSTRACTAUDIOOUTPUT_RESET )
{
  QAbstractAudioOutput * obj = (QAbstractAudioOutput *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->reset ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void suspend() = 0
*/
HB_FUNC_STATIC( QABSTRACTAUDIOOUTPUT_SUSPEND )
{
  QAbstractAudioOutput * obj = (QAbstractAudioOutput *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->suspend ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void resume() = 0
*/
HB_FUNC_STATIC( QABSTRACTAUDIOOUTPUT_RESUME )
{
  QAbstractAudioOutput * obj = (QAbstractAudioOutput *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->resume ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual int bytesFree() const = 0
*/
HB_FUNC_STATIC( QABSTRACTAUDIOOUTPUT_BYTESFREE )
{
  QAbstractAudioOutput * obj = (QAbstractAudioOutput *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->bytesFree () );
  }
}


/*
virtual int periodSize() const = 0
*/
HB_FUNC_STATIC( QABSTRACTAUDIOOUTPUT_PERIODSIZE )
{
  QAbstractAudioOutput * obj = (QAbstractAudioOutput *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->periodSize () );
  }
}


/*
virtual void setBufferSize(int value) = 0
*/
HB_FUNC_STATIC( QABSTRACTAUDIOOUTPUT_SETBUFFERSIZE )
{
  QAbstractAudioOutput * obj = (QAbstractAudioOutput *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setBufferSize ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual int bufferSize() const = 0
*/
HB_FUNC_STATIC( QABSTRACTAUDIOOUTPUT_BUFFERSIZE )
{
  QAbstractAudioOutput * obj = (QAbstractAudioOutput *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->bufferSize () );
  }
}


/*
virtual void setNotifyInterval(int milliSeconds) = 0
*/
HB_FUNC_STATIC( QABSTRACTAUDIOOUTPUT_SETNOTIFYINTERVAL )
{
  QAbstractAudioOutput * obj = (QAbstractAudioOutput *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setNotifyInterval ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual int notifyInterval() const = 0
*/
HB_FUNC_STATIC( QABSTRACTAUDIOOUTPUT_NOTIFYINTERVAL )
{
  QAbstractAudioOutput * obj = (QAbstractAudioOutput *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->notifyInterval () );
  }
}


/*
virtual qint64 processedUSecs() const = 0
*/
HB_FUNC_STATIC( QABSTRACTAUDIOOUTPUT_PROCESSEDUSECS )
{
  QAbstractAudioOutput * obj = (QAbstractAudioOutput *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQINT64( obj->processedUSecs () );
  }
}


/*
virtual qint64 elapsedUSecs() const = 0
*/
HB_FUNC_STATIC( QABSTRACTAUDIOOUTPUT_ELAPSEDUSECS )
{
  QAbstractAudioOutput * obj = (QAbstractAudioOutput *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQINT64( obj->elapsedUSecs () );
  }
}


/*
virtual QAudio::Error error() const = 0
*/
HB_FUNC_STATIC( QABSTRACTAUDIOOUTPUT_ERROR )
{
  QAbstractAudioOutput * obj = (QAbstractAudioOutput *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->error () );
  }
}


/*
virtual QAudio::State state() const = 0
*/
HB_FUNC_STATIC( QABSTRACTAUDIOOUTPUT_STATE )
{
  QAbstractAudioOutput * obj = (QAbstractAudioOutput *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->state () );
  }
}


/*
virtual void setFormat(const QAudioFormat& fmt) = 0
*/
HB_FUNC_STATIC( QABSTRACTAUDIOOUTPUT_SETFORMAT )
{
  QAbstractAudioOutput * obj = (QAbstractAudioOutput *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setFormat ( *PQAUDIOFORMAT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QAudioFormat format() const = 0
*/
HB_FUNC_STATIC( QABSTRACTAUDIOOUTPUT_FORMAT )
{
  QAbstractAudioOutput * obj = (QAbstractAudioOutput *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAudioFormat * ptr = new QAudioFormat( obj->format () );
    _qt5xhb_createReturnClass ( ptr, "QAUDIOFORMAT" );
  }
}


/*
virtual void setVolume(qreal)
*/
HB_FUNC_STATIC( QABSTRACTAUDIOOUTPUT_SETVOLUME )
{
  QAbstractAudioOutput * obj = (QAbstractAudioOutput *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setVolume ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual qreal volume() const
*/
HB_FUNC_STATIC( QABSTRACTAUDIOOUTPUT_VOLUME )
{
  QAbstractAudioOutput * obj = (QAbstractAudioOutput *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->volume () );
  }
}


/*
virtual QString category() const
*/
HB_FUNC_STATIC( QABSTRACTAUDIOOUTPUT_CATEGORY )
{
  QAbstractAudioOutput * obj = (QAbstractAudioOutput *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->category () );
  }
}


/*
virtual void setCategory(const QString &)
*/
HB_FUNC_STATIC( QABSTRACTAUDIOOUTPUT_SETCATEGORY )
{
  QAbstractAudioOutput * obj = (QAbstractAudioOutput *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setCategory ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
