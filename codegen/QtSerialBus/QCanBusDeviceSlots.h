%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtSerialBus

$header

$includes=5,8,0

$beginSlotsClass
$signal=5,8,0|errorOccurred( QCanBusDevice::CanBusError )
$signal=5,8,0|framesReceived()
$signal=5,8,0|framesWritten( qint64 framesCount )
$signal=5,8,0|stateChanged( QCanBusDevice::CanBusDeviceState state )
$endSlotsClass
