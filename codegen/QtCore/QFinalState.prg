$header

#include "hbclass.ch"

CLASS QFinalState INHERIT QAbstractState

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QFinalState(QState * parent = 0)
*/
$constructor=|new|QState *=0

$deleteMethod

#pragma ENDDUMP
