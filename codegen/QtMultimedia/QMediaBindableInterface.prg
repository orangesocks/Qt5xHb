%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=virtual ~QMediaBindableInterface()
$deleteMethod

$prototype=virtual QMediaObject * mediaObject() const = 0
$virtualMethod=|QMediaObject *|mediaObject|

$prototype=virtual bool setMediaObject(QMediaObject *object) = 0 (protected)

$extraMethods

#pragma ENDDUMP
