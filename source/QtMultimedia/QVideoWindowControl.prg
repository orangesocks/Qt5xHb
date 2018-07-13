/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRECT
REQUEST QSIZE
#endif

CLASS QVideoWindowControl INHERIT QMediaControl

   METHOD delete

   METHOD aspectRatioMode
   METHOD brightness
   METHOD contrast
   METHOD displayRect
   METHOD hue
   METHOD isFullScreen
   METHOD nativeSize
   METHOD repaint
   METHOD saturation
   METHOD setAspectRatioMode
   METHOD setBrightness
   METHOD setContrast
   METHOD setDisplayRect
   METHOD setFullScreen
   METHOD setHue
   METHOD setSaturation
   METHOD setWinId
   METHOD winId

   METHOD onBrightnessChanged
   METHOD onContrastChanged
   METHOD onFullScreenChanged
   METHOD onHueChanged
   METHOD onNativeSizeChanged
   METHOD onSaturationChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QVideoWindowControl
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QVideoWindowControl>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QVideoWindowControl>
#endif

/*
explicit QVideoWindowControl(QObject *parent = Q_NULLPTR) (protected)
*/

/*
~QVideoWindowControl()
*/
HB_FUNC_STATIC( QVIDEOWINDOWCONTROL_DELETE )
{
  QVideoWindowControl * obj = (QVideoWindowControl *) _qt5xhb_itemGetPtrStackSelfItem();

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
virtual QRect displayRect() const = 0
*/
HB_FUNC_STATIC( QVIDEOWINDOWCONTROL_DISPLAYRECT )
{
  QVideoWindowControl * obj = (QVideoWindowControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QRect * ptr = new QRect( obj->displayRect () );
      _qt5xhb_createReturnClass ( ptr, "QRECT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(1) && ISQRECT(1) )
    {
      obj->setDisplayRect ( *PQRECT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isFullScreen () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setFullScreen ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(0) )
    {
      obj->repaint ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(0) )
    {
      QSize * ptr = new QSize( obj->nativeSize () );
      _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(0) )
    {
      RENUM( obj->aspectRatioMode () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setAspectRatioMode ( (Qt::AspectRatioMode) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(0) )
    {
      RINT( obj->brightness () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setBrightness ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(0) )
    {
      RINT( obj->contrast () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setContrast ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(0) )
    {
      RINT( obj->hue () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setHue ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(0) )
    {
      RINT( obj->saturation () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setSaturation ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual WId winId() const = 0
*/
HB_FUNC_STATIC( QVIDEOWINDOWCONTROL_WINID )
{
  QVideoWindowControl * obj = (QVideoWindowControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      hb_retptr( (void *) obj->winId () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual void setWinId(WId id) = 0
*/
HB_FUNC_STATIC( QVIDEOWINDOWCONTROL_SETWINID )
{
  QVideoWindowControl * obj = (QVideoWindowControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISPOINTER(1) )
    {
      obj->setWinId ( (WId) hb_parptr(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

void QVideoWindowControlSlots_connect_signal ( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QVIDEOWINDOWCONTROL_ONFULLSCREENCHANGED )
{
  QVideoWindowControlSlots_connect_signal( "fullScreenChanged(bool)", "fullScreenChanged(bool)" );
}

HB_FUNC_STATIC( QVIDEOWINDOWCONTROL_ONBRIGHTNESSCHANGED )
{
  QVideoWindowControlSlots_connect_signal( "brightnessChanged(int)", "brightnessChanged(int)" );
}

HB_FUNC_STATIC( QVIDEOWINDOWCONTROL_ONCONTRASTCHANGED )
{
  QVideoWindowControlSlots_connect_signal( "contrastChanged(int)", "contrastChanged(int)" );
}

HB_FUNC_STATIC( QVIDEOWINDOWCONTROL_ONHUECHANGED )
{
  QVideoWindowControlSlots_connect_signal( "hueChanged(int)", "hueChanged(int)" );
}

HB_FUNC_STATIC( QVIDEOWINDOWCONTROL_ONSATURATIONCHANGED )
{
  QVideoWindowControlSlots_connect_signal( "saturationChanged(int)", "saturationChanged(int)" );
}

HB_FUNC_STATIC( QVIDEOWINDOWCONTROL_ONNATIVESIZECHANGED )
{
  QVideoWindowControlSlots_connect_signal( "nativeSizeChanged()", "nativeSizeChanged()" );
}

#pragma ENDDUMP
