%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWidgets

$header

$includes

$beginSlotsClass
$signal=|blockCountChanged( int newBlockCount )
$signal=|copyAvailable( bool yes )
$signal=|cursorPositionChanged()
$signal=|modificationChanged( bool changed )
$signal=|redoAvailable( bool available )
$signal=|selectionChanged()
$signal=|textChanged()
$signal=|undoAvailable( bool available )
$signal=|updateRequest( const QRect & rect, int dy )
$endSlotsClass
