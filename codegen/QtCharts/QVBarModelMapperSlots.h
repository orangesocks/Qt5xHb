%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCharts

$header

$includes=5,7,0

using namespace QtCharts;

$beginSlotsClass
$signal=5,7,0|firstBarSetColumnChanged()
$signal=5,7,0|firstRowChanged()
$signal=5,7,0|lastBarSetColumnChanged()
$signal=5,7,0|modelReplaced()
$signal=5,7,0|rowCountChanged()
$signal=5,7,0|seriesReplaced()
$endSlotsClass
