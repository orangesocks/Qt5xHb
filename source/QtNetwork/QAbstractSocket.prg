/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QHOSTADDRESS
REQUEST QNETWORKPROXY
REQUEST QVARIANT
#endif

CLASS QAbstractSocket INHERIT QIODevice

   METHOD new
   METHOD delete
   METHOD resume
   METHOD pauseMode
   METHOD setPauseMode
   METHOD bind
   METHOD connectToHost
   METHOD disconnectFromHost
   METHOD isValid
   METHOD bytesAvailable
   METHOD bytesToWrite
   METHOD canReadLine
   METHOD localPort
   METHOD localAddress
   METHOD peerPort
   METHOD peerAddress
   METHOD peerName
   METHOD readBufferSize
   METHOD setReadBufferSize
   METHOD abort
   METHOD socketDescriptor
   METHOD setSocketDescriptor
   METHOD setSocketOption
   METHOD socketOption
   METHOD socketType
   METHOD state
   METHOD error
   METHOD close
   METHOD isSequential
   METHOD atEnd
   METHOD flush
   METHOD waitForConnected
   METHOD waitForReadyRead
   METHOD waitForBytesWritten
   METHOD waitForDisconnected
   METHOD setProxy
   METHOD proxy

   METHOD onConnected
   METHOD onDisconnected
   METHOD onError
   METHOD onHostFound
   METHOD onProxyAuthenticationRequired
   METHOD onStateChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAbstractSocket
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtNetwork/QAbstractSocket>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtNetwork/QAbstractSocket>
#endif

#include <QtNetwork/QHostAddress>
#include <QtNetwork/QNetworkProxy>

/*
QAbstractSocket ( SocketType socketType, QObject * parent )
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_NEW )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISQOBJECT(2) )
  {
    QAbstractSocket * o = new QAbstractSocket ( (QAbstractSocket::SocketType) hb_parni(1), PQOBJECT(2) );
    _qt5xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QAbstractSocket(SocketType socketType, QAbstractSocketPrivate &dd, QObject *parent = Q_NULLPTR) [protected]
*/

/*
virtual ~QAbstractSocket()
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_DELETE )
{
  QAbstractSocket * obj = (QAbstractSocket *) _qt5xhb_itemGetPtrStackSelfItem();

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
virtual void resume()
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_RESUME )
{
  QAbstractSocket * obj = (QAbstractSocket *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->resume ();
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
PauseModes pauseMode() const
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_PAUSEMODE )
{
  QAbstractSocket * obj = (QAbstractSocket *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->pauseMode () );
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
void setPauseMode(PauseModes pauseMode)
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_SETPAUSEMODE )
{
  QAbstractSocket * obj = (QAbstractSocket *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setPauseMode ( (QAbstractSocket::PauseModes) hb_parni(1) );
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
bool bind(const QHostAddress &address, quint16 port = 0, BindMode mode = DefaultForPlatform)
*/
void QAbstractSocket_bind1 ()
{
  QAbstractSocket * obj = (QAbstractSocket *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->bind ( *PQHOSTADDRESS(1), OPQUINT16(2,0), ISNIL(3)? (QAbstractSocket::BindMode) QAbstractSocket::DefaultForPlatform : (QAbstractSocket::BindMode) hb_parni(3) ) );
  }
}

/*
bool bind(quint16 port = 0, BindMode mode = DefaultForPlatform)
*/
void QAbstractSocket_bind2 ()
{
  QAbstractSocket * obj = (QAbstractSocket *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->bind ( OPQUINT16(1,0), ISNIL(2)? (QAbstractSocket::BindMode) QAbstractSocket::DefaultForPlatform : (QAbstractSocket::BindMode) hb_parni(2) ) );
  }
}

//[1]bool bind(const QHostAddress &address, quint16 port = 0, BindMode mode = DefaultForPlatform)
//[2]bool bind(quint16 port = 0, BindMode mode = DefaultForPlatform)

HB_FUNC_STATIC( QABSTRACTSOCKET_BIND )
{
  if( ISBETWEEN(1,3) && ISQHOSTADDRESS(1) && (ISNUM(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    QAbstractSocket_bind1();
  }
  else if( ISBETWEEN(0,2) && (ISNUM(1)||ISNIL(1)) && (ISNUM(2)||ISNIL(2)) )
  {
    QAbstractSocket_bind2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
virtual void connectToHost(const QString &hostName, quint16 port, OpenMode mode = ReadWrite, NetworkLayerProtocol protocol = AnyIPProtocol)
*/
void QAbstractSocket_connectToHost1 ()
{
  QAbstractSocket * obj = (QAbstractSocket *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->connectToHost ( PQSTRING(1), PQUINT16(2), ISNIL(3)? (QIODevice::OpenMode) QIODevice::ReadWrite : (QIODevice::OpenMode) hb_parni(3), ISNIL(4)? (QAbstractSocket::NetworkLayerProtocol) QAbstractSocket::AnyIPProtocol : (QAbstractSocket::NetworkLayerProtocol) hb_parni(4) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void connectToHost(const QHostAddress &address, quint16 port, OpenMode mode = ReadWrite)
*/
void QAbstractSocket_connectToHost2 ()
{
  QAbstractSocket * obj = (QAbstractSocket *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->connectToHost ( *PQHOSTADDRESS(1), PQUINT16(2), ISNIL(3)? (QIODevice::OpenMode) QIODevice::ReadWrite : (QIODevice::OpenMode) hb_parni(3) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]virtual void connectToHost(const QString &hostName, quint16 port, OpenMode mode = ReadWrite, NetworkLayerProtocol protocol = AnyIPProtocol)
//[2]virtual void connectToHost(const QHostAddress &address, quint16 port, OpenMode mode = ReadWrite)

HB_FUNC_STATIC( QABSTRACTSOCKET_CONNECTTOHOST )
{
  if( ISBETWEEN(2,4) && ISCHAR(1) && ISNUM(2) && (ISNUM(3)||ISNIL(3)) && (ISNUM(4)||ISNIL(4)) )
  {
    QAbstractSocket_connectToHost1();
  }
  else if( ISBETWEEN(2,3) && ISQHOSTADDRESS(1) && ISNUM(2) && (ISNUM(3)||ISNIL(3)) )
  {
    QAbstractSocket_connectToHost2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
virtual void disconnectFromHost()
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_DISCONNECTFROMHOST )
{
  QAbstractSocket * obj = (QAbstractSocket *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->disconnectFromHost ();
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
bool isValid() const
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_ISVALID )
{
  QAbstractSocket * obj = (QAbstractSocket *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isValid () );
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
qint64 bytesAvailable() const Q_DECL_OVERRIDE
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_BYTESAVAILABLE )
{
  QAbstractSocket * obj = (QAbstractSocket *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQINT64( obj->bytesAvailable () );
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
qint64 bytesToWrite() const Q_DECL_OVERRIDE
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_BYTESTOWRITE )
{
  QAbstractSocket * obj = (QAbstractSocket *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQINT64( obj->bytesToWrite () );
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
bool canReadLine() const Q_DECL_OVERRIDE
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_CANREADLINE )
{
  QAbstractSocket * obj = (QAbstractSocket *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->canReadLine () );
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
quint16 localPort() const
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_LOCALPORT )
{
  QAbstractSocket * obj = (QAbstractSocket *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQUINT16( obj->localPort () );
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
QHostAddress localAddress() const
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_LOCALADDRESS )
{
  QAbstractSocket * obj = (QAbstractSocket *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QHostAddress * ptr = new QHostAddress( obj->localAddress () );
      _qt5xhb_createReturnClass ( ptr, "QHOSTADDRESS", true );
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
quint16 peerPort() const
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_PEERPORT )
{
  QAbstractSocket * obj = (QAbstractSocket *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQUINT16( obj->peerPort () );
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
QHostAddress peerAddress() const
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_PEERADDRESS )
{
  QAbstractSocket * obj = (QAbstractSocket *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QHostAddress * ptr = new QHostAddress( obj->peerAddress () );
      _qt5xhb_createReturnClass ( ptr, "QHOSTADDRESS", true );
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
QString peerName() const
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_PEERNAME )
{
  QAbstractSocket * obj = (QAbstractSocket *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->peerName () );
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
qint64 readBufferSize() const
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_READBUFFERSIZE )
{
  QAbstractSocket * obj = (QAbstractSocket *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQINT64( obj->readBufferSize () );
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
virtual void setReadBufferSize(qint64 size)
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_SETREADBUFFERSIZE )
{
  QAbstractSocket * obj = (QAbstractSocket *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setReadBufferSize ( PQINT64(1) );
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
void abort()
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_ABORT )
{
  QAbstractSocket * obj = (QAbstractSocket *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->abort ();
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
virtual qintptr socketDescriptor() const
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_SOCKETDESCRIPTOR )
{
  QAbstractSocket * obj = (QAbstractSocket *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQINTPTR( obj->socketDescriptor () );
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
virtual bool setSocketDescriptor(qintptr socketDescriptor, SocketState state = ConnectedState, OpenMode openMode = ReadWrite)
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_SETSOCKETDESCRIPTOR )
{
  QAbstractSocket * obj = (QAbstractSocket *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,3) && ISNUM(1) && ISOPTNUM(2) && ISOPTNUM(3) )
    {
#endif
      RBOOL( obj->setSocketDescriptor ( PQINTPTR(1), ISNIL(2)? (QAbstractSocket::SocketState) QAbstractSocket::ConnectedState : (QAbstractSocket::SocketState) hb_parni(2), ISNIL(3)? (QIODevice::OpenMode) QIODevice::ReadWrite : (QIODevice::OpenMode) hb_parni(3) ) );
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
virtual void setSocketOption(QAbstractSocket::SocketOption option, const QVariant &value)
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_SETSOCKETOPTION )
{
  QAbstractSocket * obj = (QAbstractSocket *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISNUM(1) && ISQVARIANT(2) )
    {
#endif
      obj->setSocketOption ( (QAbstractSocket::SocketOption) hb_parni(1), *PQVARIANT(2) );
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
virtual QVariant socketOption(QAbstractSocket::SocketOption option)
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_SOCKETOPTION )
{
  QAbstractSocket * obj = (QAbstractSocket *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      QVariant * ptr = new QVariant( obj->socketOption ( (QAbstractSocket::SocketOption) hb_parni(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
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
SocketType socketType() const
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_SOCKETTYPE )
{
  QAbstractSocket * obj = (QAbstractSocket *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->socketType () );
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
SocketState state() const
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_STATE )
{
  QAbstractSocket * obj = (QAbstractSocket *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->state () );
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
SocketError error() const
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_ERROR )
{
  QAbstractSocket * obj = (QAbstractSocket *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->error () );
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
void close() Q_DECL_OVERRIDE
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_CLOSE )
{
  QAbstractSocket * obj = (QAbstractSocket *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->close ();
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
bool isSequential() const Q_DECL_OVERRIDE
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_ISSEQUENTIAL )
{
  QAbstractSocket * obj = (QAbstractSocket *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isSequential () );
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
bool atEnd() const Q_DECL_OVERRIDE
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_ATEND )
{
  QAbstractSocket * obj = (QAbstractSocket *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->atEnd () );
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
bool flush()
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_FLUSH )
{
  QAbstractSocket * obj = (QAbstractSocket *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->flush () );
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
virtual bool waitForConnected(int msecs = 30000)
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_WAITFORCONNECTED )
{
  QAbstractSocket * obj = (QAbstractSocket *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && ISOPTNUM(1) )
    {
#endif
      RBOOL( obj->waitForConnected ( OPINT(1,30000) ) );
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
bool waitForReadyRead(int msecs = 30000) Q_DECL_OVERRIDE
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_WAITFORREADYREAD )
{
  QAbstractSocket * obj = (QAbstractSocket *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && ISOPTNUM(1) )
    {
#endif
      RBOOL( obj->waitForReadyRead ( OPINT(1,30000) ) );
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
bool waitForBytesWritten(int msecs = 30000) Q_DECL_OVERRIDE
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_WAITFORBYTESWRITTEN )
{
  QAbstractSocket * obj = (QAbstractSocket *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && ISOPTNUM(1) )
    {
#endif
      RBOOL( obj->waitForBytesWritten ( OPINT(1,30000) ) );
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
virtual bool waitForDisconnected(int msecs = 30000)
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_WAITFORDISCONNECTED )
{
  QAbstractSocket * obj = (QAbstractSocket *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && ISOPTNUM(1) )
    {
#endif
      RBOOL( obj->waitForDisconnected ( OPINT(1,30000) ) );
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
void setProxy(const QNetworkProxy &networkProxy)
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_SETPROXY )
{
  QAbstractSocket * obj = (QAbstractSocket *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQNETWORKPROXY(1) )
    {
#endif
      obj->setProxy ( *PQNETWORKPROXY(1) );
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
QNetworkProxy proxy() const
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_PROXY )
{
  QAbstractSocket * obj = (QAbstractSocket *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QNetworkProxy * ptr = new QNetworkProxy( obj->proxy () );
      _qt5xhb_createReturnClass ( ptr, "QNETWORKPROXY", true );
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
qint64 readData(char *data, qint64 maxlen) Q_DECL_OVERRIDE [protected]
*/

/*
qint64 readLineData(char *data, qint64 maxlen) Q_DECL_OVERRIDE [protected]
*/

/*
qint64 writeData(const char *data, qint64 len) Q_DECL_OVERRIDE [protected]
*/

/*
void setSocketState(SocketState state) [protected]
*/

/*
void setSocketError(SocketError socketError) [protected]
*/

/*
void setLocalPort(quint16 port) [protected]
*/

/*
void setLocalAddress(const QHostAddress &address) [protected]
*/

/*
void setPeerPort(quint16 port) [protected]
*/

/*
void setPeerAddress(const QHostAddress &address) [protected]
*/

/*
void setPeerName(const QString &name) [protected]
*/

void QAbstractSocketSlots_connect_signal ( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QABSTRACTSOCKET_ONCONNECTED )
{
  QAbstractSocketSlots_connect_signal( "connected()", "connected()" );
}

HB_FUNC_STATIC( QABSTRACTSOCKET_ONDISCONNECTED )
{
  QAbstractSocketSlots_connect_signal( "disconnected()", "disconnected()" );
}

HB_FUNC_STATIC( QABSTRACTSOCKET_ONERROR )
{
  QAbstractSocketSlots_connect_signal( "error(QAbstractSocket::SocketError)", "error(QAbstractSocket::SocketError)" );
}

HB_FUNC_STATIC( QABSTRACTSOCKET_ONHOSTFOUND )
{
  QAbstractSocketSlots_connect_signal( "hostFound()", "hostFound()" );
}

HB_FUNC_STATIC( QABSTRACTSOCKET_ONPROXYAUTHENTICATIONREQUIRED )
{
  QAbstractSocketSlots_connect_signal( "proxyAuthenticationRequired(QNetworkProxy,QAuthenticator*)", "proxyAuthenticationRequired(QNetworkProxy,QAuthenticator*)" );
}

HB_FUNC_STATIC( QABSTRACTSOCKET_ONSTATECHANGED )
{
  QAbstractSocketSlots_connect_signal( "stateChanged(QAbstractSocket::SocketState)", "stateChanged(QAbstractSocket::SocketState)" );
}

#pragma ENDDUMP
