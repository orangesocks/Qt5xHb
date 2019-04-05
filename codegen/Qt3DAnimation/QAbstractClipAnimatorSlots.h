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
$signal=|runningChanged( bool running )
$signal=|channelMapperChanged( Qt3DAnimation::QChannelMapper * channelMapper )
$signal=|loopCountChanged( int loops )
$signal=|clockChanged( Qt3DAnimation::QClock * clock )
$endSlotsClass
