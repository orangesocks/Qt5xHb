/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QDBUSERROR
#endif

CLASS QDBusServer INHERIT QObject

   METHOD new
   METHOD delete
   METHOD isConnected
   METHOD lastError
   METHOD address

   METHOD onNewConnection

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QDBusServer
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtDBus/QDBusServer>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtDBus/QDBusServer>
#endif

#include <QtDBus/QDBusError>

/*
QDBusServer( const QString & address, QObject * parent = 0 )
*/
void QDBusServer_new1()
{
  QDBusServer * obj = new QDBusServer( PQSTRING(1), OPQOBJECT(2,0) );
  Qt5xHb::returnNewObject( obj, false );
}

/*
QDBusServer( QObject * parent = 0 )
*/
void QDBusServer_new2()
{
  QDBusServer * obj = new QDBusServer( OPQOBJECT(1,0) );
  Qt5xHb::returnNewObject( obj, false );
}

HB_FUNC_STATIC( QDBUSSERVER_NEW )
{
}

HB_FUNC_STATIC( QDBUSSERVER_DELETE )
{
  QDBusServer * obj = (QDBusServer *) Qt5xHb::itemGetPtrStackSelfItem();

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
bool isConnected() const
*/
HB_FUNC_STATIC( QDBUSSERVER_ISCONNECTED )
{
  QDBusServer * obj = (QDBusServer *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isConnected() );
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
QDBusError lastError() const
*/
HB_FUNC_STATIC( QDBUSSERVER_LASTERROR )
{
  QDBusServer * obj = (QDBusServer *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QDBusError * ptr = new QDBusError( obj->lastError() );
      Qt5xHb::createReturnClass( ptr, "QDBUSERROR", true );
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
QString address() const
*/
HB_FUNC_STATIC( QDBUSSERVER_ADDRESS )
{
  QDBusServer * obj = (QDBusServer *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->address() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

void QDBusServerSlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QDBUSSERVER_ONNEWCONNECTION )
{
  QDBusServerSlots_connect_signal( "newConnection(QDBusConnection)", "newConnection(QDBusConnection)" );
}

#pragma ENDDUMP
