%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes=5,2,0

$beginSlotsClass
$slot=5,2,0|connected()
$slot=5,2,0|disconnected()
$slot=5,2,0|error( QBluetoothSocket::SocketError error )
$slot=5,2,0|stateChanged( QBluetoothSocket::SocketState state )
$endSlotsClass
