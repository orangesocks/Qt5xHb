/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QAbstractOAuthReplyHandler INHERIT QObject

   METHOD delete
   METHOD callback
   METHOD networkReplyFinished

   METHOD onCallbackDataReceived
   METHOD onReplyDataReceived

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAbstractOAuthReplyHandler
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
#include <QAbstractOAuthReplyHandler>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
#include <QAbstractOAuthReplyHandler>
#endif
#endif

/*
explicit QAbstractOAuthReplyHandler(QObject *parent = nullptr) (abstract)
*/

/*
QAbstractOAuthReplyHandler(QObjectPrivate &d, QObject *parent = nullptr) (protected)
*/

/*
virtual ~QAbstractOAuthReplyHandler()
*/
HB_FUNC_STATIC( QABSTRACTOAUTHREPLYHANDLER_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QAbstractOAuthReplyHandler * obj = (QAbstractOAuthReplyHandler *) _qt5xhb_itemGetPtrStackSelfItem();

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
#endif
}

/*
virtual QString callback() const = 0
*/
HB_FUNC_STATIC( QABSTRACTOAUTHREPLYHANDLER_CALLBACK )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QAbstractOAuthReplyHandler * obj = (QAbstractOAuthReplyHandler *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->callback () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
virtual void networkReplyFinished(QNetworkReply *reply) = 0 (slot)
*/
HB_FUNC_STATIC( QABSTRACTOAUTHREPLYHANDLER_NETWORKREPLYFINISHED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QAbstractOAuthReplyHandler * obj = (QAbstractOAuthReplyHandler *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQNETWORKREPLY(1) )
    {
      obj->networkReplyFinished ( PQNETWORKREPLY(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

void QAbstractOAuthReplyHandlerSlots_connect_signal ( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QABSTRACTOAUTHREPLYHANDLER_ONCALLBACKDATARECEIVED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QAbstractOAuthReplyHandlerSlots_connect_signal( "callbackDataReceived(QByteArray)", "callbackDataReceived(QByteArray)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QABSTRACTOAUTHREPLYHANDLER_ONREPLYDATARECEIVED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QAbstractOAuthReplyHandlerSlots_connect_signal( "replyDataReceived(QByteArray)", "replyDataReceived(QByteArray)" );
#else
  hb_retl( false );
#endif
}

#pragma ENDDUMP
