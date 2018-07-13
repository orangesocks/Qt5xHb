%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QSGNode

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=QSGGeometry * geometry()
$method=|QSGGeometry *|geometry|

$prototype=void setGeometry(QSGGeometry * geometry)
$method=|void|setGeometry|QSGGeometry *

#pragma ENDDUMP
