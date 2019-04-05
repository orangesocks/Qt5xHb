%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWebEngine

$header

$includes

$beginSlotsClass
$slot=|injectionPointChanged( QQuickWebEngineScript::InjectionPoint injectionPoint )
$slot=|nameChanged( const QString & name )
$slot=|runOnSubframesChanged( bool on )
$slot=|sourceCodeChanged( const QString & code )
$slot=|sourceUrlChanged( const QUrl & url )
$slot=|worldIdChanged( QQuickWebEngineScript::ScriptWorldId scriptWorldId )
$endSlotsClass
