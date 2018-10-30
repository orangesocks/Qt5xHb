/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QABSTRACTAXIS
REQUEST QCHART
#endif

CLASS QAbstractSeries INHERIT QObject

   METHOD delete
   METHOD type
   METHOD name
   METHOD setName
   METHOD isVisible
   METHOD setVisible
   METHOD opacity
   METHOD setOpacity
   METHOD useOpenGL
   METHOD setUseOpenGL
   METHOD chart
   METHOD attachAxis
   METHOD detachAxis
   METHOD attachedAxes
   METHOD show
   METHOD hide

   METHOD onNameChanged
   METHOD onOpacityChanged
   METHOD onUseOpenGLChanged
   METHOD onVisibleChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAbstractSeries
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QAbstractSeries>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QAbstractSeries>
#endif
#endif

#include <QChart>

using namespace QtCharts;

/*
QAbstractSeries(QAbstractSeriesPrivate &d, QObject *parent = nullptr) [protected]
*/

/*
~QAbstractSeries()
*/
HB_FUNC_STATIC( QABSTRACTSERIES_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractSeries * obj = (QAbstractSeries *) _qt5xhb_itemGetPtrStackSelfItem();

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
virtual SeriesType type() const = 0
*/
HB_FUNC_STATIC( QABSTRACTSERIES_TYPE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractSeries * obj = (QAbstractSeries *) _qt5xhb_itemGetPtrStackSelfItem();

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
#endif
}

/*
QString name() const
*/
HB_FUNC_STATIC( QABSTRACTSERIES_NAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractSeries * obj = (QAbstractSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->name () );
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
void setName(const QString &name)
*/
HB_FUNC_STATIC( QABSTRACTSERIES_SETNAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractSeries * obj = (QAbstractSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      obj->setName ( PQSTRING(1) );
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
bool isVisible() const
*/
HB_FUNC_STATIC( QABSTRACTSERIES_ISVISIBLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractSeries * obj = (QAbstractSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isVisible () );
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
void setVisible(bool visible = true)
*/
HB_FUNC_STATIC( QABSTRACTSERIES_SETVISIBLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractSeries * obj = (QAbstractSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && ISOPTLOG(1) )
    {
#endif
      obj->setVisible ( OPBOOL(1,true) );
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
qreal opacity() const
*/
HB_FUNC_STATIC( QABSTRACTSERIES_OPACITY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractSeries * obj = (QAbstractSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->opacity () );
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
void setOpacity(qreal opacity)
*/
HB_FUNC_STATIC( QABSTRACTSERIES_SETOPACITY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractSeries * obj = (QAbstractSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setOpacity ( PQREAL(1) );
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
bool useOpenGL() const
*/
HB_FUNC_STATIC( QABSTRACTSERIES_USEOPENGL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractSeries * obj = (QAbstractSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->useOpenGL () );
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
void setUseOpenGL(bool enable = true)
*/
HB_FUNC_STATIC( QABSTRACTSERIES_SETUSEOPENGL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractSeries * obj = (QAbstractSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && ISOPTLOG(1) )
    {
#endif
      obj->setUseOpenGL ( OPBOOL(1,true) );
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
QChart *chart() const
*/
HB_FUNC_STATIC( QABSTRACTSERIES_CHART )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractSeries * obj = (QAbstractSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QChart * ptr = obj->chart ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QCHART" );
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
bool attachAxis(QAbstractAxis *axis)
*/
HB_FUNC_STATIC( QABSTRACTSERIES_ATTACHAXIS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractSeries * obj = (QAbstractSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQABSTRACTAXIS(1) )
    {
#endif
      RBOOL( obj->attachAxis ( PQABSTRACTAXIS(1) ) );
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
bool detachAxis(QAbstractAxis *axis)
*/
HB_FUNC_STATIC( QABSTRACTSERIES_DETACHAXIS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractSeries * obj = (QAbstractSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQABSTRACTAXIS(1) )
    {
#endif
      RBOOL( obj->detachAxis ( PQABSTRACTAXIS(1) ) );
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
QList<QAbstractAxis*> attachedAxes()
*/
HB_FUNC_STATIC( QABSTRACTSERIES_ATTACHEDAXES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractSeries * obj = (QAbstractSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QList<QAbstractAxis *> list = obj->attachedAxes ();
      PHB_DYNS pDynSym = hb_dynsymFindName( "QABSTRACTAXIS" );
      PHB_ITEM pArray = hb_itemArrayNew(0);
      int i;
      for(i=0;i<list.count();i++)
      {
        if( pDynSym )
        {
          hb_vmPushDynSym( pDynSym );
          hb_vmPushNil();
          hb_vmDo( 0 );
          PHB_ITEM pObject = hb_itemNew( NULL );
          hb_itemCopy( pObject, hb_stackReturnItem() );
          PHB_ITEM pItem = hb_itemNew( NULL );
          hb_itemPutPtr( pItem, (QAbstractAxis *) list[i] );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
        else
        {
          hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QABSTRACTAXIS", HB_ERR_ARGS_BASEPARAMS );
        }
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
void show()
*/
HB_FUNC_STATIC( QABSTRACTSERIES_SHOW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractSeries * obj = (QAbstractSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->show ();
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
void hide()
*/
HB_FUNC_STATIC( QABSTRACTSERIES_HIDE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractSeries * obj = (QAbstractSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->hide ();
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

void QAbstractSeriesSlots_connect_signal ( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QABSTRACTSERIES_ONNAMECHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractSeriesSlots_connect_signal( "nameChanged()", "nameChanged()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QABSTRACTSERIES_ONOPACITYCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractSeriesSlots_connect_signal( "opacityChanged()", "opacityChanged()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QABSTRACTSERIES_ONUSEOPENGLCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractSeriesSlots_connect_signal( "useOpenGLChanged()", "useOpenGLChanged()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QABSTRACTSERIES_ONVISIBLECHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractSeriesSlots_connect_signal( "visibleChanged()", "visibleChanged()" );
#else
  hb_retl( false );
#endif
}

#pragma ENDDUMP
