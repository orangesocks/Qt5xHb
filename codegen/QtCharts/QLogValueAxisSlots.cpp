%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCharts

$header

$includes=5,7,0

$beginSlotsClass
$slot=5,7,0|baseChanged( qreal base )
$slot=5,7,0|labelFormatChanged( const QString & format )
$slot=5,7,0|maxChanged( qreal max )
$slot=5,7,0|minChanged( qreal min )
$slot=5,9,0|minorTickCountChanged( int minorTickCount )
$slot=5,7,0|rangeChanged( qreal min, qreal max )
$slot=5,9,0|tickCountChanged( int tickCount )
$endSlotsClass
