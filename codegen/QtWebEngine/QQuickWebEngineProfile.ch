%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWebEngine

$header

/*
enum QQuickWebEngineProfile::HttpCacheType
*/
#define QQuickWebEngineProfile_MemoryHttpCache                       0
#define QQuickWebEngineProfile_DiskHttpCache                         1
#define QQuickWebEngineProfile_NoCache                               2

/*
enum QQuickWebEngineProfile::PersistentCookiesPolicy
*/
#define QQuickWebEngineProfile_NoPersistentCookies                   0
#define QQuickWebEngineProfile_AllowPersistentCookies                1
#define QQuickWebEngineProfile_ForcePersistentCookies                2
