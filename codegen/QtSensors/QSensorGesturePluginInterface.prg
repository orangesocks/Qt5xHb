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

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,1,0

$deleteMethod=5,1,0

$prototype=virtual QList <QSensorGestureRecognizer *> createRecognizers() = 0
$virtualMethod=5,1,0|QList<QSensorGestureRecognizer *>|createRecognizers|

$prototype=virtual QStringList supportedIds() const = 0
$virtualMethod=5,1,0|QStringList|supportedIds|

$prototype=virtual QString name() const = 0
$virtualMethod=|QString|name|

$extraMethods

#pragma ENDDUMP
