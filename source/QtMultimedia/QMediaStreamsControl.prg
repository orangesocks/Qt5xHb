/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
#endif

CLASS QMediaStreamsControl INHERIT QMediaControl

   METHOD delete
   METHOD isActive
   METHOD metaData
   METHOD setActive
   METHOD streamCount
   METHOD streamType

   METHOD onActiveStreamsChanged
   METHOD onStreamsChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QMediaStreamsControl
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtMultimedia/QMediaStreamsControl>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtMultimedia/QMediaStreamsControl>
#endif

/*
virtual ~QMediaStreamsControl()
*/
HB_FUNC_STATIC( QMEDIASTREAMSCONTROL_DELETE )
{
  QMediaStreamsControl * obj = (QMediaStreamsControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    Qt5xHb::Events_disconnect_all_events( obj, true );
    Qt5xHb::Signals_disconnect_all_signals( obj, true );
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
virtual bool isActive( int streamNumber ) = 0
*/
HB_FUNC_STATIC( QMEDIASTREAMSCONTROL_ISACTIVE )
{
  QMediaStreamsControl * obj = (QMediaStreamsControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RBOOL( obj->isActive( PINT(1) ) );
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
virtual QVariant metaData( int streamNumber, const QString & key ) = 0
*/
HB_FUNC_STATIC( QMEDIASTREAMSCONTROL_METADATA )
{
  QMediaStreamsControl * obj = (QMediaStreamsControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISCHAR(2) )
    {
#endif
      QVariant * ptr = new QVariant( obj->metaData( PINT(1), PQSTRING(2) ) );
      Qt5xHb::createReturnClass( ptr, "QVARIANT", true );
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
virtual void setActive( int streamNumber, bool state ) = 0
*/
HB_FUNC_STATIC( QMEDIASTREAMSCONTROL_SETACTIVE )
{
  QMediaStreamsControl * obj = (QMediaStreamsControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISLOG(2) )
    {
#endif
      obj->setActive( PINT(1), PBOOL(2) );
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
virtual int streamCount() = 0
*/
HB_FUNC_STATIC( QMEDIASTREAMSCONTROL_STREAMCOUNT )
{
  QMediaStreamsControl * obj = (QMediaStreamsControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->streamCount() );
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
virtual QMediaStreamsControl::StreamType streamType( int streamNumber ) = 0
*/
HB_FUNC_STATIC( QMEDIASTREAMSCONTROL_STREAMTYPE )
{
  QMediaStreamsControl * obj = (QMediaStreamsControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RENUM( obj->streamType( PINT(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

void QMediaStreamsControlSlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QMEDIASTREAMSCONTROL_ONACTIVESTREAMSCHANGED )
{
  QMediaStreamsControlSlots_connect_signal( "activeStreamsChanged()", "activeStreamsChanged()" );
}

HB_FUNC_STATIC( QMEDIASTREAMSCONTROL_ONSTREAMSCHANGED )
{
  QMediaStreamsControlSlots_connect_signal( "streamsChanged()", "streamsChanged()" );
}

#pragma ENDDUMP
