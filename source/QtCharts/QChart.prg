/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

CLASS QChart INHERIT QGraphicsWidget

   METHOD new
   METHOD delete

   METHOD addAxis
   METHOD addSeries
   METHOD animationDuration
   METHOD animationEasingCurve
   METHOD animationOptions
   METHOD axes
   METHOD axisX // DEPRECATED
   METHOD axisY // DEPRECATED
   METHOD backgroundBrush
   METHOD backgroundPen
   METHOD backgroundRoundness
   METHOD chartType
   METHOD createDefaultAxes
   METHOD isBackgroundVisible
   METHOD isDropShadowEnabled
   METHOD isPlotAreaBackgroundVisible
   METHOD isZoomed
   METHOD legend
   METHOD locale
   METHOD localizeNumbers
   METHOD mapToPosition
   METHOD mapToValue
   METHOD margins
   METHOD plotArea
   METHOD plotAreaBackgroundBrush
   METHOD plotAreaBackgroundPen
   METHOD removeAllSeries
   METHOD removeAxis
   METHOD removeSeries
   METHOD scroll
   METHOD series
   METHOD setAnimationDuration
   METHOD setAnimationEasingCurve
   METHOD setAnimationOptions
   METHOD setAxisX // DEPRECATED
   METHOD setAxisY // DEPRECATED
   METHOD setBackgroundBrush
   METHOD setBackgroundPen
   METHOD setBackgroundRoundness
   METHOD setBackgroundVisible
   METHOD setDropShadowEnabled
   METHOD setLocale
   METHOD setLocalizeNumbers
   METHOD setMargins
   METHOD setPlotAreaBackgroundBrush
   METHOD setPlotAreaBackgroundPen
   METHOD setPlotAreaBackgroundVisible
   METHOD setTheme
   METHOD setTitle
   METHOD setTitleBrush
   METHOD setTitleFont
   METHOD theme
   METHOD title
   METHOD titleBrush
   METHOD titleFont
   METHOD zoom
   METHOD zoomIn
   METHOD zoomOut
   METHOD zoomReset

   METHOD onPlotAreaChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QChart
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QChart>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QChart>
#endif
#endif

#include <QEasingCurve>
#include <QLocale>

using namespace QtCharts;

/*
explicit QChart(QGraphicsItem *parent = Q_NULLPTR, Qt::WindowFlags wFlags = Qt::WindowFlags())
*/
HB_FUNC_STATIC( QCHART_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  if( ISBETWEEN(0,2) && (ISQGRAPHICSITEM(1)||ISNIL(1)) && ISOPTNUM(2) )
  {
    QChart * o = new QChart ( ISNIL(1)? Q_NULLPTR : (QGraphicsItem *) _qt5xhb_itemGetPtr(1), ISNIL(2)? (Qt::WindowFlags) Qt::WindowFlags() : (Qt::WindowFlags) hb_parni(2) );
    _qt5xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
explicit QChart(QChart::ChartType type, QGraphicsItem *parent, Qt::WindowFlags wFlags) (protected)
*/

/*
~QChart()
*/
HB_FUNC_STATIC( QCHART_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QChart * obj = (QChart *) _qt5xhb_itemGetPtrStackSelfItem();

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
QChart::ChartTheme theme() const
*/
HB_FUNC_STATIC( QCHART_THEME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QChart * obj = (QChart *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->theme () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setTheme(QChart::ChartTheme theme)
*/
HB_FUNC_STATIC( QCHART_SETTHEME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QChart * obj = (QChart *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setTheme ( (QChart::ChartTheme) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QString title() const
*/
HB_FUNC_STATIC( QCHART_TITLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QChart * obj = (QChart *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->title () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
bool isBackgroundVisible() const
*/
HB_FUNC_STATIC( QCHART_ISBACKGROUNDVISIBLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QChart * obj = (QChart *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isBackgroundVisible () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setBackgroundVisible(bool visible = true)
*/
HB_FUNC_STATIC( QCHART_SETBACKGROUNDVISIBLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QChart * obj = (QChart *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(0,1) && ISOPTLOG(1) )
    {
      obj->setBackgroundVisible ( OPBOOL(1,true) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
bool isDropShadowEnabled() const
*/
HB_FUNC_STATIC( QCHART_ISDROPSHADOWENABLED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QChart * obj = (QChart *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isDropShadowEnabled () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setDropShadowEnabled(bool enabled = true)
*/
HB_FUNC_STATIC( QCHART_SETDROPSHADOWENABLED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QChart * obj = (QChart *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(0,1) && ISOPTLOG(1) )
    {
      obj->setDropShadowEnabled ( OPBOOL(1,true) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
qreal backgroundRoundness() const
*/
HB_FUNC_STATIC( QCHART_BACKGROUNDROUNDNESS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QChart * obj = (QChart *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQREAL( obj->backgroundRoundness () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setBackgroundRoundness(qreal diameter)
*/
HB_FUNC_STATIC( QCHART_SETBACKGROUNDROUNDNESS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QChart * obj = (QChart *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setBackgroundRoundness ( PQREAL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
AnimationOptions animationOptions() const
*/
HB_FUNC_STATIC( QCHART_ANIMATIONOPTIONS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QChart * obj = (QChart *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->animationOptions () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setAnimationOptions(AnimationOptions options)
*/
HB_FUNC_STATIC( QCHART_SETANIMATIONOPTIONS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QChart * obj = (QChart *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setAnimationOptions ( (QChart::AnimationOptions) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
int animationDuration() const
*/
HB_FUNC_STATIC( QCHART_ANIMATIONDURATION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QChart * obj = (QChart *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->animationDuration () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setAnimationDuration(int msecs)
*/
HB_FUNC_STATIC( QCHART_SETANIMATIONDURATION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QChart * obj = (QChart *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setAnimationDuration ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QEasingCurve animationEasingCurve() const
*/
HB_FUNC_STATIC( QCHART_ANIMATIONEASINGCURVE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QChart * obj = (QChart *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QEasingCurve * ptr = new QEasingCurve( obj->animationEasingCurve () );
      _qt5xhb_createReturnClass ( ptr, "QEASINGCURVE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setAnimationEasingCurve(const QEasingCurve &curve)
*/
HB_FUNC_STATIC( QCHART_SETANIMATIONEASINGCURVE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QChart * obj = (QChart *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQEASINGCURVE(1) )
    {
      obj->setAnimationEasingCurve ( *PQEASINGCURVE(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QMargins margins() const
*/
HB_FUNC_STATIC( QCHART_MARGINS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QChart * obj = (QChart *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QMargins * ptr = new QMargins( obj->margins () );
      _qt5xhb_createReturnClass ( ptr, "QMARGINS", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setMargins(const QMargins &margins)
*/
HB_FUNC_STATIC( QCHART_SETMARGINS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QChart * obj = (QChart *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQMARGINS(1) )
    {
      obj->setMargins ( *PQMARGINS(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QRectF plotArea() const
*/
HB_FUNC_STATIC( QCHART_PLOTAREA )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QChart * obj = (QChart *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QRectF * ptr = new QRectF( obj->plotArea () );
      _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
bool isPlotAreaBackgroundVisible() const
*/
HB_FUNC_STATIC( QCHART_ISPLOTAREABACKGROUNDVISIBLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QChart * obj = (QChart *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isPlotAreaBackgroundVisible () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setPlotAreaBackgroundVisible(bool visible = true)
*/
HB_FUNC_STATIC( QCHART_SETPLOTAREABACKGROUNDVISIBLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QChart * obj = (QChart *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(0,1) && ISOPTLOG(1) )
    {
      obj->setPlotAreaBackgroundVisible ( OPBOOL(1,true) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
bool localizeNumbers() const
*/
HB_FUNC_STATIC( QCHART_LOCALIZENUMBERS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QChart * obj = (QChart *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->localizeNumbers () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setLocalizeNumbers(bool localize)
*/
HB_FUNC_STATIC( QCHART_SETLOCALIZENUMBERS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QChart * obj = (QChart *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setLocalizeNumbers ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QLocale locale() const
*/
HB_FUNC_STATIC( QCHART_LOCALE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QChart * obj = (QChart *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QLocale * ptr = new QLocale( obj->locale () );
      _qt5xhb_createReturnClass ( ptr, "QLOCALE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setLocale(const QLocale &locale)
*/
HB_FUNC_STATIC( QCHART_SETLOCALE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QChart * obj = (QChart *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQLOCALE(1) )
    {
      obj->setLocale ( *PQLOCALE(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
ChartType chartType() const
*/
HB_FUNC_STATIC( QCHART_CHARTTYPE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QChart * obj = (QChart *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->chartType () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void addSeries(QAbstractSeries *series)
*/
HB_FUNC_STATIC( QCHART_ADDSERIES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QChart * obj = (QChart *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQABSTRACTSERIES(1) )
    {
      obj->addSeries ( PQABSTRACTSERIES(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void removeSeries(QAbstractSeries *series)
*/
HB_FUNC_STATIC( QCHART_REMOVESERIES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QChart * obj = (QChart *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQABSTRACTSERIES(1) )
    {
      obj->removeSeries ( PQABSTRACTSERIES(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void removeAllSeries()
*/
HB_FUNC_STATIC( QCHART_REMOVEALLSERIES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QChart * obj = (QChart *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->removeAllSeries ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QList<QAbstractSeries *> series() const
*/
HB_FUNC_STATIC( QCHART_SERIES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QChart * obj = (QChart *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QList<QAbstractSeries *> list = obj->series ();
      PHB_DYNS pDynSym = hb_dynsymFindName( "QABSTRACTSERIES" );
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
          hb_itemPutPtr( pItem, (QAbstractSeries *) list[i] );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
        else
        {
          hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QABSTRACTSERIES", HB_ERR_ARGS_BASEPARAMS );
        }
      }
      hb_itemReturnRelease(pArray);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setAxisX(QAbstractAxis *axis, QAbstractSeries *series = Q_NULLPTR) // DEPRECATED
*/
HB_FUNC_STATIC( QCHART_SETAXISX )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QChart * obj = (QChart *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(1,2) && ISQABSTRACTAXIS(1) && (ISQABSTRACTSERIES(2)||ISNIL(2)) )
    {
      obj->setAxisX ( PQABSTRACTAXIS(1), OPQABSTRACTSERIES(2,Q_NULLPTR) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void setAxisY(QAbstractAxis *axis, QAbstractSeries *series = Q_NULLPTR) // DEPRECATED
*/
HB_FUNC_STATIC( QCHART_SETAXISY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QChart * obj = (QChart *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(1,2) && ISQABSTRACTAXIS(1) && (ISQABSTRACTSERIES(2)||ISNIL(2)) )
    {
      obj->setAxisY ( PQABSTRACTAXIS(1), OPQABSTRACTSERIES(2,Q_NULLPTR) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QAbstractAxis *axisX(QAbstractSeries *series = Q_NULLPTR) const         // DEPRECATED
*/
HB_FUNC_STATIC( QCHART_AXISX )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QChart * obj = (QChart *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(0,1) && (ISQABSTRACTSERIES(1)||ISNIL(1)) )
    {
      QAbstractAxis * ptr = obj->axisX ( OPQABSTRACTSERIES(1,Q_NULLPTR) );
      _qt5xhb_createReturnQObjectClass ( ptr, "QABSTRACTAXIS" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
QAbstractAxis *axisY(QAbstractSeries *series = Q_NULLPTR) const         // DEPRECATED
*/
HB_FUNC_STATIC( QCHART_AXISY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QChart * obj = (QChart *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(0,1) && (ISQABSTRACTSERIES(1)||ISNIL(1)) )
    {
      QAbstractAxis * ptr = obj->axisY ( OPQABSTRACTSERIES(1,Q_NULLPTR) );
      _qt5xhb_createReturnQObjectClass ( ptr, "QABSTRACTAXIS" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void addAxis(QAbstractAxis *axis, Qt::Alignment alignment)
*/
HB_FUNC_STATIC( QCHART_ADDAXIS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QChart * obj = (QChart *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(2) && ISQABSTRACTAXIS(1) && ISNUM(2) )
    {
      obj->addAxis ( PQABSTRACTAXIS(1), (Qt::Alignment) hb_parni(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void removeAxis(QAbstractAxis *axis)
*/
HB_FUNC_STATIC( QCHART_REMOVEAXIS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QChart * obj = (QChart *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQABSTRACTAXIS(1) )
    {
      obj->removeAxis ( PQABSTRACTAXIS(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QList<QAbstractAxis*> axes(Qt::Orientations orientation = Qt::Horizontal|Qt::Vertical, QAbstractSeries *series = Q_NULLPTR) const
*/
HB_FUNC_STATIC( QCHART_AXES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QChart * obj = (QChart *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(0,2) && ISOPTNUM(1) && (ISQABSTRACTSERIES(2)||ISNIL(2)) )
    {
      QList<QAbstractAxis *> list = obj->axes ( ISNIL(1)? (Qt::Orientations) Qt::Horizontal | Qt::Vertical : (Qt::Orientations) hb_parni(1), OPQABSTRACTSERIES(2,Q_NULLPTR) );
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
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void createDefaultAxes()
*/
HB_FUNC_STATIC( QCHART_CREATEDEFAULTAXES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QChart * obj = (QChart *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->createDefaultAxes ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void setTitle(const QString &title)
*/
HB_FUNC_STATIC( QCHART_SETTITLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QChart * obj = (QChart *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->setTitle ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void setTitleFont(const QFont &font)
*/
HB_FUNC_STATIC( QCHART_SETTITLEFONT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QChart * obj = (QChart *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQFONT(1) )
    {
      obj->setTitleFont ( *PQFONT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QFont titleFont() const
*/
HB_FUNC_STATIC( QCHART_TITLEFONT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QChart * obj = (QChart *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QFont * ptr = new QFont( obj->titleFont () );
      _qt5xhb_createReturnClass ( ptr, "QFONT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setTitleBrush(const QBrush &brush)
*/
HB_FUNC_STATIC( QCHART_SETTITLEBRUSH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QChart * obj = (QChart *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQBRUSH(1) )
    {
      obj->setTitleBrush ( *PQBRUSH(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QBrush titleBrush() const
*/
HB_FUNC_STATIC( QCHART_TITLEBRUSH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QChart * obj = (QChart *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QBrush * ptr = new QBrush( obj->titleBrush () );
      _qt5xhb_createReturnClass ( ptr, "QBRUSH", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setBackgroundBrush(const QBrush &brush)
*/
HB_FUNC_STATIC( QCHART_SETBACKGROUNDBRUSH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QChart * obj = (QChart *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQBRUSH(1) )
    {
      obj->setBackgroundBrush ( *PQBRUSH(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QBrush backgroundBrush() const
*/
HB_FUNC_STATIC( QCHART_BACKGROUNDBRUSH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QChart * obj = (QChart *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QBrush * ptr = new QBrush( obj->backgroundBrush () );
      _qt5xhb_createReturnClass ( ptr, "QBRUSH", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setBackgroundPen(const QPen &pen)
*/
HB_FUNC_STATIC( QCHART_SETBACKGROUNDPEN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QChart * obj = (QChart *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQPEN(1) )
    {
      obj->setBackgroundPen ( *PQPEN(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QPen backgroundPen() const
*/
HB_FUNC_STATIC( QCHART_BACKGROUNDPEN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QChart * obj = (QChart *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QPen * ptr = new QPen( obj->backgroundPen () );
      _qt5xhb_createReturnClass ( ptr, "QPEN", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void zoomIn()
*/
void QChart_zoomIn1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QChart * obj = (QChart *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      obj->zoomIn ();
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void zoomIn(const QRectF &rect)
*/
void QChart_zoomIn2 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QChart * obj = (QChart *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      obj->zoomIn ( *PQRECTF(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

//[1]void zoomIn()
//[2]void zoomIn(const QRectF &rect)

HB_FUNC_STATIC( QCHART_ZOOMIN )
{
  if( ISNUMPAR(0) )
  {
    QChart_zoomIn1();
  }
  else if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    QChart_zoomIn2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void zoomOut()
*/
HB_FUNC_STATIC( QCHART_ZOOMOUT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QChart * obj = (QChart *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->zoomOut ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void zoom(qreal factor)
*/
HB_FUNC_STATIC( QCHART_ZOOM )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QChart * obj = (QChart *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->zoom ( PQREAL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void zoomReset()
*/
HB_FUNC_STATIC( QCHART_ZOOMRESET )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QChart * obj = (QChart *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->zoomReset ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
bool isZoomed()
*/
HB_FUNC_STATIC( QCHART_ISZOOMED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QChart * obj = (QChart *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isZoomed () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void scroll(qreal dx, qreal dy)
*/
HB_FUNC_STATIC( QCHART_SCROLL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QChart * obj = (QChart *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
    {
      obj->scroll ( PQREAL(1), PQREAL(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QLegend *legend() const
*/
HB_FUNC_STATIC( QCHART_LEGEND )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QChart * obj = (QChart *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QLegend * ptr = obj->legend ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QLEGEND" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setPlotAreaBackgroundBrush(const QBrush &brush)
*/
HB_FUNC_STATIC( QCHART_SETPLOTAREABACKGROUNDBRUSH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QChart * obj = (QChart *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQBRUSH(1) )
    {
      obj->setPlotAreaBackgroundBrush ( *PQBRUSH(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QBrush plotAreaBackgroundBrush() const
*/
HB_FUNC_STATIC( QCHART_PLOTAREABACKGROUNDBRUSH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QChart * obj = (QChart *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QBrush * ptr = new QBrush( obj->plotAreaBackgroundBrush () );
      _qt5xhb_createReturnClass ( ptr, "QBRUSH", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setPlotAreaBackgroundPen(const QPen &pen)
*/
HB_FUNC_STATIC( QCHART_SETPLOTAREABACKGROUNDPEN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QChart * obj = (QChart *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQPEN(1) )
    {
      obj->setPlotAreaBackgroundPen ( *PQPEN(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QPen plotAreaBackgroundPen() const
*/
HB_FUNC_STATIC( QCHART_PLOTAREABACKGROUNDPEN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QChart * obj = (QChart *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QPen * ptr = new QPen( obj->plotAreaBackgroundPen () );
      _qt5xhb_createReturnClass ( ptr, "QPEN", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
QPointF mapToValue(const QPointF &position, QAbstractSeries *series = Q_NULLPTR)
*/
HB_FUNC_STATIC( QCHART_MAPTOVALUE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QChart * obj = (QChart *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(1,2) && ISQPOINTF(1) && (ISQABSTRACTSERIES(2)||ISNIL(2)) )
    {
      QPointF * ptr = new QPointF( obj->mapToValue ( *PQPOINTF(1), OPQABSTRACTSERIES(2,Q_NULLPTR) ) );
      _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
QPointF mapToPosition(const QPointF &value, QAbstractSeries *series = Q_NULLPTR)
*/
HB_FUNC_STATIC( QCHART_MAPTOPOSITION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QChart * obj = (QChart *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(1,2) && ISQPOINTF(1) && (ISQABSTRACTSERIES(2)||ISNIL(2)) )
    {
      QPointF * ptr = new QPointF( obj->mapToPosition ( *PQPOINTF(1), OPQABSTRACTSERIES(2,Q_NULLPTR) ) );
      _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

void QChartSlots_connect_signal ( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QCHART_ONPLOTAREACHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QChartSlots_connect_signal( "plotAreaChanged(QRectF)", "plotAreaChanged(QRectF)" );
#else
  hb_retl( false );
#endif
}

#pragma ENDDUMP
