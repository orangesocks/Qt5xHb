%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QEvent

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QScrollEvent(const QPointF &contentPos, const QPointF &overshoot, ScrollState scrollState)
$constructor=|new|const QPointF &,const QPointF &,QScrollEvent::ScrollState

$deleteMethod

$prototype=QPointF contentPos() const
$method=|QPointF|contentPos|

$prototype=QPointF overshootDistance() const
$method=|QPointF|overshootDistance|

$prototype=ScrollState scrollState() const
$method=|QScrollEvent::ScrollState|scrollState|

#pragma ENDDUMP
