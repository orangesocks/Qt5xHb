%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=Qt3DAnimation

$header

$includes

$beginSlotsClass
$slot=|activeAnimationGroupChanged( int index )
$slot=|positionChanged( float position )
$slot=|positionScaleChanged( float scale )
$slot=|positionOffsetChanged( float offset )
$slot=|entityChanged( Qt3DCore::QEntity * entity )
$slot=|recursiveChanged( bool recursive )
$endSlotsClass
