/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QStyleOptionFrame INHERIT QStyleOption

   METHOD new
   METHOD lineWidth
   METHOD setLineWidth
   METHOD midLineWidth
   METHOD setMidLineWidth
   METHOD features
   METHOD setFeatures
   METHOD frameShape
   METHOD setFrameShape

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QStyleOptionFrame
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWidgets/QStyleOptionFrame>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtWidgets/QStyleOptionFrame>
#endif

/*
QStyleOptionFrame()
*/
void QStyleOptionFrame_new1()
{
  QStyleOptionFrame * obj = new QStyleOptionFrame();
  Qt5xHb::returnNewObject( obj, true );
}

/*
QStyleOptionFrame( const QStyleOptionFrame & other )
*/
void QStyleOptionFrame_new2()
{
  QStyleOptionFrame * obj = new QStyleOptionFrame( *PQSTYLEOPTIONFRAME(1) );
  Qt5xHb::returnNewObject( obj, true );
}

HB_FUNC_STATIC( QSTYLEOPTIONFRAME_NEW )
{
  if( ISNUMPAR(0) )
  {
    QStyleOptionFrame_new1();
  }
  else if( ISNUMPAR(1) && ISQSTYLEOPTIONFRAME(1) )
  {
    QStyleOptionFrame_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
int lineWidth
*/
HB_FUNC_STATIC( QSTYLEOPTIONFRAME_LINEWIDTH )
{
  QStyleOptionFrame * obj = (QStyleOptionFrame *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->lineWidth );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONFRAME_SETLINEWIDTH )
{
  QStyleOptionFrame * obj = (QStyleOptionFrame *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->lineWidth= PINT(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int midLineWidth
*/
HB_FUNC_STATIC( QSTYLEOPTIONFRAME_MIDLINEWIDTH )
{
  QStyleOptionFrame * obj = (QStyleOptionFrame *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->midLineWidth );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONFRAME_SETMIDLINEWIDTH )
{
  QStyleOptionFrame * obj = (QStyleOptionFrame *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->midLineWidth= PINT(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
FrameFeatures features
*/
HB_FUNC_STATIC( QSTYLEOPTIONFRAME_FEATURES )
{
  QStyleOptionFrame * obj = (QStyleOptionFrame *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->features );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONFRAME_SETFEATURES )
{
  QStyleOptionFrame * obj = (QStyleOptionFrame *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->features= (QStyleOptionFrame::FrameFeatures) hb_parni(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QFrame::Shape frameShape
*/
HB_FUNC_STATIC( QSTYLEOPTIONFRAME_FRAMESHAPE )
{
  QStyleOptionFrame * obj = (QStyleOptionFrame *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->frameShape );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONFRAME_SETFRAMESHAPE )
{
  QStyleOptionFrame * obj = (QStyleOptionFrame *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->frameShape= (QFrame::Shape) hb_parni(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
