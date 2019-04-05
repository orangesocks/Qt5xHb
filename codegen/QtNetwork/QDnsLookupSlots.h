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
$signal=|finished()
$signal=|nameChanged( const QString & name )
$signal=|nameserverChanged( const QHostAddress & nameserver )
$signal=|typeChanged( QDnsLookup::Type type )
$endSlotsClass
