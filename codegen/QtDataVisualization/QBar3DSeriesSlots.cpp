%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$slot=|dataProxyChanged( QBarDataProxy * proxy )
$slot=|meshAngleChanged( float angle )
$slot=|selectedBarChanged( const QPoint & position )
$endSlotsClass

$signalMethod=|dataProxyChanged(QBarDataProxy*)
$signalMethod=|meshAngleChanged(float)
$signalMethod=|selectedBarChanged(QPoint)