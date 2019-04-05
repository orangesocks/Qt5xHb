%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtMultimedia

$header

$includes

$beginSlotsClass
$slot=|captureModeChanged( QCamera::CaptureModes mode )
$slot=|error( int error, const QString & errorString )
$slot=|stateChanged( QCamera::State state )
$slot=|statusChanged( QCamera::Status status )
$endSlotsClass
