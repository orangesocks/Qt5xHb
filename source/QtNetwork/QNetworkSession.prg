/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QNETWORKCONFIGURATION
REQUEST QNETWORKINTERFACE
REQUEST QVARIANT
#endif

CLASS QNetworkSession INHERIT QObject

   METHOD new
   METHOD delete
   METHOD activeTime
   METHOD bytesReceived
   METHOD bytesWritten
   METHOD configuration
   METHOD error
   METHOD errorString
   METHOD interface
   METHOD isOpen
   METHOD sessionProperty
   METHOD setSessionProperty
   METHOD state
   METHOD waitForOpened
   METHOD accept
   METHOD close
   METHOD ignore
   METHOD migrate
   METHOD open
   METHOD reject
   METHOD stop
   METHOD usagePolicies

   METHOD onClosed
   METHOD onError
   METHOD onNewConfigurationActivated
   METHOD onOpened
   METHOD onPreferredConfigurationChanged
   METHOD onStateChanged
   METHOD onUsagePoliciesChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QNetworkSession
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtNetwork/QNetworkSession>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtNetwork/QNetworkSession>
#endif

/*
explicit QNetworkSession(const QNetworkConfiguration &connConfig, QObject *parent = Q_NULLPTR)
*/
HB_FUNC_STATIC( QNETWORKSESSION_NEW )
{
  if( ISBETWEEN(1,2) && ISQNETWORKCONFIGURATION(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    QNetworkSession * o = new QNetworkSession( *PQNETWORKCONFIGURATION(1), OPQOBJECT(2,0) );
    Qt5xHb::returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
virtual ~QNetworkSession()
*/
HB_FUNC_STATIC( QNETWORKSESSION_DELETE )
{
  QNetworkSession * obj = (QNetworkSession *) Qt5xHb::itemGetPtrStackSelfItem();

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
quint64 activeTime () const
*/
HB_FUNC_STATIC( QNETWORKSESSION_ACTIVETIME )
{
  QNetworkSession * obj = (QNetworkSession *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQUINT64( obj->activeTime() );
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
quint64 bytesReceived () const
*/
HB_FUNC_STATIC( QNETWORKSESSION_BYTESRECEIVED )
{
  QNetworkSession * obj = (QNetworkSession *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQUINT64( obj->bytesReceived() );
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
quint64 bytesWritten () const
*/
HB_FUNC_STATIC( QNETWORKSESSION_BYTESWRITTEN )
{
  QNetworkSession * obj = (QNetworkSession *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQUINT64( obj->bytesWritten() );
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
QNetworkConfiguration configuration () const
*/
HB_FUNC_STATIC( QNETWORKSESSION_CONFIGURATION )
{
  QNetworkSession * obj = (QNetworkSession *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QNetworkConfiguration * ptr = new QNetworkConfiguration( obj->configuration() );
      Qt5xHb::createReturnClass( ptr, "QNETWORKCONFIGURATION", true );
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
SessionError error () const
*/
HB_FUNC_STATIC( QNETWORKSESSION_ERROR )
{
  QNetworkSession * obj = (QNetworkSession *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->error() );
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
QString errorString () const
*/
HB_FUNC_STATIC( QNETWORKSESSION_ERRORSTRING )
{
  QNetworkSession * obj = (QNetworkSession *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->errorString() );
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
QNetworkInterface interface () const
*/
HB_FUNC_STATIC( QNETWORKSESSION_INTERFACE )
{
  QNetworkSession * obj = (QNetworkSession *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QNetworkInterface * ptr = new QNetworkInterface( obj->interface() );
      Qt5xHb::createReturnClass( ptr, "QNETWORKINTERFACE", true );
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
bool isOpen () const
*/
HB_FUNC_STATIC( QNETWORKSESSION_ISOPEN )
{
  QNetworkSession * obj = (QNetworkSession *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isOpen() );
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
QVariant sessionProperty ( const QString & key ) const
*/
HB_FUNC_STATIC( QNETWORKSESSION_SESSIONPROPERTY )
{
  QNetworkSession * obj = (QNetworkSession *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      QVariant * ptr = new QVariant( obj->sessionProperty( PQSTRING(1) ) );
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
void setSessionProperty ( const QString & key, const QVariant & value )
*/
HB_FUNC_STATIC( QNETWORKSESSION_SETSESSIONPROPERTY )
{
  QNetworkSession * obj = (QNetworkSession *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISCHAR(1) && ISQVARIANT(2) )
    {
#endif
      obj->setSessionProperty( PQSTRING(1), *PQVARIANT(2) );
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
State state () const
*/
HB_FUNC_STATIC( QNETWORKSESSION_STATE )
{
  QNetworkSession * obj = (QNetworkSession *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->state() );
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
bool waitForOpened ( int msecs = 30000 )
*/
HB_FUNC_STATIC( QNETWORKSESSION_WAITFOROPENED )
{
  QNetworkSession * obj = (QNetworkSession *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && ISOPTNUM(1) )
    {
#endif
      RBOOL( obj->waitForOpened( OPINT(1,30000) ) );
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
void accept () (slot)
*/
HB_FUNC_STATIC( QNETWORKSESSION_ACCEPT )
{
  QNetworkSession * obj = (QNetworkSession *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->accept();
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
void close () (slot)
*/
HB_FUNC_STATIC( QNETWORKSESSION_CLOSE )
{
  QNetworkSession * obj = (QNetworkSession *) Qt5xHb::itemGetPtrStackSelfItem();

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
}

/*
void ignore () (slot)
*/
HB_FUNC_STATIC( QNETWORKSESSION_IGNORE )
{
  QNetworkSession * obj = (QNetworkSession *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->ignore();
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
void migrate () (slot)
*/
HB_FUNC_STATIC( QNETWORKSESSION_MIGRATE )
{
  QNetworkSession * obj = (QNetworkSession *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->migrate();
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
void open () (slot)
*/
HB_FUNC_STATIC( QNETWORKSESSION_OPEN )
{
  QNetworkSession * obj = (QNetworkSession *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->open();
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
void reject () (slot)
*/
HB_FUNC_STATIC( QNETWORKSESSION_REJECT )
{
  QNetworkSession * obj = (QNetworkSession *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->reject();
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
void stop () (slot)
*/
HB_FUNC_STATIC( QNETWORKSESSION_STOP )
{
  QNetworkSession * obj = (QNetworkSession *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->stop();
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
QNetworkSession::UsagePolicies usagePolicies() const
*/
HB_FUNC_STATIC( QNETWORKSESSION_USAGEPOLICIES )
{
  QNetworkSession * obj = (QNetworkSession *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->usagePolicies() );
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
virtual void connectNotify(const QMetaMethod &signal) Q_DECL_OVERRIDE [protected]
*/

/*
virtual void disconnectNotify(const QMetaMethod &signal) Q_DECL_OVERRIDE [protected]
*/

void QNetworkSessionSlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QNETWORKSESSION_ONCLOSED )
{
  QNetworkSessionSlots_connect_signal( "closed()", "closed()" );
}

HB_FUNC_STATIC( QNETWORKSESSION_ONERROR )
{
  QNetworkSessionSlots_connect_signal( "error(QNetworkSession::SessionError)", "error(QNetworkSession::SessionError)" );
}

HB_FUNC_STATIC( QNETWORKSESSION_ONNEWCONFIGURATIONACTIVATED )
{
  QNetworkSessionSlots_connect_signal( "newConfigurationActivated()", "newConfigurationActivated()" );
}

HB_FUNC_STATIC( QNETWORKSESSION_ONOPENED )
{
  QNetworkSessionSlots_connect_signal( "opened()", "opened()" );
}

HB_FUNC_STATIC( QNETWORKSESSION_ONPREFERREDCONFIGURATIONCHANGED )
{
  QNetworkSessionSlots_connect_signal( "preferredConfigurationChanged(QNetworkConfiguration,bool)", "preferredConfigurationChanged(QNetworkConfiguration,bool)" );
}

HB_FUNC_STATIC( QNETWORKSESSION_ONSTATECHANGED )
{
  QNetworkSessionSlots_connect_signal( "stateChanged(QNetworkSession::State)", "stateChanged(QNetworkSession::State)" );
}

HB_FUNC_STATIC( QNETWORKSESSION_ONUSAGEPOLICIESCHANGED )
{
  QNetworkSessionSlots_connect_signal( "usagePoliciesChanged(QNetworkSession::UsagePolicies)", "usagePoliciesChanged(QNetworkSession::UsagePolicies)" );
}

#pragma ENDDUMP
