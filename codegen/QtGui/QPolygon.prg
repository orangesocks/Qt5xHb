%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QPolygon()
$internalConstructor=|new1|

$prototype=QPolygon(int size)
$internalConstructor=|new2|int

$prototype=QPolygon(const QPolygon &a)
$internalConstructor=|new3|const QPolygon &

$prototype=QPolygon(const QVector<QPoint> &v)
$internalConstructor=|new4|const QVector<QPoint> &

$prototype=QPolygon(const QRect &r, bool closed=false)
$internalConstructor=|new5|const QRect &,bool=false

$prototype=QPolygon(int nPoints, const int *points)
%% TODO: implementar
%% $internalConstructor=|new6|int,const int *

//[1]QPolygon()
//[2]QPolygon(int size)
//[3]QPolygon(const QPolygon &a)
//[4]QPolygon(const QVector<QPoint> &v)
//[5]QPolygon(const QRect &r, bool closed=false)
//[6]QPolygon(int nPoints, const int *points)

%% TODO: resolver conflito entre [3] e [5] quando for 1 par�metro do tipo O

HB_FUNC_STATIC( QPOLYGON_NEW )
{
  if( ISNUMPAR(0) )
  {
    QPolygon_new1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QPolygon_new2();
  }
  else if( ISNUMPAR(1) && ISQPOLYGON(1) )
  {
    QPolygon_new3();
  }
  else if( ISNUMPAR(1) && ISARRAY(1) )
  {
    QPolygon_new4();
  }
  else if( ISBETWEEN(1,2) && ISQRECT(1) && ISOPTLOG(2) )
  {
    QPolygon_new5();
  }
%%  else if( ISNUMPAR(2) && ISNUM(1) && ISARRAY(2) )
%%  {
%%    QPolygon_new6();
%%  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=void swap(QPolygon &other)
$method=|void|swap|QPolygon &

$prototype=void translate(int dx, int dy)
$internalMethod=|void|translate,translate1|int,int

$prototype=void translate(const QPoint &offset)
$internalMethod=|void|translate,translate2|const QPoint &

//[1]void translate(int dx, int dy)
//[2]void translate(const QPoint &offset)

HB_FUNC_STATIC( QPOLYGON_TRANSLATE )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QPolygon_translate1();
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QPolygon_translate2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QPolygon translated(int dx, int dy) const
$internalMethod=|QPolygon|translated,translated1|int,int

$prototype=QPolygon translated(const QPoint &offset) const
$internalMethod=|QPolygon|translated,translated2|const QPoint &

//[1]QPolygon translated(int dx, int dy) const
//[2]QPolygon translated(const QPoint &offset) const

HB_FUNC_STATIC( QPOLYGON_TRANSLATED )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QPolygon_translated1();
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QPolygon_translated2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QRect boundingRect() const
$method=|QRect|boundingRect|

$prototype=void point(int i, int *x, int *y) const
$internalMethod=|void|point,point1|int,int *,int *

$prototype=QPoint point(int i) const
$internalMethod=|QPoint|point,point2|int

//[1]void point(int i, int *x, int *y) const
//[2]QPoint point(int i) const

HB_FUNC_STATIC( QPOLYGON_POINT )
{
  if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
  {
    QPolygon_point1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QPolygon_point2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void setPoint(int index, int x, int y)
$internalMethod=|void|setPoint,setPoint1|int,int,int

$prototype=void setPoint(int index, const QPoint &p)
$internalMethod=|void|setPoint,setPoint2|int,const QPoint &

//[1]void setPoint(int index, int x, int y)
//[2]void setPoint(int index, const QPoint &p)

HB_FUNC_STATIC( QPOLYGON_SETPOINT )
{
  if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
  {
    QPolygon_setPoint1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISQPOINT(2) )
  {
    QPolygon_setPoint2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void putPoints(int index, int nPoints, const QPolygon & from, int fromIndex=0)
$method=|void|putPoints|int,int,const QPolygon &,int=0

$prototype=bool containsPoint(const QPoint &pt, Qt::FillRule fillRule) const
$method=|bool|containsPoint|const QPoint &,Qt::FillRule

$prototype=QPolygon united(const QPolygon &r) const
$method=|QPolygon|united|const QPolygon &

$prototype=QPolygon intersected(const QPolygon &r) const
$method=|QPolygon|intersected|const QPolygon &

$prototype=QPolygon subtracted(const QPolygon &r) const
$method=|QPolygon|subtracted|const QPolygon &

$extraMethods

#pragma ENDDUMP
