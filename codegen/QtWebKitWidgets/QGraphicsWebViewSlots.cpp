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
$slot=|iconChanged()
$slot=|linkClicked( const QUrl & url )
$slot=|loadFinished( bool ok )
$slot=|loadProgress( int progress )
$slot=|loadStarted()
$slot=|statusBarMessage( const QString & text )
$slot=|titleChanged( const QString & title )
$slot=|urlChanged( const QUrl & url )
$endSlotsClass
