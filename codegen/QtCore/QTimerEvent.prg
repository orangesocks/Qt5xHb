$header

#include "hbclass.ch"

CLASS QTimerEvent INHERIT QEvent

   METHOD new
   METHOD delete
   METHOD timerId

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QTimerEvent(int timerId)
$constructor=|new|int

$deleteMethod

$prototype=int timerId() const
$method=|int|timerId|

#pragma ENDDUMP
