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
$slot=|finished()
$slot=|frameChanged( int frame )
$slot=|stateChanged( QTimeLine::State newState )
$slot=|valueChanged( qreal value )
$endSlotsClass
