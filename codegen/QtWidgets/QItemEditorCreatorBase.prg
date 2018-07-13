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

$deleteMethod

$prototype=virtual QWidget *createWidget(QWidget *parent) const = 0
$virtualMethod=|QWidget *|createWidget|QWidget *

$prototype=virtual QByteArray valuePropertyName() const = 0
$virtualMethod=|QByteArray|valuePropertyName|

$extraMethods

#pragma ENDDUMP
