%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtLocation

$header

$includes=5,4,0

$beginSlotsClass
$signal=5,4,0|finished()
$signal=5,4,0|error( QPlaceReply::Error error, const QString & errorString = QString() )
$endSlotsClass
