%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QGraphicsView

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,7,0

using namespace QtCharts;

$prototype=explicit QChartView(QWidget *parent = Q_NULLPTR)
$internalConstructor=5,7,0|new1|QWidget *=Q_NULLPTR

$prototype=explicit QChartView(QChart *chart, QWidget *parent = Q_NULLPTR)
$internalConstructor=5,7,0|new2|QChart *,QWidget *=Q_NULLPTR

//[1]explicit QChartView(QWidget *parent = Q_NULLPTR)
//[2]explicit QChartView(QChart *chart, QWidget *parent = Q_NULLPTR)

HB_FUNC_STATIC( QCHARTVIEW_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    QChartView_new1();
  }
  else if( ISBETWEEN(1,2) && ISQCHART(1) && (ISQWIDGET(2)||ISNIL(2)) )
  {
    QChartView_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=~QChartView()
$deleteMethod=5,7,0

$prototype=void setRubberBand(const RubberBands &rubberBands)
%% TODO: const QChartView::RubberBands &
%% $method=5,7,0|void|setRubberBand|const QChartView::RubberBands &

$prototype=RubberBands rubberBand() const
$method=5,7,0|QChartView::RubberBands|rubberBand|

$prototype=QChart *chart() const
$method=5,7,0|QChart *|chart|

$prototype=void setChart(QChart *chart)
$method=5,7,0|void|setChart|QChart *

$prototype=void resizeEvent(QResizeEvent *event) (protected)

$prototype=void mousePressEvent(QMouseEvent *event) (protected)

$prototype=void mouseMoveEvent(QMouseEvent *event) (protected)

$prototype=void mouseReleaseEvent(QMouseEvent *event) (protected)

#pragma ENDDUMP
