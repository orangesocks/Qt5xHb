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

CLASS QAccessibleTextUpdateEvent INHERIT QAccessibleTextCursorEvent

   METHOD new
   METHOD delete
   METHOD textRemoved
   METHOD textInserted
   METHOD changePosition

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QAccessibleTextUpdateEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtGui/QAccessibleTextUpdateEvent>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtGui/QAccessibleTextUpdateEvent>
#endif

/*
QAccessibleTextUpdateEvent( QObject * obj, int position, const QString & oldText, const QString & text )
*/
HB_FUNC_STATIC( QACCESSIBLETEXTUPDATEEVENT_NEW )
{
  if( ISNUMPAR(4) && ISQOBJECT(1) && HB_ISNUM(2) && HB_ISCHAR(3) && HB_ISCHAR(4) )
  {
    QAccessibleTextUpdateEvent * obj = new QAccessibleTextUpdateEvent( PQOBJECT(1), PINT(2), PQSTRING(3), PQSTRING(4) );
    Qt5xHb::returnNewObject( obj, true );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QACCESSIBLETEXTUPDATEEVENT_DELETE )
{
  QAccessibleTextUpdateEvent * obj = (QAccessibleTextUpdateEvent *) Qt5xHb::itemGetPtrStackSelfItem();

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
QString textRemoved() const
*/
HB_FUNC_STATIC( QACCESSIBLETEXTUPDATEEVENT_TEXTREMOVED )
{
  QAccessibleTextUpdateEvent * obj = (QAccessibleTextUpdateEvent *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->textRemoved() );
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
QString textInserted() const
*/
HB_FUNC_STATIC( QACCESSIBLETEXTUPDATEEVENT_TEXTINSERTED )
{
  QAccessibleTextUpdateEvent * obj = (QAccessibleTextUpdateEvent *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->textInserted() );
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
int changePosition() const
*/
HB_FUNC_STATIC( QACCESSIBLETEXTUPDATEEVENT_CHANGEPOSITION )
{
  QAccessibleTextUpdateEvent * obj = (QAccessibleTextUpdateEvent *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->changePosition() );
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
