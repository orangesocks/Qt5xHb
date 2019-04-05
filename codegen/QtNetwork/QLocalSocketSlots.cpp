%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtNetwork

$header

$includes

$beginSlotsClass
$slot=|connected()
$slot=|disconnected()
$slot=|error( QLocalSocket::LocalSocketError socketError )
$slot=|stateChanged( QLocalSocket::LocalSocketState socketState )
$endSlotsClass
