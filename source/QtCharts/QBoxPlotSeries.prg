/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBOXSET
REQUEST QBRUSH
REQUEST QPEN
#endif

CLASS QBoxPlotSeries INHERIT QAbstractSeries

   METHOD new
   METHOD delete
   METHOD count
   METHOD boxOutlineVisible
   METHOD setBoxOutlineVisible
   METHOD boxWidth
   METHOD setBoxWidth
   METHOD brush
   METHOD setBrush
   METHOD pen
   METHOD setPen
   METHOD append
   METHOD remove
   METHOD take
   METHOD insert
   METHOD boxSets
   METHOD clear
   METHOD type

   METHOD onBoxOutlineVisibilityChanged
   METHOD onBoxsetsAdded
   METHOD onBoxsetsRemoved
   METHOD onBoxWidthChanged
   METHOD onBrushChanged
   METHOD onClicked
   METHOD onCountChanged
   METHOD onDoubleClicked
   METHOD onHovered
   METHOD onPenChanged
   METHOD onPressed
   METHOD onReleased

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QBoxPlotSeries
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QtCharts/QBoxPlotSeries>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QtCharts/QBoxPlotSeries>
#endif
#endif

using namespace QtCharts;

/*
explicit QBoxPlotSeries(QObject *parent = Q_NULLPTR)
*/
HB_FUNC_STATIC( QBOXPLOTSERIES_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QBoxPlotSeries * o = new QBoxPlotSeries ( OPQOBJECT(1,Q_NULLPTR) );
    _qt5xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
~QBoxPlotSeries()
*/
HB_FUNC_STATIC( QBOXPLOTSERIES_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBoxPlotSeries * obj = (QBoxPlotSeries *) _qt5xhb_itemGetPtrStackSelfItem();

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
int count() const
*/
HB_FUNC_STATIC( QBOXPLOTSERIES_COUNT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBoxPlotSeries * obj = (QBoxPlotSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->count () );
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
bool boxOutlineVisible()
*/
HB_FUNC_STATIC( QBOXPLOTSERIES_BOXOUTLINEVISIBLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBoxPlotSeries * obj = (QBoxPlotSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->boxOutlineVisible () );
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
void setBoxOutlineVisible(bool visible)
*/
HB_FUNC_STATIC( QBOXPLOTSERIES_SETBOXOUTLINEVISIBLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBoxPlotSeries * obj = (QBoxPlotSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setBoxOutlineVisible ( PBOOL(1) );
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
qreal boxWidth()
*/
HB_FUNC_STATIC( QBOXPLOTSERIES_BOXWIDTH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBoxPlotSeries * obj = (QBoxPlotSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->boxWidth () );
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
void setBoxWidth(qreal width)
*/
HB_FUNC_STATIC( QBOXPLOTSERIES_SETBOXWIDTH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBoxPlotSeries * obj = (QBoxPlotSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setBoxWidth ( PQREAL(1) );
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
QBrush brush() const
*/
HB_FUNC_STATIC( QBOXPLOTSERIES_BRUSH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBoxPlotSeries * obj = (QBoxPlotSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QBrush * ptr = new QBrush( obj->brush () );
      _qt5xhb_createReturnClass ( ptr, "QBRUSH", true );
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
void setBrush(const QBrush &brush)
*/
HB_FUNC_STATIC( QBOXPLOTSERIES_SETBRUSH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBoxPlotSeries * obj = (QBoxPlotSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQBRUSH(1) )
    {
#endif
      obj->setBrush ( *PQBRUSH(1) );
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
QPen pen() const
*/
HB_FUNC_STATIC( QBOXPLOTSERIES_PEN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBoxPlotSeries * obj = (QBoxPlotSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QPen * ptr = new QPen( obj->pen () );
      _qt5xhb_createReturnClass ( ptr, "QPEN", true );
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
void setPen(const QPen &pen)
*/
HB_FUNC_STATIC( QBOXPLOTSERIES_SETPEN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBoxPlotSeries * obj = (QBoxPlotSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQPEN(1) )
    {
#endif
      obj->setPen ( *PQPEN(1) );
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
bool append(QBoxSet *box)
*/
void QBoxPlotSeries_append1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBoxPlotSeries * obj = (QBoxPlotSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      RBOOL( obj->append ( PQBOXSET(1) ) );
  }
#endif
}

/*
bool append(QList<QBoxSet *> boxes)
*/
void QBoxPlotSeries_append2 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBoxPlotSeries * obj = (QBoxPlotSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
       QList<QBoxSet *> par1;
PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aList1);
for (i1=0;i1<nLen1;i1++)
{
  par1 << (QBoxSet *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
}
      RBOOL( obj->append ( par1 ) );
  }
#endif
}

//[1]bool append(QBoxSet *box)
//[2]bool append(QList<QBoxSet *> boxes)

HB_FUNC_STATIC( QBOXPLOTSERIES_APPEND )
{
  if( ISNUMPAR(1) && ISQBOXSET(1) )
  {
    QBoxPlotSeries_append1();
  }
  else if( ISNUMPAR(1) && ISARRAY(1) )
  {
    QBoxPlotSeries_append2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool remove(QBoxSet *box)
*/
HB_FUNC_STATIC( QBOXPLOTSERIES_REMOVE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBoxPlotSeries * obj = (QBoxPlotSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQBOXSET(1) )
    {
#endif
      RBOOL( obj->remove ( PQBOXSET(1) ) );
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
bool take(QBoxSet *box)
*/
HB_FUNC_STATIC( QBOXPLOTSERIES_TAKE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBoxPlotSeries * obj = (QBoxPlotSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQBOXSET(1) )
    {
#endif
      RBOOL( obj->take ( PQBOXSET(1) ) );
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
bool insert(int index, QBoxSet *box)
*/
HB_FUNC_STATIC( QBOXPLOTSERIES_INSERT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBoxPlotSeries * obj = (QBoxPlotSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISNUM(1) && ISQBOXSET(2) )
    {
#endif
      RBOOL( obj->insert ( PINT(1), PQBOXSET(2) ) );
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
QList<QBoxSet *> boxSets() const
*/
HB_FUNC_STATIC( QBOXPLOTSERIES_BOXSETS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBoxPlotSeries * obj = (QBoxPlotSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QList<QBoxSet *> list = obj->boxSets ();
      PHB_DYNS pDynSym = hb_dynsymFindName( "QBOXSET" );
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
          hb_itemPutPtr( pItem, (QBoxSet *) list[i] );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
        else
        {
          hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QBOXSET", HB_ERR_ARGS_BASEPARAMS );
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
void clear()
*/
HB_FUNC_STATIC( QBOXPLOTSERIES_CLEAR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBoxPlotSeries * obj = (QBoxPlotSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->clear ();
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
QAbstractSeries::SeriesType type() const
*/
HB_FUNC_STATIC( QBOXPLOTSERIES_TYPE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBoxPlotSeries * obj = (QBoxPlotSeries *) _qt5xhb_itemGetPtrStackSelfItem();

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

void QBoxPlotSeriesSlots_connect_signal ( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QBOXPLOTSERIES_ONBOXOUTLINEVISIBILITYCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBoxPlotSeriesSlots_connect_signal( "boxOutlineVisibilityChanged()", "boxOutlineVisibilityChanged()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QBOXPLOTSERIES_ONBOXSETSADDED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBoxPlotSeriesSlots_connect_signal( "boxsetsAdded(QList<QBoxSet*>)", "boxsetsAdded(QList<QBoxSet*>)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QBOXPLOTSERIES_ONBOXSETSREMOVED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBoxPlotSeriesSlots_connect_signal( "boxsetsRemoved(QList<QBoxSet*>)", "boxsetsRemoved(QList<QBoxSet*>)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QBOXPLOTSERIES_ONBOXWIDTHCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBoxPlotSeriesSlots_connect_signal( "boxWidthChanged()", "boxWidthChanged()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QBOXPLOTSERIES_ONBRUSHCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBoxPlotSeriesSlots_connect_signal( "brushChanged()", "brushChanged()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QBOXPLOTSERIES_ONCLICKED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBoxPlotSeriesSlots_connect_signal( "clicked(QBoxSet*)", "clicked(QBoxSet*)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QBOXPLOTSERIES_ONCOUNTCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBoxPlotSeriesSlots_connect_signal( "countChanged()", "countChanged()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QBOXPLOTSERIES_ONDOUBLECLICKED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBoxPlotSeriesSlots_connect_signal( "doubleClicked(QBoxSet*)", "doubleClicked(QBoxSet*)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QBOXPLOTSERIES_ONHOVERED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBoxPlotSeriesSlots_connect_signal( "hovered(bool,QBoxSet*)", "hovered(bool,QBoxSet*)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QBOXPLOTSERIES_ONPENCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBoxPlotSeriesSlots_connect_signal( "penChanged()", "penChanged()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QBOXPLOTSERIES_ONPRESSED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBoxPlotSeriesSlots_connect_signal( "pressed(QBoxSet*)", "pressed(QBoxSet*)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QBOXPLOTSERIES_ONRELEASED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBoxPlotSeriesSlots_connect_signal( "released(QBoxSet*)", "released(QBoxSet*)" );
#else
  hb_retl( false );
#endif
}

#pragma ENDDUMP
