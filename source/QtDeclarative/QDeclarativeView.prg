/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QDECLARATIVECONTEXT
REQUEST QDECLARATIVEENGINE
REQUEST QDECLARATIVEERROR
REQUEST QGRAPHICSOBJECT
REQUEST QSIZE
REQUEST QURL
#endif

CLASS QDeclarativeView INHERIT QGraphicsView

   METHOD new
   METHOD delete
   METHOD engine
   METHOD errors
   METHOD initialSize
   METHOD resizeMode
   METHOD rootContext
   METHOD rootObject
   METHOD setResizeMode
   METHOD setSource
   METHOD source
   METHOD status

   METHOD onSceneResized
   METHOD onStatusChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QDeclarativeView
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtDeclarative/QDeclarativeView>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtDeclarative/QDeclarativeView>
#endif

#include <QtDeclarative/QDeclarativeError>
#include <QtDeclarative/QDeclarativeEngine>
#include <QtDeclarative/QDeclarativeContext>
#include <QtWidgets/QGraphicsObject>

/*
QDeclarativeView( QWidget * parent = 0 )
*/
void QDeclarativeView_new1()
{
  QDeclarativeView * obj = new QDeclarativeView( OPQWIDGET(1,0) );
  Qt5xHb::returnNewObject( obj, false );
}

/*
QDeclarativeView( const QUrl & source, QWidget * parent = 0 )
*/
void QDeclarativeView_new2()
{
  QDeclarativeView * obj = new QDeclarativeView( *PQURL(1), OPQWIDGET(2,0) );
  Qt5xHb::returnNewObject( obj, false );
}

HB_FUNC_STATIC( QDECLARATIVEVIEW_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||HB_ISNIL(1)) )
  {
    QDeclarativeView_new1();
  }
  else if( ISBETWEEN(1,2) && ISQURL(1) && (ISQWIDGET(2)||HB_ISNIL(2)) )
  {
    QDeclarativeView_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QDECLARATIVEVIEW_DELETE )
{
  QDeclarativeView * obj = (QDeclarativeView *) Qt5xHb::itemGetPtrStackSelfItem();

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
QDeclarativeEngine * engine() const
*/
HB_FUNC_STATIC( QDECLARATIVEVIEW_ENGINE )
{
  QDeclarativeView * obj = (QDeclarativeView *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QDeclarativeEngine * ptr = obj->engine();
      Qt5xHb::createReturnQObjectClass( ptr, "QDECLARATIVEENGINE" );
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
QList<QDeclarativeError> errors() const
*/
HB_FUNC_STATIC( QDECLARATIVEVIEW_ERRORS )
{
  QDeclarativeView * obj = (QDeclarativeView *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QList<QDeclarativeError> list = obj->errors();
      PHB_DYNS pDynSym = hb_dynsymFindName( "QDECLARATIVEERROR" );
      PHB_ITEM pArray = hb_itemArrayNew(0);
      if( pDynSym )
      {
        for( int i = 0; i < list.count(); i++ )
        {
          hb_vmPushDynSym( pDynSym );
          hb_vmPushNil();
          hb_vmDo( 0 );
          PHB_ITEM pObject = hb_itemNew( NULL );
          hb_itemCopy( pObject, hb_stackReturnItem() );
          PHB_ITEM pItem = hb_itemNew( NULL );
          hb_itemPutPtr( pItem, (QDeclarativeError *) new QDeclarativeError( list[i] ) );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          PHB_ITEM pDestroy = hb_itemNew( NULL );
          hb_itemPutL( pDestroy, true );
          hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
          hb_itemRelease( pDestroy );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
      }
      else
      {
        hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QDECLARATIVEERROR", HB_ERR_ARGS_BASEPARAMS );
      }
      hb_itemReturnRelease(pArray);
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
QSize initialSize() const
*/
HB_FUNC_STATIC( QDECLARATIVEVIEW_INITIALSIZE )
{
  QDeclarativeView * obj = (QDeclarativeView *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QSize * ptr = new QSize( obj->initialSize() );
      Qt5xHb::createReturnClass( ptr, "QSIZE", true );
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
QDeclarativeView::ResizeMode resizeMode() const
*/
HB_FUNC_STATIC( QDECLARATIVEVIEW_RESIZEMODE )
{
  QDeclarativeView * obj = (QDeclarativeView *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->resizeMode() );
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
QDeclarativeContext * rootContext() const
*/
HB_FUNC_STATIC( QDECLARATIVEVIEW_ROOTCONTEXT )
{
  QDeclarativeView * obj = (QDeclarativeView *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QDeclarativeContext * ptr = obj->rootContext();
      Qt5xHb::createReturnQObjectClass( ptr, "QDECLARATIVECONTEXT" );
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
QGraphicsObject * rootObject() const
*/
HB_FUNC_STATIC( QDECLARATIVEVIEW_ROOTOBJECT )
{
  QDeclarativeView * obj = (QDeclarativeView *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QGraphicsObject * ptr = obj->rootObject();
      Qt5xHb::createReturnQObjectClass( ptr, "QGRAPHICSOBJECT" );
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
void setResizeMode( QDeclarativeView::ResizeMode )
*/
HB_FUNC_STATIC( QDECLARATIVEVIEW_SETRESIZEMODE )
{
  QDeclarativeView * obj = (QDeclarativeView *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setResizeMode( (QDeclarativeView::ResizeMode) hb_parni(1) );
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
void setSource( const QUrl & url )
*/
HB_FUNC_STATIC( QDECLARATIVEVIEW_SETSOURCE )
{
  QDeclarativeView * obj = (QDeclarativeView *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQURL(1) )
    {
#endif
      obj->setSource( *PQURL(1) );
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
QUrl source() const
*/
HB_FUNC_STATIC( QDECLARATIVEVIEW_SOURCE )
{
  QDeclarativeView * obj = (QDeclarativeView *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QUrl * ptr = new QUrl( obj->source() );
      Qt5xHb::createReturnClass( ptr, "QURL", true );
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
QDeclarativeView::Status status() const
*/
HB_FUNC_STATIC( QDECLARATIVEVIEW_STATUS )
{
  QDeclarativeView * obj = (QDeclarativeView *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->status() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

void QDeclarativeViewSlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QDECLARATIVEVIEW_ONSCENERESIZED )
{
  QDeclarativeViewSlots_connect_signal( "sceneResized(QSize)", "sceneResized(QSize)" );
}

HB_FUNC_STATIC( QDECLARATIVEVIEW_ONSTATUSCHANGED )
{
  QDeclarativeViewSlots_connect_signal( "statusChanged(QDeclarativeView::Status)", "statusChanged(QDeclarativeView::Status)" );
}

#pragma ENDDUMP
