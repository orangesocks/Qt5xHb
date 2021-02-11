/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRECT
#endif

CLASS QStyleOptionTabBarBase INHERIT QStyleOption

   METHOD new
   METHOD shape
   METHOD setShape
   METHOD tabBarRect
   METHOD setTabBarRect
   METHOD selectedTabRect
   METHOD setSelectedTabRect
   METHOD documentMode
   METHOD setDocumentMode

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QStyleOptionTabBarBase
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWidgets/QStyleOptionTabBarBase>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtWidgets/QStyleOptionTabBarBase>
#endif

/*
QStyleOptionTabBarBase()
*/
void QStyleOptionTabBarBase_new1()
{
  QStyleOptionTabBarBase * obj = new QStyleOptionTabBarBase();
  Qt5xHb::returnNewObject( obj, true );
}

/*
QStyleOptionTabBarBase( const QStyleOptionTabBarBase & other )
*/
void QStyleOptionTabBarBase_new2()
{
  QStyleOptionTabBarBase * obj = new QStyleOptionTabBarBase( *PQSTYLEOPTIONTABBARBASE(1) );
  Qt5xHb::returnNewObject( obj, true );
}

HB_FUNC_STATIC( QSTYLEOPTIONTABBARBASE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QStyleOptionTabBarBase_new1();
  }
  else if( ISNUMPAR(1) && ISQSTYLEOPTIONTABBARBASE(1) )
  {
    QStyleOptionTabBarBase_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QTabBar::Shape shape
*/
HB_FUNC_STATIC( QSTYLEOPTIONTABBARBASE_SHAPE )
{
  QStyleOptionTabBarBase * obj = (QStyleOptionTabBarBase *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->shape );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONTABBARBASE_SETSHAPE )
{
  QStyleOptionTabBarBase * obj = (QStyleOptionTabBarBase *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->shape= (QTabBar::Shape) hb_parni(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QRect tabBarRect
*/
HB_FUNC_STATIC( QSTYLEOPTIONTABBARBASE_TABBARRECT )
{
  QStyleOptionTabBarBase * obj = (QStyleOptionTabBarBase *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QRect * ptr = new QRect( obj->tabBarRect );
      Qt5xHb::createReturnClass( ptr, "QRECT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONTABBARBASE_SETTABBARRECT )
{
  QStyleOptionTabBarBase * obj = (QStyleOptionTabBarBase *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQRECT(1) )
    {
      obj->tabBarRect= *PQRECT(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QRect selectedTabRect
*/
HB_FUNC_STATIC( QSTYLEOPTIONTABBARBASE_SELECTEDTABRECT )
{
  QStyleOptionTabBarBase * obj = (QStyleOptionTabBarBase *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QRect * ptr = new QRect( obj->selectedTabRect );
      Qt5xHb::createReturnClass( ptr, "QRECT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONTABBARBASE_SETSELECTEDTABRECT )
{
  QStyleOptionTabBarBase * obj = (QStyleOptionTabBarBase *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQRECT(1) )
    {
      obj->selectedTabRect= *PQRECT(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool documentMode
*/
HB_FUNC_STATIC( QSTYLEOPTIONTABBARBASE_DOCUMENTMODE )
{
  QStyleOptionTabBarBase * obj = (QStyleOptionTabBarBase *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->documentMode );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONTABBARBASE_SETDOCUMENTMODE )
{
  QStyleOptionTabBarBase * obj = (QStyleOptionTabBarBase *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->documentMode= PBOOL(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
