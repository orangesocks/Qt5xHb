/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QQMLCONTEXT
REQUEST QQMLENGINE
REQUEST QQMLERROR
REQUEST QQUICKITEM
REQUEST QSIZE
REQUEST QSURFACEFORMAT
REQUEST QURL
#endif

CLASS QQuickWidget INHERIT QWidget

   METHOD new
   METHOD delete
   METHOD source
   METHOD setSource
   METHOD engine
   METHOD rootContext
   METHOD rootObject
   METHOD resizeMode
   METHOD setResizeMode
   METHOD status
   METHOD errors
   METHOD sizeHint
   METHOD initialSize
   METHOD setContent
   METHOD format
   METHOD setFormat

   METHOD onStatusChanged
   METHOD onSceneGraphError

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QQuickWidget
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
#include <QtQuickWidgets/QQuickWidget>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
#include <QtQuickWidgets/QQuickWidget>
#endif
#endif

#include <QtQml/QQmlError>
#include <QtQml/QQmlEngine>
#include <QtQml/QQmlContext>
#include <QtQuick/QQuickItem>

/*
explicit QQuickWidget(QWidget *parent = 0)
*/
void QQuickWidget_new1()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QQuickWidget * obj = new QQuickWidget( OPQWIDGET(1,0) );
  Qt5xHb::returnNewObject( obj, false );
#endif
}

/*
QQuickWidget(QQmlEngine* engine, QWidget *parent)
*/
void QQuickWidget_new2()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QQuickWidget * obj = new QQuickWidget( PQQMLENGINE(1), PQWIDGET(2) );
  Qt5xHb::returnNewObject( obj, false );
#endif
}

/*
QQuickWidget(const QUrl &source, QWidget *parent = 0)
*/
void QQuickWidget_new3()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QQuickWidget * obj = new QQuickWidget( *PQURL(1), OPQWIDGET(2,0) );
  Qt5xHb::returnNewObject( obj, false );
#endif
}

/*
[1]explicit QQuickWidget(QWidget *parent = 0)
[2]QQuickWidget(QQmlEngine* engine, QWidget *parent)
[3]QQuickWidget(const QUrl &source, QWidget *parent = 0)
*/

HB_FUNC_STATIC( QQUICKWIDGET_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  if( ISBETWEEN(0,1) && ISOPTQWIDGET(1) )
  {
    QQuickWidget_new1();
  }
  else if( ISNUMPAR(2) && ISQQMLENGINE(1) && ISQWIDGET(2) )
  {
    QQuickWidget_new2();
  }
  else if( ISBETWEEN(1,2) && ISQURL(1) && ISOPTQWIDGET(2) )
  {
    QQuickWidget_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

HB_FUNC_STATIC( QQUICKWIDGET_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QQuickWidget * obj = (QQuickWidget *) Qt5xHb::itemGetPtrStackSelfItem();

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
QUrl source() const
*/
HB_FUNC_STATIC( QQUICKWIDGET_SOURCE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QQuickWidget * obj = (QQuickWidget *) Qt5xHb::itemGetPtrStackSelfItem();

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
#endif
}

/*
void setSource(const QUrl&)
*/
HB_FUNC_STATIC( QQUICKWIDGET_SETSOURCE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QQuickWidget * obj = (QQuickWidget *) Qt5xHb::itemGetPtrStackSelfItem();

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
#endif
}

/*
QQmlEngine* engine() const
*/
HB_FUNC_STATIC( QQUICKWIDGET_ENGINE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QQuickWidget * obj = (QQuickWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QQmlEngine * ptr = obj->engine();
      Qt5xHb::createReturnQObjectClass( ptr, "QQMLENGINE" );
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
QQmlContext* rootContext() const
*/
HB_FUNC_STATIC( QQUICKWIDGET_ROOTCONTEXT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QQuickWidget * obj = (QQuickWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QQmlContext * ptr = obj->rootContext();
      Qt5xHb::createReturnQObjectClass( ptr, "QQMLCONTEXT" );
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
QQuickItem *rootObject() const
*/
HB_FUNC_STATIC( QQUICKWIDGET_ROOTOBJECT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QQuickWidget * obj = (QQuickWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QQuickItem * ptr = obj->rootObject();
      Qt5xHb::createReturnQObjectClass( ptr, "QQUICKITEM" );
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
ResizeMode resizeMode() const
*/
HB_FUNC_STATIC( QQUICKWIDGET_RESIZEMODE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QQuickWidget * obj = (QQuickWidget *) Qt5xHb::itemGetPtrStackSelfItem();

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
#endif
}

/*
void setResizeMode(ResizeMode)
*/
HB_FUNC_STATIC( QQUICKWIDGET_SETRESIZEMODE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QQuickWidget * obj = (QQuickWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setResizeMode( (QQuickWidget::ResizeMode) hb_parni(1) );
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
Status status() const
*/
HB_FUNC_STATIC( QQUICKWIDGET_STATUS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QQuickWidget * obj = (QQuickWidget *) Qt5xHb::itemGetPtrStackSelfItem();

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
#endif
}

/*
QList<QQmlError> errors() const
*/
HB_FUNC_STATIC( QQUICKWIDGET_ERRORS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QQuickWidget * obj = (QQuickWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QList<QQmlError> list = obj->errors();
      PHB_DYNS pDynSym = hb_dynsymFindName( "QQMLERROR" );
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
          hb_itemPutPtr( pItem, (QQmlError *) new QQmlError( list[i] ) );
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
        hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QQMLERROR", HB_ERR_ARGS_BASEPARAMS );
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
#endif
}

/*
QSize sizeHint() const
*/
HB_FUNC_STATIC( QQUICKWIDGET_SIZEHINT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QQuickWidget * obj = (QQuickWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QSize * ptr = new QSize( obj->sizeHint() );
      Qt5xHb::createReturnClass( ptr, "QSIZE", true );
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
QSize initialSize() const
*/
HB_FUNC_STATIC( QQUICKWIDGET_INITIALSIZE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QQuickWidget * obj = (QQuickWidget *) Qt5xHb::itemGetPtrStackSelfItem();

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
#endif
}

/*
void setContent(const QUrl& url, QQmlComponent *component, QObject *item)
*/
HB_FUNC_STATIC( QQUICKWIDGET_SETCONTENT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QQuickWidget * obj = (QQuickWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(3) && ISQURL(1) && ISQQMLCOMPONENT(2) && ISQOBJECT(3) )
    {
#endif
      obj->setContent( *PQURL(1), PQQMLCOMPONENT(2), PQOBJECT(3) );
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
QSurfaceFormat format() const
*/
HB_FUNC_STATIC( QQUICKWIDGET_FORMAT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QQuickWidget * obj = (QQuickWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QSurfaceFormat * ptr = new QSurfaceFormat( obj->format() );
      Qt5xHb::createReturnClass( ptr, "QSURFACEFORMAT", true );
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
void setFormat(const QSurfaceFormat &format)
*/
HB_FUNC_STATIC( QQUICKWIDGET_SETFORMAT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QQuickWidget * obj = (QQuickWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQSURFACEFORMAT(1) )
    {
#endif
      obj->setFormat( *PQSURFACEFORMAT(1) );
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

void QQuickWidgetSlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QQUICKWIDGET_ONSTATUSCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QQuickWidgetSlots_connect_signal( "statusChanged(QQuickWidget::Status)", "statusChanged(QQuickWidget::Status)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QQUICKWIDGET_ONSCENEGRAPHERROR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QQuickWidgetSlots_connect_signal( "sceneGraphError(QQuickWindow::SceneGraphError,QString)", "sceneGraphError(QQuickWindow::SceneGraphError,QString)" );
#else
  hb_retl( false );
#endif
}

#pragma ENDDUMP
