/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINT
#endif

CLASS QContextMenuEvent INHERIT QInputEvent

   METHOD new
   METHOD delete
   METHOD globalPos
   METHOD globalX
   METHOD globalY
   METHOD pos
   METHOD reason
   METHOD x
   METHOD y

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QContextMenuEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtGui/QContextMenuEvent>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtGui/QContextMenuEvent>
#endif

/*
QContextMenuEvent ( Reason reason, const QPoint & pos, const QPoint & globalPos, Qt::KeyboardModifiers modifiers )
*/
void QContextMenuEvent_new1()
{
  QContextMenuEvent * obj = new QContextMenuEvent( (QContextMenuEvent::Reason) hb_parni(1), *PQPOINT(2), *PQPOINT(3), (Qt::KeyboardModifiers) hb_parni(4) );
  Qt5xHb::returnNewObject( obj, false );
}

/*
QContextMenuEvent ( Reason reason, const QPoint & pos, const QPoint & globalPos )
*/
void QContextMenuEvent_new2()
{
  QContextMenuEvent * obj = new QContextMenuEvent( (QContextMenuEvent::Reason) hb_parni(1), *PQPOINT(2), *PQPOINT(3) );
  Qt5xHb::returnNewObject( obj, false );
}

/*
QContextMenuEvent ( Reason reason, const QPoint & pos )
*/
void QContextMenuEvent_new3()
{
  QContextMenuEvent * obj = new QContextMenuEvent( (QContextMenuEvent::Reason) hb_parni(1), *PQPOINT(2) );
  Qt5xHb::returnNewObject( obj, false );
}

/*
[1]QContextMenuEvent ( Reason reason, const QPoint & pos, const QPoint & globalPos, Qt::KeyboardModifiers modifiers )
[2]QContextMenuEvent ( Reason reason, const QPoint & pos, const QPoint & globalPos )
[3]QContextMenuEvent ( Reason reason, const QPoint & pos )
*/

HB_FUNC_STATIC( QCONTEXTMENUEVENT_NEW )
{
  if( ISNUMPAR(4) && ISNUM(1) && ISQPOINT(2) && ISQPOINT(3) && ISNUM(4) )
  {
    QContextMenuEvent_new1();
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISQPOINT(2) && ISQPOINT(3) )
  {
    QContextMenuEvent_new2();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISQPOINT(2) )
  {
    QContextMenuEvent_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QCONTEXTMENUEVENT_DELETE )
{
  QContextMenuEvent * obj = (QContextMenuEvent *) Qt5xHb::itemGetPtrStackSelfItem();

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
const QPoint & globalPos () const
*/
HB_FUNC_STATIC( QCONTEXTMENUEVENT_GLOBALPOS )
{
  QContextMenuEvent * obj = (QContextMenuEvent *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      const QPoint * ptr = &obj->globalPos();
      Qt5xHb::createReturnClass( ptr, "QPOINT", false );
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
int globalX () const
*/
HB_FUNC_STATIC( QCONTEXTMENUEVENT_GLOBALX )
{
  QContextMenuEvent * obj = (QContextMenuEvent *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->globalX() );
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
int globalY () const
*/
HB_FUNC_STATIC( QCONTEXTMENUEVENT_GLOBALY )
{
  QContextMenuEvent * obj = (QContextMenuEvent *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->globalY() );
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
const QPoint & pos () const
*/
HB_FUNC_STATIC( QCONTEXTMENUEVENT_POS )
{
  QContextMenuEvent * obj = (QContextMenuEvent *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      const QPoint * ptr = &obj->pos();
      Qt5xHb::createReturnClass( ptr, "QPOINT", false );
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
Reason reason () const
*/
HB_FUNC_STATIC( QCONTEXTMENUEVENT_REASON )
{
  QContextMenuEvent * obj = (QContextMenuEvent *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->reason() );
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
int x () const
*/
HB_FUNC_STATIC( QCONTEXTMENUEVENT_X )
{
  QContextMenuEvent * obj = (QContextMenuEvent *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->x() );
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
int y () const
*/
HB_FUNC_STATIC( QCONTEXTMENUEVENT_Y )
{
  QContextMenuEvent * obj = (QContextMenuEvent *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->y() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

#pragma ENDDUMP
