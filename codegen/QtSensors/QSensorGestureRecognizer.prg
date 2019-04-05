%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtSensors

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,1,0

$deleteMethod=5,1,0

$prototype=virtual QString id() const = 0
$virtualMethod=5,1,0|QString|id|

$prototype=virtual bool isActive() = 0
$virtualMethod=5,1,0|bool|isActive|

$prototype=void startBackend()
$method=5,1,0|void|startBackend|

$prototype=void stopBackend()
$method=5,1,0|void|stopBackend|

$prototype=void createBackend()
$method=5,1,0|void|createBackend|

$prototype=QStringList gestureSignals() const
$method=5,1,0|QStringList|gestureSignals|

$beginSignals
$signal=5,1,0|detected(QString)
$endSignals

#pragma ENDDUMP
