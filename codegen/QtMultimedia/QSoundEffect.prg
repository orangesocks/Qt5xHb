$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QURL
#endif

CLASS QSoundEffect INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD source
   METHOD setSource
   METHOD loopCount
   METHOD loopsRemaining
   METHOD setLoopCount
   METHOD volume
   METHOD setVolume
   METHOD isMuted
   METHOD setMuted
   METHOD isLoaded
   METHOD isPlaying
   METHOD status
   METHOD category
   METHOD setCategory
   METHOD play
   METHOD stop
   METHOD supportedMimeTypes

   METHOD onSourceChanged
   METHOD onLoopCountChanged
   METHOD onLoopsRemainingChanged
   METHOD onVolumeChanged
   METHOD onMutedChanged
   METHOD onLoadedChanged
   METHOD onPlayingChanged
   METHOD onStatusChanged
   METHOD onCategoryChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QSoundEffect(QObject *parent = 0)
*/
HB_FUNC_STATIC( QSOUNDEFFECT_NEW )
{
  QSoundEffect * o = new QSoundEffect ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

/*
QUrl source() const
*/
HB_FUNC_STATIC( QSOUNDEFFECT_SOURCE )
{
  QSoundEffect * obj = (QSoundEffect *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * ptr = new QUrl( obj->source () );
    _qt5xhb_createReturnClass ( ptr, "QURL", true );
  }
}


/*
void setSource(const QUrl &url)
*/
HB_FUNC_STATIC( QSOUNDEFFECT_SETSOURCE )
{
  QSoundEffect * obj = (QSoundEffect *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSource ( *PQURL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int loopCount() const
*/
HB_FUNC_STATIC( QSOUNDEFFECT_LOOPCOUNT )
{
  QSoundEffect * obj = (QSoundEffect *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->loopCount () );
  }
}


/*
int loopsRemaining() const
*/
HB_FUNC_STATIC( QSOUNDEFFECT_LOOPSREMAINING )
{
  QSoundEffect * obj = (QSoundEffect *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->loopsRemaining () );
  }
}


/*
void setLoopCount(int loopCount)
*/
HB_FUNC_STATIC( QSOUNDEFFECT_SETLOOPCOUNT )
{
  QSoundEffect * obj = (QSoundEffect *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setLoopCount ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
qreal volume() const
*/
HB_FUNC_STATIC( QSOUNDEFFECT_VOLUME )
{
  QSoundEffect * obj = (QSoundEffect *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->volume () );
  }
}


/*
void setVolume(qreal volume)
*/
HB_FUNC_STATIC( QSOUNDEFFECT_SETVOLUME )
{
  QSoundEffect * obj = (QSoundEffect *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setVolume ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isMuted() const
*/
HB_FUNC_STATIC( QSOUNDEFFECT_ISMUTED )
{
  QSoundEffect * obj = (QSoundEffect *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isMuted () );
  }
}


/*
void setMuted(bool muted)
*/
HB_FUNC_STATIC( QSOUNDEFFECT_SETMUTED )
{
  QSoundEffect * obj = (QSoundEffect *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setMuted ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isLoaded() const
*/
HB_FUNC_STATIC( QSOUNDEFFECT_ISLOADED )
{
  QSoundEffect * obj = (QSoundEffect *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isLoaded () );
  }
}


/*
bool isPlaying() const
*/
HB_FUNC_STATIC( QSOUNDEFFECT_ISPLAYING )
{
  QSoundEffect * obj = (QSoundEffect *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isPlaying () );
  }
}


/*
Status status() const
*/
HB_FUNC_STATIC( QSOUNDEFFECT_STATUS )
{
  QSoundEffect * obj = (QSoundEffect *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->status () );
  }
}


/*
QString category() const
*/
HB_FUNC_STATIC( QSOUNDEFFECT_CATEGORY )
{
  QSoundEffect * obj = (QSoundEffect *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->category () );
  }
}


/*
void setCategory(const QString &category)
*/
HB_FUNC_STATIC( QSOUNDEFFECT_SETCATEGORY )
{
  QSoundEffect * obj = (QSoundEffect *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setCategory ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void play()
*/
HB_FUNC_STATIC( QSOUNDEFFECT_PLAY )
{
  QSoundEffect * obj = (QSoundEffect *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->play ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void stop()
*/
HB_FUNC_STATIC( QSOUNDEFFECT_STOP )
{
  QSoundEffect * obj = (QSoundEffect *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->stop ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static QStringList supportedMimeTypes()
*/
HB_FUNC_STATIC( QSOUNDEFFECT_SUPPORTEDMIMETYPES )
{
  RQSTRINGLIST( QSoundEffect::supportedMimeTypes () );
}




#pragma ENDDUMP
