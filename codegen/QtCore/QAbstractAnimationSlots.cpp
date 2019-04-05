%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCore

$header

$includes

$beginSlotsClass
$slot=|currentLoopChanged( int currentLoop )
$slot=|directionChanged( QAbstractAnimation::Direction newDirection )
$slot=|finished()
$slot=|stateChanged( QAbstractAnimation::State newState, QAbstractAnimation::State oldState )
$endSlotsClass
