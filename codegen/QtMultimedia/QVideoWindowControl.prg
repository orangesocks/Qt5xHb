$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRECT
REQUEST QSIZE
#endif

CLASS QVideoWindowControl INHERIT QMediaControl

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD displayRect
   METHOD setDisplayRect
   METHOD isFullScreen
   METHOD setFullScreen
   METHOD repaint
   METHOD nativeSize
   METHOD aspectRatioMode
   METHOD setAspectRatioMode
   METHOD brightness
   METHOD setBrightness
   METHOD contrast
   METHOD setContrast
   METHOD hue
   METHOD setHue
   METHOD saturation
   METHOD setSaturation

   METHOD onFullScreenChanged
   METHOD onBrightnessChanged
   METHOD onContrastChanged
   METHOD onHueChanged
   METHOD onSaturationChanged
   METHOD onNativeSizeChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
virtual QRect displayRect() const = 0
*/
HB_FUNC_STATIC( QVIDEOWINDOWCONTROL_DISPLAYRECT )
{
  QVideoWindowControl * obj = (QVideoWindowControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * ptr = new QRect( obj->displayRect () );
    _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}


/*
virtual void setDisplayRect(const QRect &rect) = 0
*/
HB_FUNC_STATIC( QVIDEOWINDOWCONTROL_SETDISPLAYRECT )
{
  QVideoWindowControl * obj = (QVideoWindowControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setDisplayRect ( *PQRECT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual bool isFullScreen() const = 0
*/
HB_FUNC_STATIC( QVIDEOWINDOWCONTROL_ISFULLSCREEN )
{
  QVideoWindowControl * obj = (QVideoWindowControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isFullScreen () );
  }
}


/*
virtual void setFullScreen(bool fullScreen) = 0
*/
HB_FUNC_STATIC( QVIDEOWINDOWCONTROL_SETFULLSCREEN )
{
  QVideoWindowControl * obj = (QVideoWindowControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setFullScreen ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void repaint() = 0
*/
HB_FUNC_STATIC( QVIDEOWINDOWCONTROL_REPAINT )
{
  QVideoWindowControl * obj = (QVideoWindowControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->repaint ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QSize nativeSize() const = 0
*/
HB_FUNC_STATIC( QVIDEOWINDOWCONTROL_NATIVESIZE )
{
  QVideoWindowControl * obj = (QVideoWindowControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->nativeSize () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
virtual Qt::AspectRatioMode aspectRatioMode() const = 0
*/
HB_FUNC_STATIC( QVIDEOWINDOWCONTROL_ASPECTRATIOMODE )
{
  QVideoWindowControl * obj = (QVideoWindowControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->aspectRatioMode () );
  }
}


/*
virtual void setAspectRatioMode(Qt::AspectRatioMode mode) = 0
*/
HB_FUNC_STATIC( QVIDEOWINDOWCONTROL_SETASPECTRATIOMODE )
{
  QVideoWindowControl * obj = (QVideoWindowControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAspectRatioMode ( (Qt::AspectRatioMode) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual int brightness() const = 0
*/
HB_FUNC_STATIC( QVIDEOWINDOWCONTROL_BRIGHTNESS )
{
  QVideoWindowControl * obj = (QVideoWindowControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->brightness () );
  }
}


/*
virtual void setBrightness(int brightness) = 0
*/
HB_FUNC_STATIC( QVIDEOWINDOWCONTROL_SETBRIGHTNESS )
{
  QVideoWindowControl * obj = (QVideoWindowControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setBrightness ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual int contrast() const = 0
*/
HB_FUNC_STATIC( QVIDEOWINDOWCONTROL_CONTRAST )
{
  QVideoWindowControl * obj = (QVideoWindowControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->contrast () );
  }
}


/*
virtual void setContrast(int contrast) = 0
*/
HB_FUNC_STATIC( QVIDEOWINDOWCONTROL_SETCONTRAST )
{
  QVideoWindowControl * obj = (QVideoWindowControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setContrast ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual int hue() const = 0
*/
HB_FUNC_STATIC( QVIDEOWINDOWCONTROL_HUE )
{
  QVideoWindowControl * obj = (QVideoWindowControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->hue () );
  }
}


/*
virtual void setHue(int hue) = 0
*/
HB_FUNC_STATIC( QVIDEOWINDOWCONTROL_SETHUE )
{
  QVideoWindowControl * obj = (QVideoWindowControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setHue ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual int saturation() const = 0
*/
HB_FUNC_STATIC( QVIDEOWINDOWCONTROL_SATURATION )
{
  QVideoWindowControl * obj = (QVideoWindowControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->saturation () );
  }
}


/*
virtual void setSaturation(int saturation) = 0
*/
HB_FUNC_STATIC( QVIDEOWINDOWCONTROL_SETSATURATION )
{
  QVideoWindowControl * obj = (QVideoWindowControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSaturation ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
