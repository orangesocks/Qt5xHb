$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINT
REQUEST QPOINTF
#endif

CLASS QEnterEvent INHERIT QEvent

   METHOD new
   METHOD delete
   METHOD pos
   METHOD globalPos
   METHOD x
   METHOD y
   METHOD globalX
   METHOD globalY
   METHOD localPos
   METHOD windowPos
   METHOD screenPos

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QEnterEvent(const QPointF &localPos, const QPointF &windowPos, const QPointF &screenPos)
$constructor=|new|const QPointF &,const QPointF &,const QPointF &

$deleteMethod

$prototype=QPoint pos() const
$method=|QPoint|pos|

$prototype=QPoint globalPos() const
$method=|QPoint|globalPos|

$prototype=int x() const
$method=|int|x|

$prototype=int y() const
$method=|int|y|

$prototype=int globalX() const
$method=|int|globalX|

$prototype=int globalY() const
$method=|int|globalY|

$prototype=const QPointF &localPos() const
$method=|const QPointF &|localPos|

$prototype=const QPointF &windowPos() const
$method=|const QPointF &|windowPos|

$prototype=const QPointF &screenPos() const
$method=|const QPointF &|screenPos|

#pragma ENDDUMP
