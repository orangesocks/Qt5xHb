/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QANDROIDBINDER
#endif

CLASS QAndroidService INHERIT QCoreApplication

   METHOD new
   METHOD delete
   METHOD onBind

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QAndroidService
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
#include <QtAndroidExtras/QAndroidService>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
#include <QtAndroidExtras/QAndroidService>
#endif
#endif

/*
QAndroidService( int & argc, char ** argv )
*/

HB_FUNC_STATIC( QANDROIDSERVICE_NEW )
{
  int argc;
  char ** argv;
  argc = hb_cmdargARGC();
  argv = hb_cmdargARGV();
  QAndroidService * o = NULL;
  o = new QAndroidService( argc, argv );
  Qt5xHb::returnNewObject( o, false );
}

/*
virtual ~QAndroidService()
*/
HB_FUNC_STATIC( QANDROIDSERVICE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QAndroidService * obj = (QAndroidService *) Qt5xHb::itemGetPtrStackSelfItem();

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
#endif
}

/*
virtual QAndroidBinder * onBind( const QAndroidIntent & intent )
*/
HB_FUNC_STATIC( QANDROIDSERVICE_ONBIND )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QAndroidService * obj = (QAndroidService *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQANDROIDINTENT(1) )
    {
#endif
      QAndroidBinder * ptr = obj->onBind( *PQANDROIDINTENT(1) );
      Qt5xHb::createReturnClass( ptr, "QANDROIDBINDER", false );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

#pragma ENDDUMP
