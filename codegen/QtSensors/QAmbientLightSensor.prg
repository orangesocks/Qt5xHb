%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QSensor

   METHOD new
   METHOD delete
   METHOD reading

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,1,0

$prototype=QAmbientLightSensor(QObject *parent = 0)
$constructor=5,1,0|new|QObject *=0

$deleteMethod=5,1,0

$prototype=QAmbientLightReading *reading() const
$method=5,1,0|QAmbientLightReading *|reading|

#pragma ENDDUMP
