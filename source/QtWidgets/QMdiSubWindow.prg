/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMDIAREA
REQUEST QMENU
REQUEST QSIZE
REQUEST QWIDGET
#endif

CLASS QMdiSubWindow INHERIT QWidget

   METHOD new
   METHOD delete
   METHOD isShaded
   METHOD keyboardPageStep
   METHOD keyboardSingleStep
   METHOD mdiArea
   METHOD setKeyboardPageStep
   METHOD setKeyboardSingleStep
   METHOD setOption
   METHOD setSystemMenu
   METHOD setWidget
   METHOD systemMenu
   METHOD testOption
   METHOD widget
   METHOD minimumSizeHint
   METHOD sizeHint
   METHOD showShaded
   METHOD showSystemMenu

   METHOD onAboutToActivate
   METHOD onWindowStateChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QMdiSubWindow
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWidgets/QMdiSubWindow>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtWidgets/QMdiSubWindow>
#endif

#include <QtWidgets/QMdiArea>
#include <QtWidgets/QMenu>

/*
QMdiSubWindow ( QWidget * parent = 0, Qt::WindowFlags flags = 0 )
*/
HB_FUNC_STATIC( QMDISUBWINDOW_NEW )
{
  if( ISBETWEEN(0,2) && (ISQWIDGET(1)||ISNIL(1)) && ISOPTNUM(2) )
  {
    QMdiSubWindow * o = new QMdiSubWindow ( OPQWIDGET(1,0), ISNIL(2)? (Qt::WindowFlags) 0 : (Qt::WindowFlags) hb_parni(2) );
    _qt5xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QMDISUBWINDOW_DELETE )
{
  QMdiSubWindow * obj = (QMdiSubWindow *) _qt5xhb_itemGetPtrStackSelfItem();

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
bool isShaded () const
*/
HB_FUNC_STATIC( QMDISUBWINDOW_ISSHADED )
{
  QMdiSubWindow * obj = (QMdiSubWindow *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isShaded () );
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
int keyboardPageStep () const
*/
HB_FUNC_STATIC( QMDISUBWINDOW_KEYBOARDPAGESTEP )
{
  QMdiSubWindow * obj = (QMdiSubWindow *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->keyboardPageStep () );
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
int keyboardSingleStep () const
*/
HB_FUNC_STATIC( QMDISUBWINDOW_KEYBOARDSINGLESTEP )
{
  QMdiSubWindow * obj = (QMdiSubWindow *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->keyboardSingleStep () );
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
QMdiArea * mdiArea () const
*/
HB_FUNC_STATIC( QMDISUBWINDOW_MDIAREA )
{
  QMdiSubWindow * obj = (QMdiSubWindow *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QMdiArea * ptr = obj->mdiArea ();
      _qt5xhb_createReturnQWidgetClass ( ptr, "QMDIAREA" );
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
void setKeyboardPageStep ( int step )
*/
HB_FUNC_STATIC( QMDISUBWINDOW_SETKEYBOARDPAGESTEP )
{
  QMdiSubWindow * obj = (QMdiSubWindow *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setKeyboardPageStep ( PINT(1) );
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
void setKeyboardSingleStep ( int step )
*/
HB_FUNC_STATIC( QMDISUBWINDOW_SETKEYBOARDSINGLESTEP )
{
  QMdiSubWindow * obj = (QMdiSubWindow *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setKeyboardSingleStep ( PINT(1) );
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
void setOption ( SubWindowOption option, bool on = true )
*/
HB_FUNC_STATIC( QMDISUBWINDOW_SETOPTION )
{
  QMdiSubWindow * obj = (QMdiSubWindow *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTLOG(2) )
    {
#endif
      obj->setOption ( (QMdiSubWindow::SubWindowOption) hb_parni(1), OPBOOL(2,true) );
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
void setSystemMenu ( QMenu * systemMenu )
*/
HB_FUNC_STATIC( QMDISUBWINDOW_SETSYSTEMMENU )
{
  QMdiSubWindow * obj = (QMdiSubWindow *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQMENU(1) )
    {
#endif
      obj->setSystemMenu ( PQMENU(1) );
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
void setWidget ( QWidget * widget )
*/
HB_FUNC_STATIC( QMDISUBWINDOW_SETWIDGET )
{
  QMdiSubWindow * obj = (QMdiSubWindow *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQWIDGET(1) )
    {
#endif
      obj->setWidget ( PQWIDGET(1) );
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
QMenu * systemMenu () const
*/
HB_FUNC_STATIC( QMDISUBWINDOW_SYSTEMMENU )
{
  QMdiSubWindow * obj = (QMdiSubWindow *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QMenu * ptr = obj->systemMenu ();
      _qt5xhb_createReturnQWidgetClass ( ptr, "QMENU" );
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
bool testOption ( SubWindowOption option ) const
*/
HB_FUNC_STATIC( QMDISUBWINDOW_TESTOPTION )
{
  QMdiSubWindow * obj = (QMdiSubWindow *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      RBOOL( obj->testOption ( (QMdiSubWindow::SubWindowOption) hb_parni(1) ) );
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
QWidget * widget () const
*/
HB_FUNC_STATIC( QMDISUBWINDOW_WIDGET )
{
  QMdiSubWindow * obj = (QMdiSubWindow *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QWidget * ptr = obj->widget ();
      _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
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
virtual QSize minimumSizeHint () const
*/
HB_FUNC_STATIC( QMDISUBWINDOW_MINIMUMSIZEHINT )
{
  QMdiSubWindow * obj = (QMdiSubWindow *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QSize * ptr = new QSize( obj->minimumSizeHint () );
      _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
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
virtual QSize sizeHint () const
*/
HB_FUNC_STATIC( QMDISUBWINDOW_SIZEHINT )
{
  QMdiSubWindow * obj = (QMdiSubWindow *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QSize * ptr = new QSize( obj->sizeHint () );
      _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
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
void showShaded ()
*/
HB_FUNC_STATIC( QMDISUBWINDOW_SHOWSHADED )
{
  QMdiSubWindow * obj = (QMdiSubWindow *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->showShaded ();
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
void showSystemMenu ()
*/
HB_FUNC_STATIC( QMDISUBWINDOW_SHOWSYSTEMMENU )
{
  QMdiSubWindow * obj = (QMdiSubWindow *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->showSystemMenu ();
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

void QMdiSubWindowSlots_connect_signal ( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QMDISUBWINDOW_ONABOUTTOACTIVATE )
{
  QMdiSubWindowSlots_connect_signal( "aboutToActivate()", "aboutToActivate()" );
}

HB_FUNC_STATIC( QMDISUBWINDOW_ONWINDOWSTATECHANGED )
{
  QMdiSubWindowSlots_connect_signal( "windowStateChanged(Qt::WindowStates,Qt::WindowStates)", "windowStateChanged(Qt::WindowStates,Qt::WindowStates)" );
}

#pragma ENDDUMP
