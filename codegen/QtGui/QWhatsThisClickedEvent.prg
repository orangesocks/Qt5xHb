%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QEvent

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QWhatsThisClickedEvent(const QString &href)
$constructor=|new|const QString &

$deleteMethod

$prototype=QString href() const
$method=|QString|href|

#pragma ENDDUMP
