/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QICON
REQUEST QMENU
REQUEST QRECT
#endif

CLASS QSystemTrayIcon INHERIT QObject

   METHOD new
   METHOD delete
   METHOD contextMenu
   METHOD geometry
   METHOD icon
   METHOD isVisible
   METHOD setContextMenu
   METHOD setIcon
   METHOD setToolTip
   METHOD showMessage
   METHOD toolTip
   METHOD hide
   METHOD setVisible
   METHOD show
   METHOD isSystemTrayAvailable
   METHOD supportsMessages

   METHOD onActivated
   METHOD onMessageClicked

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QSystemTrayIcon
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWidgets/QSystemTrayIcon>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtWidgets/QSystemTrayIcon>
#endif

#include <QtWidgets/QMenu>

/*
QSystemTrayIcon( QObject * parent = 0 )
*/
void QSystemTrayIcon_new1()
{
  QSystemTrayIcon * obj = new QSystemTrayIcon( OPQOBJECT(1,0) );
  Qt5xHb::returnNewObject( obj, false );
}

/*
QSystemTrayIcon( const QIcon & icon, QObject * parent = 0 )
*/
void QSystemTrayIcon_new2()
{
  QSystemTrayIcon * obj = new QSystemTrayIcon( HB_ISOBJECT(1)? *(QIcon *) Qt5xHb::itemGetPtr(1) : QIcon(hb_parc(1)), OPQOBJECT(2,0) );
  Qt5xHb::returnNewObject( obj, false );
}

HB_FUNC_STATIC( QSYSTEMTRAYICON_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||HB_ISNIL(1)) )
  {
    QSystemTrayIcon_new1();
  }
  else if( ISBETWEEN(1,2) && (ISQICON(1)||HB_ISCHAR(1)) && (ISQOBJECT(2)||HB_ISNIL(2)) )
  {
    QSystemTrayIcon_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSYSTEMTRAYICON_DELETE )
{
  QSystemTrayIcon * obj = (QSystemTrayIcon *) Qt5xHb::itemGetPtrStackSelfItem();

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
QMenu * contextMenu() const
*/
HB_FUNC_STATIC( QSYSTEMTRAYICON_CONTEXTMENU )
{
  QSystemTrayIcon * obj = (QSystemTrayIcon *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QMenu * ptr = obj->contextMenu();
      Qt5xHb::createReturnQWidgetClass( ptr, "QMENU" );
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
QRect geometry() const
*/
HB_FUNC_STATIC( QSYSTEMTRAYICON_GEOMETRY )
{
  QSystemTrayIcon * obj = (QSystemTrayIcon *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QRect * ptr = new QRect( obj->geometry() );
      Qt5xHb::createReturnClass( ptr, "QRECT", true );
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
QIcon icon() const
*/
HB_FUNC_STATIC( QSYSTEMTRAYICON_ICON )
{
  QSystemTrayIcon * obj = (QSystemTrayIcon *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QIcon * ptr = new QIcon( obj->icon() );
      Qt5xHb::createReturnClass( ptr, "QICON", true );
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
bool isVisible() const
*/
HB_FUNC_STATIC( QSYSTEMTRAYICON_ISVISIBLE )
{
  QSystemTrayIcon * obj = (QSystemTrayIcon *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isVisible() );
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
void setContextMenu( QMenu * menu )
*/
HB_FUNC_STATIC( QSYSTEMTRAYICON_SETCONTEXTMENU )
{
  QSystemTrayIcon * obj = (QSystemTrayIcon *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQMENU(1) )
    {
#endif
      obj->setContextMenu( PQMENU(1) );
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
void setIcon( const QIcon & icon )
*/
HB_FUNC_STATIC( QSYSTEMTRAYICON_SETICON )
{
  QSystemTrayIcon * obj = (QSystemTrayIcon *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && (ISQICON(1)||HB_ISCHAR(1)) )
    {
#endif
      obj->setIcon( HB_ISOBJECT(1)? *(QIcon *) Qt5xHb::itemGetPtr(1) : QIcon(hb_parc(1)) );
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
void setToolTip( const QString & tip )
*/
HB_FUNC_STATIC( QSYSTEMTRAYICON_SETTOOLTIP )
{
  QSystemTrayIcon * obj = (QSystemTrayIcon *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      obj->setToolTip( PQSTRING(1) );
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
void showMessage( const QString & title, const QString & message, QSystemTrayIcon::MessageIcon icon = QSystemTrayIcon::Information, int millisecondsTimeoutHint = 10000 )
*/
HB_FUNC_STATIC( QSYSTEMTRAYICON_SHOWMESSAGE )
{
  QSystemTrayIcon * obj = (QSystemTrayIcon *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(2,4) && HB_ISCHAR(1) && HB_ISCHAR(2) && (HB_ISNUM(3)||HB_ISNIL(3)) && (HB_ISNUM(4)||HB_ISNIL(4)) )
    {
#endif
      obj->showMessage( PQSTRING(1), PQSTRING(2), HB_ISNIL(3)? (QSystemTrayIcon::MessageIcon) QSystemTrayIcon::Information : (QSystemTrayIcon::MessageIcon) hb_parni(3), OPINT(4,10000) );
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
QString toolTip() const
*/
HB_FUNC_STATIC( QSYSTEMTRAYICON_TOOLTIP )
{
  QSystemTrayIcon * obj = (QSystemTrayIcon *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->toolTip() );
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
void hide()
*/
HB_FUNC_STATIC( QSYSTEMTRAYICON_HIDE )
{
  QSystemTrayIcon * obj = (QSystemTrayIcon *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->hide();
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
void setVisible( bool visible )
*/
HB_FUNC_STATIC( QSYSTEMTRAYICON_SETVISIBLE )
{
  QSystemTrayIcon * obj = (QSystemTrayIcon *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISLOG(1) )
    {
#endif
      obj->setVisible( PBOOL(1) );
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
void show()
*/
HB_FUNC_STATIC( QSYSTEMTRAYICON_SHOW )
{
  QSystemTrayIcon * obj = (QSystemTrayIcon *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->show();
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
static bool isSystemTrayAvailable()
*/
HB_FUNC_STATIC( QSYSTEMTRAYICON_ISSYSTEMTRAYAVAILABLE )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    RBOOL( QSystemTrayIcon::isSystemTrayAvailable() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static bool supportsMessages()
*/
HB_FUNC_STATIC( QSYSTEMTRAYICON_SUPPORTSMESSAGES )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    RBOOL( QSystemTrayIcon::supportsMessages() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

void QSystemTrayIconSlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QSYSTEMTRAYICON_ONACTIVATED )
{
  QSystemTrayIconSlots_connect_signal( "activated(QSystemTrayIcon::ActivationReason)", "activated(QSystemTrayIcon::ActivationReason)" );
}

HB_FUNC_STATIC( QSYSTEMTRAYICON_ONMESSAGECLICKED )
{
  QSystemTrayIconSlots_connect_signal( "messageClicked()", "messageClicked()" );
}

#pragma ENDDUMP
