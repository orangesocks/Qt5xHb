/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QWINDOW
REQUEST QOBJECT
REQUEST QTOUCHDEVICE
#endif

CLASS QTouchEvent INHERIT QInputEvent

   METHOD delete
   METHOD window
   METHOD target
   METHOD touchPointStates
   METHOD device

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTouchEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QTouchEvent>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QTouchEvent>
#endif

#include <QList>


HB_FUNC_STATIC( QTOUCHEVENT_DELETE )
{
  QTouchEvent * obj = (QTouchEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QWindow *window() const
*/
HB_FUNC_STATIC( QTOUCHEVENT_WINDOW )
{
  QTouchEvent * obj = (QTouchEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWindow * ptr = obj->window ();
    _qt5xhb_createReturnClass ( ptr, "QWINDOW" );
  }
}


/*
QObject *target() const
*/
HB_FUNC_STATIC( QTOUCHEVENT_TARGET )
{
  QTouchEvent * obj = (QTouchEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QObject * ptr = obj->target ();
    _qt5xhb_createReturnQObjectClass ( ptr, "QOBJECT" );
  }
}



/*
Qt::TouchPointStates touchPointStates() const
*/
HB_FUNC_STATIC( QTOUCHEVENT_TOUCHPOINTSTATES )
{
  QTouchEvent * obj = (QTouchEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->touchPointStates () );
  }
}



/*
QTouchDevice *device() const
*/
HB_FUNC_STATIC( QTOUCHEVENT_DEVICE )
{
  QTouchEvent * obj = (QTouchEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTouchDevice * ptr = obj->device ();
    _qt5xhb_createReturnClass ( ptr, "QTOUCHDEVICE" );
  }
}



#pragma ENDDUMP
