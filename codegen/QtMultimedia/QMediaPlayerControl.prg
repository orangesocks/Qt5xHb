$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMEDIATIMERANGE
REQUEST QMEDIACONTENT
REQUEST QIODEVICE
#endif

CLASS QMediaPlayerControl INHERIT QMediaControl

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD availablePlaybackRanges
   METHOD bufferStatus
   METHOD duration
   METHOD isAudioAvailable
   METHOD isMuted
   METHOD isSeekable
   METHOD isVideoAvailable
   METHOD media
   METHOD mediaStatus
   METHOD mediaStream
   METHOD pause
   METHOD play
   METHOD playbackRate
   METHOD position
   METHOD setMedia
   METHOD setMuted
   METHOD setPlaybackRate
   METHOD setPosition
   METHOD setVolume
   METHOD state
   METHOD stop
   METHOD volume

   METHOD onAudioAvailableChanged
   METHOD onAvailablePlaybackRangesChanged
   METHOD onBufferStatusChanged
   METHOD onDurationChanged
   METHOD onError
   METHOD onMediaChanged
   METHOD onMediaStatusChanged
   METHOD onMutedChanged
   METHOD onPlaybackRateChanged
   METHOD onPositionChanged
   METHOD onSeekableChanged
   METHOD onStateChanged
   METHOD onVideoAvailableChanged
   METHOD onVolumeChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
virtual QMediaTimeRange availablePlaybackRanges() const = 0
*/
HB_FUNC_STATIC( QMEDIAPLAYERCONTROL_AVAILABLEPLAYBACKRANGES )
{
  QMediaPlayerControl * obj = (QMediaPlayerControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMediaTimeRange * ptr = new QMediaTimeRange( obj->availablePlaybackRanges () );
    _qt5xhb_createReturnClass ( ptr, "QMEDIATIMERANGE" );
  }
}


/*
virtual int bufferStatus() const = 0
*/
HB_FUNC_STATIC( QMEDIAPLAYERCONTROL_BUFFERSTATUS )
{
  QMediaPlayerControl * obj = (QMediaPlayerControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->bufferStatus () );
  }
}


/*
virtual qint64 duration() const = 0
*/
HB_FUNC_STATIC( QMEDIAPLAYERCONTROL_DURATION )
{
  QMediaPlayerControl * obj = (QMediaPlayerControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQINT64( obj->duration () );
  }
}


/*
virtual bool isAudioAvailable() const = 0
*/
HB_FUNC_STATIC( QMEDIAPLAYERCONTROL_ISAUDIOAVAILABLE )
{
  QMediaPlayerControl * obj = (QMediaPlayerControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isAudioAvailable () );
  }
}


/*
virtual bool isMuted() const = 0
*/
HB_FUNC_STATIC( QMEDIAPLAYERCONTROL_ISMUTED )
{
  QMediaPlayerControl * obj = (QMediaPlayerControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isMuted () );
  }
}


/*
virtual bool isSeekable() const = 0
*/
HB_FUNC_STATIC( QMEDIAPLAYERCONTROL_ISSEEKABLE )
{
  QMediaPlayerControl * obj = (QMediaPlayerControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isSeekable () );
  }
}


/*
virtual bool isVideoAvailable() const = 0
*/
HB_FUNC_STATIC( QMEDIAPLAYERCONTROL_ISVIDEOAVAILABLE )
{
  QMediaPlayerControl * obj = (QMediaPlayerControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isVideoAvailable () );
  }
}


/*
virtual QMediaContent media() const = 0
*/
HB_FUNC_STATIC( QMEDIAPLAYERCONTROL_MEDIA )
{
  QMediaPlayerControl * obj = (QMediaPlayerControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMediaContent * ptr = new QMediaContent( obj->media () );
    _qt5xhb_createReturnClass ( ptr, "QMEDIACONTENT" );
  }
}


/*
virtual QMediaPlayer::MediaStatus mediaStatus() const = 0
*/
HB_FUNC_STATIC( QMEDIAPLAYERCONTROL_MEDIASTATUS )
{
  QMediaPlayerControl * obj = (QMediaPlayerControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->mediaStatus () );
  }
}


/*
virtual const QIODevice * mediaStream() const = 0
*/
HB_FUNC_STATIC( QMEDIAPLAYERCONTROL_MEDIASTREAM )
{
  QMediaPlayerControl * obj = (QMediaPlayerControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QIODevice * ptr = obj->mediaStream ();
    _qt5xhb_createReturnClass ( ptr, "QIODEVICE" );
  }
}


/*
virtual void pause() = 0
*/
HB_FUNC_STATIC( QMEDIAPLAYERCONTROL_PAUSE )
{
  QMediaPlayerControl * obj = (QMediaPlayerControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->pause ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void play() = 0
*/
HB_FUNC_STATIC( QMEDIAPLAYERCONTROL_PLAY )
{
  QMediaPlayerControl * obj = (QMediaPlayerControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->play ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual qreal playbackRate() const = 0
*/
HB_FUNC_STATIC( QMEDIAPLAYERCONTROL_PLAYBACKRATE )
{
  QMediaPlayerControl * obj = (QMediaPlayerControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->playbackRate () );
  }
}


/*
virtual qint64 position() const = 0
*/
HB_FUNC_STATIC( QMEDIAPLAYERCONTROL_POSITION )
{
  QMediaPlayerControl * obj = (QMediaPlayerControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQINT64( obj->position () );
  }
}


/*
virtual void setMedia(const QMediaContent & media, QIODevice * stream) = 0
*/
HB_FUNC_STATIC( QMEDIAPLAYERCONTROL_SETMEDIA )
{
  QMediaPlayerControl * obj = (QMediaPlayerControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setMedia ( *PQMEDIACONTENT(1), PQIODEVICE(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setMuted(bool mute) = 0
*/
HB_FUNC_STATIC( QMEDIAPLAYERCONTROL_SETMUTED )
{
  QMediaPlayerControl * obj = (QMediaPlayerControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setMuted ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setPlaybackRate(qreal rate) = 0
*/
HB_FUNC_STATIC( QMEDIAPLAYERCONTROL_SETPLAYBACKRATE )
{
  QMediaPlayerControl * obj = (QMediaPlayerControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setPlaybackRate ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setPosition(qint64 position) = 0
*/
HB_FUNC_STATIC( QMEDIAPLAYERCONTROL_SETPOSITION )
{
  QMediaPlayerControl * obj = (QMediaPlayerControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setPosition ( PQINT64(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setVolume(int volume) = 0
*/
HB_FUNC_STATIC( QMEDIAPLAYERCONTROL_SETVOLUME )
{
  QMediaPlayerControl * obj = (QMediaPlayerControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setVolume ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QMediaPlayer::State state() const = 0
*/
HB_FUNC_STATIC( QMEDIAPLAYERCONTROL_STATE )
{
  QMediaPlayerControl * obj = (QMediaPlayerControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->state () );
  }
}


/*
virtual void stop() = 0
*/
HB_FUNC_STATIC( QMEDIAPLAYERCONTROL_STOP )
{
  QMediaPlayerControl * obj = (QMediaPlayerControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->stop ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual int volume() const = 0
*/
HB_FUNC_STATIC( QMEDIAPLAYERCONTROL_VOLUME )
{
  QMediaPlayerControl * obj = (QMediaPlayerControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->volume () );
  }
}




#pragma ENDDUMP
