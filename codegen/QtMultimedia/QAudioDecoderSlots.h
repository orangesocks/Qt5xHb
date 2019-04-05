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
$signal=|bufferAvailableChanged( bool available )
$signal=|bufferReady()
$signal=|durationChanged( qint64 duration )
$signal=|error( QAudioDecoder::Error error )
$signal=|finished()
$signal=|formatChanged( const QAudioFormat & format )
$signal=|positionChanged( qint64 position )
$signal=|sourceChanged()
$signal=|stateChanged( QAudioDecoder::State state )
$endSlotsClass
