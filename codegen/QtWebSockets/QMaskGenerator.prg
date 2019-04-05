%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWebSockets

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,3,0

$deleteMethod=5,3,0

$prototype=virtual bool seed() = 0
$virtualMethod=5,3,0|bool|seed|

$prototype=virtual quint32 nextMask() = 0
$virtualMethod=5,3,0|quint32|nextMask|

#pragma ENDDUMP
