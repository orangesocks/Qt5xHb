/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
#endif

CLASS QDBusMessage

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD createReply
   METHOD createErrorReply
   METHOD service
   METHOD path
   METHOD interface
   METHOD member
   METHOD errorName
   METHOD errorMessage
   METHOD type
   METHOD signature
   METHOD isReplyRequired
   METHOD setDelayedReply
   METHOD isDelayedReply
   METHOD setAutoStartService
   METHOD autoStartService
   METHOD setArguments
   METHOD arguments
   METHOD createSignal
   METHOD createMethodCall
   METHOD createError
   METHOD isInteractiveAuthorizationAllowed
   METHOD setInteractiveAuthorizationAllowed

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDBusMessage
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtDBus/QDBusMessage>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtDBus/QDBusMessage>
#endif

/*
QDBusMessage()
*/
void QDBusMessage_new1 ()
{
  QDBusMessage * o = new QDBusMessage ();
  _qt5xhb_returnNewObject( o, true );
}

/*
QDBusMessage(const QDBusMessage &other)
*/
void QDBusMessage_new2 ()
{
  QDBusMessage * o = new QDBusMessage ( *PQDBUSMESSAGE(1) );
  _qt5xhb_returnNewObject( o, true );
}

//[1]QDBusMessage()
//[2]QDBusMessage(const QDBusMessage &other)

HB_FUNC_STATIC( QDBUSMESSAGE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QDBusMessage_new1();
  }
  else if( ISNUMPAR(1) && ISQDBUSMESSAGE(1) )
  {
    QDBusMessage_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QDBUSMESSAGE_DELETE )
{
  QDBusMessage * obj = (QDBusMessage *) _qt5xhb_itemGetPtrStackSelfItem();

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
QDBusMessage createReply(const QList<QVariant> &arguments = QList<QVariant>()) const
*/

/*
QDBusMessage createReply(const QVariant &argument) const
*/
void QDBusMessage_createReply2 ()
{
  QDBusMessage * obj = (QDBusMessage *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      QDBusMessage * ptr = new QDBusMessage( obj->createReply ( *PQVARIANT(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QDBUSMESSAGE", true );
  }
}

//[1]QDBusMessage createReply(const QList<QVariant> &arguments = QList<QVariant>()) const
//[2]QDBusMessage createReply(const QVariant &argument) const

HB_FUNC_STATIC( QDBUSMESSAGE_CREATEREPLY )
{
  if( ISNUMPAR(1) && ISQVARIANT(1) )
  {
    QDBusMessage_createReply2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QDBusMessage createErrorReply(const QString name, const QString &msg) const
*/
void QDBusMessage_createErrorReply1 ()
{
  QDBusMessage * obj = (QDBusMessage *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      QDBusMessage * ptr = new QDBusMessage( obj->createErrorReply ( PQSTRING(1), PQSTRING(2) ) );
      _qt5xhb_createReturnClass ( ptr, "QDBUSMESSAGE", true );
  }
}

/*
QDBusMessage createErrorReply(const QDBusError &err) const
*/
void QDBusMessage_createErrorReply2 ()
{
  QDBusMessage * obj = (QDBusMessage *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      QDBusMessage * ptr = new QDBusMessage( obj->createErrorReply ( *PQDBUSERROR(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QDBUSMESSAGE", true );
  }
}

/*
QDBusMessage createErrorReply(QDBusError::ErrorType type, const QString &msg) const
*/
void QDBusMessage_createErrorReply3 ()
{
  QDBusMessage * obj = (QDBusMessage *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      QDBusMessage * ptr = new QDBusMessage( obj->createErrorReply ( (QDBusError::ErrorType) hb_parni(1), PQSTRING(2) ) );
      _qt5xhb_createReturnClass ( ptr, "QDBUSMESSAGE", true );
  }
}

//[1]QDBusMessage createErrorReply(const QString name, const QString &msg) const
//[2]QDBusMessage createErrorReply(const QDBusError &err) const
//[3]QDBusMessage createErrorReply(QDBusError::ErrorType type, const QString &msg) const

HB_FUNC_STATIC( QDBUSMESSAGE_CREATEERRORREPLY )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    QDBusMessage_createErrorReply1();
  }
  else if( ISNUMPAR(1) && ISQDBUSERROR(1) )
  {
    QDBusMessage_createErrorReply2();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISCHAR(2) )
  {
    QDBusMessage_createErrorReply3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QString service() const
*/
HB_FUNC_STATIC( QDBUSMESSAGE_SERVICE )
{
  QDBusMessage * obj = (QDBusMessage *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->service () );
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
QString path() const
*/
HB_FUNC_STATIC( QDBUSMESSAGE_PATH )
{
  QDBusMessage * obj = (QDBusMessage *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->path () );
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
QString interface() const
*/
HB_FUNC_STATIC( QDBUSMESSAGE_INTERFACE )
{
  QDBusMessage * obj = (QDBusMessage *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->interface () );
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
QString member() const
*/
HB_FUNC_STATIC( QDBUSMESSAGE_MEMBER )
{
  QDBusMessage * obj = (QDBusMessage *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->member () );
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
QString errorName() const
*/
HB_FUNC_STATIC( QDBUSMESSAGE_ERRORNAME )
{
  QDBusMessage * obj = (QDBusMessage *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->errorName () );
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
QString errorMessage() const
*/
HB_FUNC_STATIC( QDBUSMESSAGE_ERRORMESSAGE )
{
  QDBusMessage * obj = (QDBusMessage *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->errorMessage () );
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
MessageType type() const
*/
HB_FUNC_STATIC( QDBUSMESSAGE_TYPE )
{
  QDBusMessage * obj = (QDBusMessage *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->type () );
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
QString signature() const
*/
HB_FUNC_STATIC( QDBUSMESSAGE_SIGNATURE )
{
  QDBusMessage * obj = (QDBusMessage *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->signature () );
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
bool isReplyRequired() const
*/
HB_FUNC_STATIC( QDBUSMESSAGE_ISREPLYREQUIRED )
{
  QDBusMessage * obj = (QDBusMessage *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isReplyRequired () );
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
void setDelayedReply(bool enable) const
*/
HB_FUNC_STATIC( QDBUSMESSAGE_SETDELAYEDREPLY )
{
  QDBusMessage * obj = (QDBusMessage *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setDelayedReply ( PBOOL(1) );
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
bool isDelayedReply() const
*/
HB_FUNC_STATIC( QDBUSMESSAGE_ISDELAYEDREPLY )
{
  QDBusMessage * obj = (QDBusMessage *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isDelayedReply () );
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
void setAutoStartService(bool enable)
*/
HB_FUNC_STATIC( QDBUSMESSAGE_SETAUTOSTARTSERVICE )
{
  QDBusMessage * obj = (QDBusMessage *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setAutoStartService ( PBOOL(1) );
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
bool autoStartService() const
*/
HB_FUNC_STATIC( QDBUSMESSAGE_AUTOSTARTSERVICE )
{
  QDBusMessage * obj = (QDBusMessage *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->autoStartService () );
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
void setArguments(const QList<QVariant> &arguments)
*/
HB_FUNC_STATIC( QDBUSMESSAGE_SETARGUMENTS )
{
  QDBusMessage * obj = (QDBusMessage *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISARRAY(1) )
    {
#endif
      QList<QVariant> par1;
PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aList1);
for (i1=0;i1<nLen1;i1++)
{
  par1 << *(QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
}
      obj->setArguments ( par1 );
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
QList<QVariant> arguments() const
*/
HB_FUNC_STATIC( QDBUSMESSAGE_ARGUMENTS )
{
  QDBusMessage * obj = (QDBusMessage *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      _qt5xhb_convert_qvariantlist_to_array( obj->arguments () );
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
static QDBusMessage createSignal(const QString &path, const QString &interface,const QString &name)
*/
HB_FUNC_STATIC( QDBUSMESSAGE_CREATESIGNAL )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(3) && ISCHAR(1) && ISCHAR(2) && ISCHAR(3) )
  {
#endif
      QDBusMessage * ptr = new QDBusMessage( QDBusMessage::createSignal ( PQSTRING(1), PQSTRING(2), PQSTRING(3) ) );
      _qt5xhb_createReturnClass ( ptr, "QDBUSMESSAGE", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static QDBusMessage createMethodCall(const QString &destination, const QString &path,const QString &interface, const QString &method)
*/
HB_FUNC_STATIC( QDBUSMESSAGE_CREATEMETHODCALL )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(4) && ISCHAR(1) && ISCHAR(2) && ISCHAR(3) && ISCHAR(4) )
  {
#endif
      QDBusMessage * ptr = new QDBusMessage( QDBusMessage::createMethodCall ( PQSTRING(1), PQSTRING(2), PQSTRING(3), PQSTRING(4) ) );
      _qt5xhb_createReturnClass ( ptr, "QDBUSMESSAGE", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static QDBusMessage createError(const QString &name, const QString &msg)
*/
void QDBusMessage_createError1 ()
{

      QDBusMessage * ptr = new QDBusMessage( QDBusMessage::createError ( PQSTRING(1), PQSTRING(2) ) );
      _qt5xhb_createReturnClass ( ptr, "QDBUSMESSAGE", true );
}

/*
static inline QDBusMessage createError(const QDBusError &err)
*/
void QDBusMessage_createError2 ()
{

      QDBusMessage * ptr = new QDBusMessage( QDBusMessage::createError ( *PQDBUSERROR(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QDBUSMESSAGE", true );
}

/*
static inline QDBusMessage createError(QDBusError::ErrorType type, const QString &msg)
*/
void QDBusMessage_createError3 ()
{

      QDBusMessage * ptr = new QDBusMessage( QDBusMessage::createError ( (QDBusError::ErrorType) hb_parni(1), PQSTRING(2) ) );
      _qt5xhb_createReturnClass ( ptr, "QDBUSMESSAGE", true );
}

//[1]static QDBusMessage createError(const QString &name, const QString &msg)
//[2]static inline QDBusMessage createError(const QDBusError &err)
//[3]static inline QDBusMessage createError(QDBusError::ErrorType type, const QString &msg)

HB_FUNC_STATIC( QDBUSMESSAGE_CREATEERROR )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    QDBusMessage_createError1();
  }
  else if( ISNUMPAR(1) && ISQDBUSERROR(1) )
  {
    QDBusMessage_createError2();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISCHAR(2) )
  {
    QDBusMessage_createError3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool QDBusMessage::isInteractiveAuthorizationAllowed() const
*/
HB_FUNC_STATIC( QDBUSMESSAGE_ISINTERACTIVEAUTHORIZATIONALLOWED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,12,0))
  QDBusMessage * obj = (QDBusMessage *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isInteractiveAuthorizationAllowed () );
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
void QDBusMessage::setInteractiveAuthorizationAllowed(bool enable)
*/
HB_FUNC_STATIC( QDBUSMESSAGE_SETINTERACTIVEAUTHORIZATIONALLOWED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,12,0))
  QDBusMessage * obj = (QDBusMessage *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setInteractiveAuthorizationAllowed ( PBOOL(1) );
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

HB_FUNC_STATIC( QDBUSMESSAGE_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QDBUSMESSAGE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QDBUSMESSAGE_NEWFROM );
}

HB_FUNC_STATIC( QDBUSMESSAGE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QDBUSMESSAGE_NEWFROM );
}

HB_FUNC_STATIC( QDBUSMESSAGE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QDBUSMESSAGE_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP
