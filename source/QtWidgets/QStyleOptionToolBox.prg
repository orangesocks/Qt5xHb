/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QICON
#endif

CLASS QStyleOptionToolBox INHERIT QStyleOption

   METHOD new
   METHOD text
   METHOD setText
   METHOD icon
   METHOD setIcon
   METHOD position
   METHOD setPosition
   METHOD selectedPosition
   METHOD setSelectedPosition

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QStyleOptionToolBox
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWidgets/QStyleOptionToolBox>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtWidgets/QStyleOptionToolBox>
#endif

/*
QStyleOptionToolBox()
*/
void QStyleOptionToolBox_new1()
{
  QStyleOptionToolBox * obj = new QStyleOptionToolBox();
  Qt5xHb::returnNewObject( obj, true );
}

/*
QStyleOptionToolBox( const QStyleOptionToolBox & other )
*/
void QStyleOptionToolBox_new2()
{
  QStyleOptionToolBox * obj = new QStyleOptionToolBox( *PQSTYLEOPTIONTOOLBOX(1) );
  Qt5xHb::returnNewObject( obj, true );
}

HB_FUNC_STATIC( QSTYLEOPTIONTOOLBOX_NEW )
{
  if( ISNUMPAR(0) )
  {
    QStyleOptionToolBox_new1();
  }
  else if( ISNUMPAR(1) && ISQSTYLEOPTIONTOOLBOX(1) )
  {
    QStyleOptionToolBox_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QString text
*/
HB_FUNC_STATIC( QSTYLEOPTIONTOOLBOX_TEXT )
{
  QStyleOptionToolBox * obj = (QStyleOptionToolBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->text );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONTOOLBOX_SETTEXT )
{
  QStyleOptionToolBox * obj = (QStyleOptionToolBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->text= PQSTRING(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QIcon icon
*/
HB_FUNC_STATIC( QSTYLEOPTIONTOOLBOX_ICON )
{
  QStyleOptionToolBox * obj = (QStyleOptionToolBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QIcon * ptr = new QIcon( obj->icon );
      Qt5xHb::createReturnClass( ptr, "QICON", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONTOOLBOX_SETICON )
{
  QStyleOptionToolBox * obj = (QStyleOptionToolBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQICON(1) )
    {
      obj->icon= *PQICON(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
TabPosition position
*/
HB_FUNC_STATIC( QSTYLEOPTIONTOOLBOX_POSITION )
{
  QStyleOptionToolBox * obj = (QStyleOptionToolBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->position );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONTOOLBOX_SETPOSITION )
{
  QStyleOptionToolBox * obj = (QStyleOptionToolBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->position= (QStyleOptionToolBox::TabPosition) hb_parni(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
SelectedPosition selectedPosition
*/
HB_FUNC_STATIC( QSTYLEOPTIONTOOLBOX_SELECTEDPOSITION )
{
  QStyleOptionToolBox * obj = (QStyleOptionToolBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->selectedPosition );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONTOOLBOX_SETSELECTEDPOSITION )
{
  QStyleOptionToolBox * obj = (QStyleOptionToolBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->selectedPosition= (QStyleOptionToolBox::SelectedPosition) hb_parni(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
