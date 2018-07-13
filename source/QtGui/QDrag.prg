/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPIXMAP
REQUEST QPOINT
REQUEST QMIMEDATA
REQUEST QOBJECT
#endif

CLASS QDrag INHERIT QObject

   METHOD new
   METHOD delete
   METHOD defaultAction
   METHOD dragCursor
   METHOD exec
   METHOD hotSpot
   METHOD mimeData
   METHOD pixmap
   METHOD setDragCursor
   METHOD setHotSpot
   METHOD setMimeData
   METHOD setPixmap
   METHOD source
   METHOD supportedActions
   METHOD target

   METHOD onActionChanged
   METHOD onTargetChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDrag
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QDrag>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QDrag>
#endif

#include <QPoint>
#include <QPixmap>
#include <QMimeData>

/*
QDrag(QObject * dragSource)
*/
HB_FUNC_STATIC( QDRAG_NEW )
{
  if( ISNUMPAR(1) && ISQOBJECT(1) )
  {
    QDrag * o = new QDrag ( PQOBJECT(1) );
    _qt5xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QDRAG_DELETE )
{
  QDrag * obj = (QDrag *) _qt5xhb_itemGetPtrStackSelfItem();

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
Qt::DropAction defaultAction() const
*/
HB_FUNC_STATIC( QDRAG_DEFAULTACTION )
{
  QDrag * obj = (QDrag *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->defaultAction () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QPixmap dragCursor(Qt::DropAction action) const
*/
HB_FUNC_STATIC( QDRAG_DRAGCURSOR )
{
  QDrag * obj = (QDrag *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      QPixmap * ptr = new QPixmap( obj->dragCursor ( (Qt::DropAction) hb_parni(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QPIXMAP", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
Qt::DropAction exec(Qt::DropActions supportedActions = Qt::MoveAction)
*/
void QDrag_exec1 ()
{
  QDrag * obj = (QDrag *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      RENUM( obj->exec ( ISNIL(1)? (Qt::DropActions) Qt::MoveAction : (Qt::DropActions) hb_parni(1) ) );
  }
}

/*
Qt::DropAction exec(Qt::DropActions supportedActions, Qt::DropAction defaultDropAction)
*/
void QDrag_exec2 ()
{
  QDrag * obj = (QDrag *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      RENUM( obj->exec ( (Qt::DropActions) hb_parni(1), (Qt::DropAction) hb_parni(2) ) );
  }
}

//[1]Qt::DropAction exec(Qt::DropActions supportedActions = Qt::MoveAction)
//[2]Qt::DropAction exec(Qt::DropActions supportedActions, Qt::DropAction defaultDropAction)

HB_FUNC_STATIC( QDRAG_EXEC )
{
  if( ISBETWEEN(0,1) && ISOPTNUM(1) )
  {
    QDrag_exec1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QDrag_exec2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QPoint hotSpot() const
*/
HB_FUNC_STATIC( QDRAG_HOTSPOT )
{
  QDrag * obj = (QDrag *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QPoint * ptr = new QPoint( obj->hotSpot () );
      _qt5xhb_createReturnClass ( ptr, "QPOINT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QMimeData * mimeData() const
*/
HB_FUNC_STATIC( QDRAG_MIMEDATA )
{
  QDrag * obj = (QDrag *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QMimeData * ptr = obj->mimeData ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QMIMEDATA" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QPixmap pixmap() const
*/
HB_FUNC_STATIC( QDRAG_PIXMAP )
{
  QDrag * obj = (QDrag *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QPixmap * ptr = new QPixmap( obj->pixmap () );
      _qt5xhb_createReturnClass ( ptr, "QPIXMAP", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setDragCursor(const QPixmap & cursor, Qt::DropAction action)
*/
HB_FUNC_STATIC( QDRAG_SETDRAGCURSOR )
{
  QDrag * obj = (QDrag *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(2) && ISQPIXMAP(1) && ISNUM(2) )
    {
      obj->setDragCursor ( *PQPIXMAP(1), (Qt::DropAction) hb_parni(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setHotSpot(const QPoint & hotspot)
*/
HB_FUNC_STATIC( QDRAG_SETHOTSPOT )
{
  QDrag * obj = (QDrag *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQPOINT(1) )
    {
      obj->setHotSpot ( *PQPOINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setMimeData(QMimeData * data)
*/
HB_FUNC_STATIC( QDRAG_SETMIMEDATA )
{
  QDrag * obj = (QDrag *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQMIMEDATA(1) )
    {
      obj->setMimeData ( PQMIMEDATA(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPixmap(const QPixmap & pixmap)
*/
HB_FUNC_STATIC( QDRAG_SETPIXMAP )
{
  QDrag * obj = (QDrag *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQPIXMAP(1) )
    {
      obj->setPixmap ( *PQPIXMAP(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QObject * source() const
*/
HB_FUNC_STATIC( QDRAG_SOURCE )
{
  QDrag * obj = (QDrag *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QObject * ptr = obj->source ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QOBJECT" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
Qt::DropActions supportedActions() const
*/
HB_FUNC_STATIC( QDRAG_SUPPORTEDACTIONS )
{
  QDrag * obj = (QDrag *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->supportedActions () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QObject * target() const
*/
HB_FUNC_STATIC( QDRAG_TARGET )
{
  QDrag * obj = (QDrag *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QObject * ptr = obj->target ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QOBJECT" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

void QDragSlots_connect_signal ( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QDRAG_ONACTIONCHANGED )
{
  QDragSlots_connect_signal( "actionChanged(Qt::DropAction)", "actionChanged(Qt::DropAction)" );
}

HB_FUNC_STATIC( QDRAG_ONTARGETCHANGED )
{
  QDragSlots_connect_signal( "targetChanged(QObject*)", "targetChanged(QObject*)" );
}

#pragma ENDDUMP
