%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtDBus

$header

/*
enum QDBusServiceWatcher::WatchModeFlag
flags QDBusServiceWatcher::WatchMode
*/
#define QDBusServiceWatcher_WatchForRegistration                     0x01
#define QDBusServiceWatcher_WatchForUnregistration                   0x02
#define QDBusServiceWatcher_WatchForOwnerChange                      0x03
