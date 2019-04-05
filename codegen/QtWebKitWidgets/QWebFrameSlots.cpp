%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWebKitWidgets

$header

$includes

$beginSlotsClass
$slot=|contentsSizeChanged( const QSize & size )
$slot=|iconChanged()
$slot=|initialLayoutCompleted()
$slot=|javaScriptWindowObjectCleared()
$slot=|loadFinished( bool ok )
$slot=|loadStarted()
$slot=|pageChanged()
%% $slot=|provisionalLoad()
$slot=|titleChanged( const QString & title )
$slot=|urlChanged( const QUrl & url )
$endSlotsClass
