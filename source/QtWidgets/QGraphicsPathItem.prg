/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPAINTERPATH
REQUEST QRECTF
#endif

CLASS QGraphicsPathItem INHERIT QAbstractGraphicsShapeItem

   METHOD new
   METHOD delete
   METHOD path
   METHOD setPath
   METHOD boundingRect
   METHOD contains
   METHOD isObscuredBy
   METHOD opaqueArea
   METHOD paint
   METHOD shape
   METHOD type

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QGraphicsPathItem
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWidgets/QGraphicsPathItem>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtWidgets/QGraphicsPathItem>
#endif

/*
QGraphicsPathItem( QGraphicsItem * parent = 0 )
*/
void QGraphicsPathItem_new1()
{
  QGraphicsPathItem * obj = new QGraphicsPathItem( ISNIL(1)? 0 : (QGraphicsItem *) Qt5xHb::itemGetPtr(1) );
  Qt5xHb::returnNewObject( obj, true );
}

/*
QGraphicsPathItem( const QPainterPath & path, QGraphicsItem * parent = 0 )
*/
void QGraphicsPathItem_new2()
{
  QGraphicsPathItem * obj = new QGraphicsPathItem( *PQPAINTERPATH(1), ISNIL(2)? 0 : (QGraphicsItem *) Qt5xHb::itemGetPtr(2) );
  Qt5xHb::returnNewObject( obj, true );
}

HB_FUNC_STATIC( QGRAPHICSPATHITEM_NEW )
{
  if( ISBETWEEN(0,1) && (ISQGRAPHICSITEM(1)||ISNIL(1)) )
  {
    QGraphicsPathItem_new1();
  }
  else if( ISBETWEEN(1,2) && ISQPAINTERPATH(1) && (ISQGRAPHICSITEM(2)||ISNIL(2)) )
  {
    QGraphicsPathItem_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QGRAPHICSPATHITEM_DELETE )
{
  QGraphicsPathItem * obj = (QGraphicsPathItem *) Qt5xHb::itemGetPtrStackSelfItem();

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
QPainterPath path() const
*/
HB_FUNC_STATIC( QGRAPHICSPATHITEM_PATH )
{
  QGraphicsPathItem * obj = (QGraphicsPathItem *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QPainterPath * ptr = new QPainterPath( obj->path() );
      Qt5xHb::createReturnClass( ptr, "QPAINTERPATH", true );
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
void setPath( const QPainterPath & path )
*/
HB_FUNC_STATIC( QGRAPHICSPATHITEM_SETPATH )
{
  QGraphicsPathItem * obj = (QGraphicsPathItem *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQPAINTERPATH(1) )
    {
#endif
      obj->setPath( *PQPAINTERPATH(1) );
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
virtual QRectF boundingRect() const
*/
HB_FUNC_STATIC( QGRAPHICSPATHITEM_BOUNDINGRECT )
{
  QGraphicsPathItem * obj = (QGraphicsPathItem *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QRectF * ptr = new QRectF( obj->boundingRect() );
      Qt5xHb::createReturnClass( ptr, "QRECTF", true );
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
virtual bool contains( const QPointF & point ) const
*/
HB_FUNC_STATIC( QGRAPHICSPATHITEM_CONTAINS )
{
  QGraphicsPathItem * obj = (QGraphicsPathItem *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQPOINTF(1) )
    {
#endif
      RBOOL( obj->contains( *PQPOINTF(1) ) );
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
virtual bool isObscuredBy( const QGraphicsItem * item ) const
*/
HB_FUNC_STATIC( QGRAPHICSPATHITEM_ISOBSCUREDBY )
{
  QGraphicsPathItem * obj = (QGraphicsPathItem *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQGRAPHICSITEM(1) )
    {
#endif
      RBOOL( obj->isObscuredBy( PQGRAPHICSITEM(1) ) );
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
virtual QPainterPath opaqueArea() const
*/
HB_FUNC_STATIC( QGRAPHICSPATHITEM_OPAQUEAREA )
{
  QGraphicsPathItem * obj = (QGraphicsPathItem *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QPainterPath * ptr = new QPainterPath( obj->opaqueArea() );
      Qt5xHb::createReturnClass( ptr, "QPAINTERPATH", true );
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
virtual void paint( QPainter * painter, const QStyleOptionGraphicsItem * option, QWidget * widget = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSPATHITEM_PAINT )
{
  QGraphicsPathItem * obj = (QGraphicsPathItem *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(2,3) && ISQPAINTER(1) && ISQSTYLEOPTIONGRAPHICSITEM(2) && (ISQWIDGET(3)||ISNIL(3)) )
    {
#endif
      obj->paint( PQPAINTER(1), PQSTYLEOPTIONGRAPHICSITEM(2), OPQWIDGET(3,0) );
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
virtual QPainterPath shape() const
*/
HB_FUNC_STATIC( QGRAPHICSPATHITEM_SHAPE )
{
  QGraphicsPathItem * obj = (QGraphicsPathItem *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QPainterPath * ptr = new QPainterPath( obj->shape() );
      Qt5xHb::createReturnClass( ptr, "QPAINTERPATH", true );
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
virtual int type() const
*/
HB_FUNC_STATIC( QGRAPHICSPATHITEM_TYPE )
{
  QGraphicsPathItem * obj = (QGraphicsPathItem *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->type() );
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
