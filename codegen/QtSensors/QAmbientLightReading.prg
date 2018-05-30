%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QSensorReading

   METHOD delete
   METHOD lightLevel
   METHOD setLightLevel

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,1,0

$deleteMethod=5,1,0

$prototype=LightLevel lightLevel() const
$method=5,1,0|QAmbientLightReading::LightLevel|lightLevel|

$prototype=void setLightLevel(LightLevel lightLevel)
$method=5,1,0|void|setLightLevel|QAmbientLightReading::LightLevel

#pragma ENDDUMP
