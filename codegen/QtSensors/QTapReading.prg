%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QSensorReading

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,1,0

$deleteMethod=5,1,0

$prototype=TapDirection tapDirection() const
$method=5,1,0|QTapReading::TapDirection|tapDirection|

$prototype=void setTapDirection(TapDirection tapDirection)
$method=5,1,0|void|setTapDirection|QTapReading::TapDirection

$prototype=bool isDoubleTap() const
$method=5,1,0|bool|isDoubleTap|

$prototype=void setDoubleTap(bool doubleTap)
$method=5,1,0|void|setDoubleTap|bool

#pragma ENDDUMP
