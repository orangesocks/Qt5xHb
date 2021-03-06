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

CLASS QOAuthHttpServerReplyHandler INHERIT QOAuthOobReplyHandler

   METHOD new
   METHOD delete
   METHOD callback
   METHOD callbackPath
   METHOD setCallbackPath
   METHOD callbackText
   METHOD setCallbackText
   METHOD port
   METHOD listen
   METHOD close
   METHOD isListening

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QOAuthHttpServerReplyHandler
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
#include <QtNetworkAuth/QOAuthHttpServerReplyHandler>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
#include <QtNetworkAuth/QOAuthHttpServerReplyHandler>
#endif
#endif

/*
explicit QOAuthHttpServerReplyHandler(QObject *parent = nullptr)
*/
void QOAuthHttpServerReplyHandler_new1()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QOAuthHttpServerReplyHandler * obj = new QOAuthHttpServerReplyHandler( OPQOBJECT(1,nullptr) );
  Qt5xHb::returnNewObject( obj, false );
#endif
}

/*
explicit QOAuthHttpServerReplyHandler(quint16 port, QObject *parent = nullptr)
*/
void QOAuthHttpServerReplyHandler_new2()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QOAuthHttpServerReplyHandler * obj = new QOAuthHttpServerReplyHandler( PQUINT16(1), OPQOBJECT(2,nullptr) );
  Qt5xHb::returnNewObject( obj, false );
#endif
}

/*
explicit QOAuthHttpServerReplyHandler(const QHostAddress &address, quint16 port, QObject *parent = nullptr)
*/
void QOAuthHttpServerReplyHandler_new3()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QOAuthHttpServerReplyHandler * obj = new QOAuthHttpServerReplyHandler( *PQHOSTADDRESS(1), PQUINT16(2), OPQOBJECT(3,nullptr) );
  Qt5xHb::returnNewObject( obj, false );
#endif
}

HB_FUNC_STATIC( QOAUTHHTTPSERVERREPLYHANDLER_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||HB_ISNIL(1)) )
  {
    QOAuthHttpServerReplyHandler_new1();
  }
  else if( ISBETWEEN(1,2) && HB_ISNUM(1) && (ISQOBJECT(2)||HB_ISNIL(2)) )
  {
    QOAuthHttpServerReplyHandler_new2();
  }
  else if( ISBETWEEN(2,3) && ISQHOSTADDRESS(1) && HB_ISNUM(2) && (ISQOBJECT(3)||HB_ISNIL(3)) )
  {
    QOAuthHttpServerReplyHandler_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
~QOAuthHttpServerReplyHandler()
*/
HB_FUNC_STATIC( QOAUTHHTTPSERVERREPLYHANDLER_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QOAuthHttpServerReplyHandler * obj = (QOAuthHttpServerReplyHandler *) Qt5xHb::itemGetPtrStackSelfItem();

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
QString callback() const override
*/
HB_FUNC_STATIC( QOAUTHHTTPSERVERREPLYHANDLER_CALLBACK )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QOAuthHttpServerReplyHandler * obj = (QOAuthHttpServerReplyHandler *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->callback() );
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

/*
QString callbackPath() const
*/
HB_FUNC_STATIC( QOAUTHHTTPSERVERREPLYHANDLER_CALLBACKPATH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QOAuthHttpServerReplyHandler * obj = (QOAuthHttpServerReplyHandler *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->callbackPath() );
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

/*
void setCallbackPath(const QString &path)
*/
HB_FUNC_STATIC( QOAUTHHTTPSERVERREPLYHANDLER_SETCALLBACKPATH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QOAuthHttpServerReplyHandler * obj = (QOAuthHttpServerReplyHandler *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      obj->setCallbackPath( PQSTRING(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QString callbackText() const
*/
HB_FUNC_STATIC( QOAUTHHTTPSERVERREPLYHANDLER_CALLBACKTEXT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QOAuthHttpServerReplyHandler * obj = (QOAuthHttpServerReplyHandler *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->callbackText() );
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

/*
void setCallbackText(const QString &text)
*/
HB_FUNC_STATIC( QOAUTHHTTPSERVERREPLYHANDLER_SETCALLBACKTEXT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QOAuthHttpServerReplyHandler * obj = (QOAuthHttpServerReplyHandler *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      obj->setCallbackText( PQSTRING(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
quint16 port() const
*/
HB_FUNC_STATIC( QOAUTHHTTPSERVERREPLYHANDLER_PORT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QOAuthHttpServerReplyHandler * obj = (QOAuthHttpServerReplyHandler *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQUINT16( obj->port() );
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

/*
bool listen(const QHostAddress &address = QHostAddress::Any, quint16 port = 0)
*/
HB_FUNC_STATIC( QOAUTHHTTPSERVERREPLYHANDLER_LISTEN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QOAuthHttpServerReplyHandler * obj = (QOAuthHttpServerReplyHandler *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,2) && (ISQHOSTADDRESS(1)||HB_ISNIL(1)) && (ISNUM(2)||HB_ISNIL(2)) )
    {
#endif
      RBOOL( obj->listen( HB_ISNIL(1)? QHostAddress::Any : *(QHostAddress *) Qt5xHb::itemGetPtr(1), OPQUINT16(2,0) ) );
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

/*
void close()
*/
HB_FUNC_STATIC( QOAUTHHTTPSERVERREPLYHANDLER_CLOSE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QOAuthHttpServerReplyHandler * obj = (QOAuthHttpServerReplyHandler *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->close();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
bool isListening() const
*/
HB_FUNC_STATIC( QOAUTHHTTPSERVERREPLYHANDLER_ISLISTENING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QOAuthHttpServerReplyHandler * obj = (QOAuthHttpServerReplyHandler *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isListening() );
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
