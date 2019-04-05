%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtNetwork

$header

$includes

$beginSlotsClass
$slot=|finished()
$slot=|nameChanged( const QString & name )
$slot=|nameserverChanged( const QHostAddress & nameserver )
$slot=|typeChanged( QDnsLookup::Type type )
$endSlotsClass
