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
$slot=|blockCountChanged( int newBlockCount )
$slot=|copyAvailable( bool yes )
$slot=|cursorPositionChanged()
$slot=|modificationChanged( bool changed )
$slot=|redoAvailable( bool available )
$slot=|selectionChanged()
$slot=|textChanged()
$slot=|undoAvailable( bool available )
$slot=|updateRequest( const QRect & rect, int dy )
$endSlotsClass
