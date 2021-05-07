/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBAR3DSERIES
REQUEST QBARDATAITEM
#endif

CLASS QBarDataProxy INHERIT QAbstractDataProxy

   METHOD new
   METHOD delete
   METHOD rowCount
   METHOD rowLabels
   METHOD setRowLabels
   METHOD columnLabels
   METHOD setColumnLabels
   METHOD series
   METHOD itemAt
   METHOD resetArray
   METHOD setRow
   METHOD setRows
   METHOD setItem
   METHOD addRow
   METHOD addRows
   METHOD insertRow
   METHOD insertRows
   METHOD removeRows

   METHOD onArrayReset
   METHOD onColumnLabelsChanged
   METHOD onItemChanged
   METHOD onRowCountChanged
   METHOD onRowLabelsChanged
   METHOD onRowsAdded
   METHOD onRowsChanged
   METHOD onRowsInserted
   METHOD onRowsRemoved
   METHOD onSeriesChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QBarDataProxy
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtDataVisualization/QBarDataProxy>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtDataVisualization/QBarDataProxy>
#endif

#include <QtDataVisualization/QBar3DSeries>

using namespace QtDataVisualization;

/*
QBarDataProxy( QObject * parent = nullptr )
*/
HB_FUNC_STATIC( QBARDATAPROXY_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||HB_ISNIL(1)) )
  {
    QBarDataProxy * obj = new QBarDataProxy( OPQOBJECT(1,nullptr) );
    Qt5xHb::returnNewObject( obj, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
virtual ~QBarDataProxy()
*/
HB_FUNC_STATIC( QBARDATAPROXY_DELETE )
{
  QBarDataProxy * obj = (QBarDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

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
int rowCount() const
*/
HB_FUNC_STATIC( QBARDATAPROXY_ROWCOUNT )
{
  QBarDataProxy * obj = (QBarDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->rowCount() );
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
QStringList rowLabels() const
*/
HB_FUNC_STATIC( QBARDATAPROXY_ROWLABELS )
{
  QBarDataProxy * obj = (QBarDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRINGLIST( obj->rowLabels() );
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
void setRowLabels( const QStringList & labels )
*/
HB_FUNC_STATIC( QBARDATAPROXY_SETROWLABELS )
{
  QBarDataProxy * obj = (QBarDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISARRAY(1) )
    {
#endif
      obj->setRowLabels( PQSTRINGLIST(1) );
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
QStringList columnLabels() const
*/
HB_FUNC_STATIC( QBARDATAPROXY_COLUMNLABELS )
{
  QBarDataProxy * obj = (QBarDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRINGLIST( obj->columnLabels() );
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
void setColumnLabels( const QStringList & labels )
*/
HB_FUNC_STATIC( QBARDATAPROXY_SETCOLUMNLABELS )
{
  QBarDataProxy * obj = (QBarDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISARRAY(1) )
    {
#endif
      obj->setColumnLabels( PQSTRINGLIST(1) );
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
QBar3DSeries * series() const
*/
HB_FUNC_STATIC( QBARDATAPROXY_SERIES )
{
  QBarDataProxy * obj = (QBarDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QBar3DSeries * ptr = obj->series();
      Qt5xHb::createReturnQObjectClass( ptr, "QBAR3DSERIES" );
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
const QBarDataItem * itemAt( int rowIndex, int columnIndex ) const
*/
void QBarDataProxy_itemAt1()
{
  QBarDataProxy * obj = (QBarDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    const QBarDataItem * ptr = obj->itemAt( PINT(1), PINT(2) );
    Qt5xHb::createReturnClass( ptr, "QBARDATAITEM", false );
  }
}

/*
const QBarDataItem * itemAt( const QPoint & position ) const
*/
void QBarDataProxy_itemAt2()
{
  QBarDataProxy * obj = (QBarDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    const QBarDataItem * ptr = obj->itemAt( *PQPOINT(1) );
    Qt5xHb::createReturnClass( ptr, "QBARDATAITEM", false );
  }
}

HB_FUNC_STATIC( QBARDATAPROXY_ITEMAT )
{
  if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2) )
  {
    QBarDataProxy_itemAt1();
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QBarDataProxy_itemAt2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QBARDATAPROXY_RESETARRAY )
{
}

HB_FUNC_STATIC( QBARDATAPROXY_SETROW )
{
}

HB_FUNC_STATIC( QBARDATAPROXY_SETROWS )
{
}

/*
void setItem( int rowIndex, int columnIndex, const QBarDataItem & item )
*/
void QBarDataProxy_setItem1()
{
  QBarDataProxy * obj = (QBarDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setItem( PINT(1), PINT(2), *PQBARDATAITEM(3) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setItem( const QPoint & position, const QBarDataItem & item )
*/
void QBarDataProxy_setItem2()
{
  QBarDataProxy * obj = (QBarDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setItem( *PQPOINT(1), *PQBARDATAITEM(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( QBARDATAPROXY_SETITEM )
{
  if( ISNUMPAR(3) && HB_ISNUM(1) && HB_ISNUM(2) && ISQBARDATAITEM(3) )
  {
    QBarDataProxy_setItem1();
  }
  else if( ISNUMPAR(2) && ISQPOINT(1) && ISQBARDATAITEM(2) )
  {
    QBarDataProxy_setItem2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QBARDATAPROXY_ADDROW )
{
}

HB_FUNC_STATIC( QBARDATAPROXY_ADDROWS )
{
}

HB_FUNC_STATIC( QBARDATAPROXY_INSERTROW )
{
}

HB_FUNC_STATIC( QBARDATAPROXY_INSERTROWS )
{
}

/*
void removeRows( int rowIndex, int removeCount, bool removeLabels = true )
*/
HB_FUNC_STATIC( QBARDATAPROXY_REMOVEROWS )
{
  QBarDataProxy * obj = (QBarDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(2,3) && HB_ISNUM(1) && HB_ISNUM(2) && (HB_ISLOG(3)||HB_ISNIL(3)) )
    {
#endif
      obj->removeRows( PINT(1), PINT(2), OPBOOL(3,true) );
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

void QBarDataProxySlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QBARDATAPROXY_ONARRAYRESET )
{
  QBarDataProxySlots_connect_signal( "arrayReset()", "arrayReset()" );
}

HB_FUNC_STATIC( QBARDATAPROXY_ONCOLUMNLABELSCHANGED )
{
  QBarDataProxySlots_connect_signal( "columnLabelsChanged()", "columnLabelsChanged()" );
}

HB_FUNC_STATIC( QBARDATAPROXY_ONITEMCHANGED )
{
  QBarDataProxySlots_connect_signal( "itemChanged(int,int)", "itemChanged(int,int)" );
}

HB_FUNC_STATIC( QBARDATAPROXY_ONROWCOUNTCHANGED )
{
  QBarDataProxySlots_connect_signal( "rowCountChanged(int)", "rowCountChanged(int)" );
}

HB_FUNC_STATIC( QBARDATAPROXY_ONROWLABELSCHANGED )
{
  QBarDataProxySlots_connect_signal( "rowLabelsChanged()", "rowLabelsChanged()" );
}

HB_FUNC_STATIC( QBARDATAPROXY_ONROWSADDED )
{
  QBarDataProxySlots_connect_signal( "rowsAdded(int,int)", "rowsAdded(int,int)" );
}

HB_FUNC_STATIC( QBARDATAPROXY_ONROWSCHANGED )
{
  QBarDataProxySlots_connect_signal( "rowsChanged(int,int)", "rowsChanged(int,int)" );
}

HB_FUNC_STATIC( QBARDATAPROXY_ONROWSINSERTED )
{
  QBarDataProxySlots_connect_signal( "rowsInserted(int,int)", "rowsInserted(int,int)" );
}

HB_FUNC_STATIC( QBARDATAPROXY_ONROWSREMOVED )
{
  QBarDataProxySlots_connect_signal( "rowsRemoved(int,int)", "rowsRemoved(int,int)" );
}

HB_FUNC_STATIC( QBARDATAPROXY_ONSERIESCHANGED )
{
  QBarDataProxySlots_connect_signal( "seriesChanged(QBar3DSeries*)", "seriesChanged(QBar3DSeries*)" );
}

#pragma ENDDUMP
