$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QAUDIOFORMAT
REQUEST QAUDIOBUFFER
REQUEST QIODEVICE
#endif

CLASS QAudioDecoderControl INHERIT QMediaControl

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD audioFormat
   METHOD bufferAvailable
   METHOD duration
   METHOD position
   METHOD read
   METHOD setAudioFormat
   METHOD setSourceDevice
   METHOD setSourceFilename
   METHOD sourceDevice
   METHOD sourceFilename
   METHOD start
   METHOD state
   METHOD stop

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

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
virtual QAudioFormat audioFormat() const = 0
*/
HB_FUNC_STATIC( QAUDIODECODERCONTROL_AUDIOFORMAT )
{
  QAudioDecoderControl * obj = (QAudioDecoderControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAudioFormat * ptr = new QAudioFormat( obj->audioFormat () );
    _qt5xhb_createReturnClass ( ptr, "QAUDIOFORMAT" );
  }
}


/*
virtual bool bufferAvailable() const = 0
*/
HB_FUNC_STATIC( QAUDIODECODERCONTROL_BUFFERAVAILABLE )
{
  QAudioDecoderControl * obj = (QAudioDecoderControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->bufferAvailable () );
  }
}


/*
virtual qint64 duration() const = 0
*/
HB_FUNC_STATIC( QAUDIODECODERCONTROL_DURATION )
{
  QAudioDecoderControl * obj = (QAudioDecoderControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQINT64( obj->duration () );
  }
}


/*
virtual qint64 position() const = 0
*/
HB_FUNC_STATIC( QAUDIODECODERCONTROL_POSITION )
{
  QAudioDecoderControl * obj = (QAudioDecoderControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQINT64( obj->position () );
  }
}


/*
virtual QAudioBuffer read() = 0
*/
HB_FUNC_STATIC( QAUDIODECODERCONTROL_READ )
{
  QAudioDecoderControl * obj = (QAudioDecoderControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAudioBuffer * ptr = new QAudioBuffer( obj->read () );
    _qt5xhb_createReturnClass ( ptr, "QAUDIOBUFFER" );
  }
}


/*
virtual void setAudioFormat(const QAudioFormat & format) = 0
*/
HB_FUNC_STATIC( QAUDIODECODERCONTROL_SETAUDIOFORMAT )
{
  QAudioDecoderControl * obj = (QAudioDecoderControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAudioFormat ( *PQAUDIOFORMAT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setSourceDevice(QIODevice * device) = 0
*/
HB_FUNC_STATIC( QAUDIODECODERCONTROL_SETSOURCEDEVICE )
{
  QAudioDecoderControl * obj = (QAudioDecoderControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSourceDevice ( PQIODEVICE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setSourceFilename(const QString & fileName) = 0
*/
HB_FUNC_STATIC( QAUDIODECODERCONTROL_SETSOURCEFILENAME )
{
  QAudioDecoderControl * obj = (QAudioDecoderControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSourceFilename ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QIODevice * sourceDevice() const = 0
*/
HB_FUNC_STATIC( QAUDIODECODERCONTROL_SOURCEDEVICE )
{
  QAudioDecoderControl * obj = (QAudioDecoderControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QIODevice * ptr = obj->sourceDevice ();
    _qt5xhb_createReturnClass ( ptr, "QIODEVICE" );
  }
}


/*
virtual QString sourceFilename() const = 0
*/
HB_FUNC_STATIC( QAUDIODECODERCONTROL_SOURCEFILENAME )
{
  QAudioDecoderControl * obj = (QAudioDecoderControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->sourceFilename () );
  }
}


/*
virtual void start() = 0
*/
HB_FUNC_STATIC( QAUDIODECODERCONTROL_START )
{
  QAudioDecoderControl * obj = (QAudioDecoderControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->start ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QAudioDecoder::State state() const = 0
*/
HB_FUNC_STATIC( QAUDIODECODERCONTROL_STATE )
{
  QAudioDecoderControl * obj = (QAudioDecoderControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->state () );
  }
}


/*
virtual void stop() = 0
*/
HB_FUNC_STATIC( QAUDIODECODERCONTROL_STOP )
{
  QAudioDecoderControl * obj = (QAudioDecoderControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->stop ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
