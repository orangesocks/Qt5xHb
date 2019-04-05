%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWebEngine

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,6,0

#if (QT_VERSION >= QT_VERSION_CHECK(5,6,0))
#include <QtWebEngine/QWebEngineCookieStore>
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,6,0))
#include <QtWebEngine/QWebEngineUrlSchemeHandler>
#endif

$prototype=QQuickWebEngineProfile(QObject *parent = Q_NULLPTR)
$constructor=5,6,0|new|QObject *=Q_NULLPTR

$prototype=QQuickWebEngineProfile(QQuickWebEngineProfilePrivate *, QObject *parent = Q_NULLPTR) [private]

$prototype=~QQuickWebEngineProfile()
$deleteMethod=5,6,0

%%
%% Q_PROPERTY(QString storageName READ storageName WRITE setStorageName NOTIFY storageNameChanged FINAL)
%%

$prototype=QString storageName() const
$method=5,6,0|QString|storageName|

$prototype=void setStorageName(const QString &name)
$method=5,6,0|void|setStorageName|const QString &

%%
%% Q_PROPERTY(bool offTheRecord READ isOffTheRecord WRITE setOffTheRecord NOTIFY offTheRecordChanged FINAL)
%%

$prototype=bool isOffTheRecord() const
$method=5,6,0|bool|isOffTheRecord|

$prototype=void setOffTheRecord(bool offTheRecord)
$method=5,6,0|void|setOffTheRecord|bool

%%
%% Q_PROPERTY(QString persistentStoragePath READ persistentStoragePath WRITE setPersistentStoragePath NOTIFY persistentStoragePathChanged FINAL)
%%

$prototype=QString persistentStoragePath() const
$method=5,6,0|QString|persistentStoragePath|

$prototype=void setPersistentStoragePath(const QString &path)
$method=5,6,0|void|setPersistentStoragePath|const QString &

%%
%% Q_PROPERTY(QString cachePath READ cachePath WRITE setCachePath NOTIFY cachePathChanged FINAL)
%%

$prototype=QString cachePath() const
$method=5,6,0|QString|cachePath|

$prototype=void setCachePath(const QString &path)
$method=5,6,0|void|setCachePath|const QString &

%%
%% Q_PROPERTY(QString httpUserAgent READ httpUserAgent WRITE setHttpUserAgent NOTIFY httpUserAgentChanged FINAL)
%%

$prototype=QString httpUserAgent() const
$method=5,6,0|QString|httpUserAgent|

$prototype=void setHttpUserAgent(const QString &userAgent)
$method=5,6,0|void|setHttpUserAgent|const QString &

%%
%% Q_PROPERTY(HttpCacheType httpCacheType READ httpCacheType WRITE setHttpCacheType NOTIFY httpCacheTypeChanged FINAL)
%%

$prototype=HttpCacheType httpCacheType() const
$method=5,6,0|QQuickWebEngineProfile::HttpCacheType|httpCacheType|

$prototype=void setHttpCacheType(QQuickWebEngineProfile::HttpCacheType)
$method=5,6,0|void|setHttpCacheType|QQuickWebEngineProfile::HttpCacheType

%%
%% Q_PROPERTY(QString httpAcceptLanguage READ httpAcceptLanguage WRITE setHttpAcceptLanguage NOTIFY httpAcceptLanguageChanged FINAL REVISION 1)
%%

$prototype=QString httpAcceptLanguage() const
$method=5,6,0|QString|httpAcceptLanguage|

$prototype=void setHttpAcceptLanguage(const QString &httpAcceptLanguage)
$method=5,6,0|void|setHttpAcceptLanguage|const QString &

%%
%% Q_PROPERTY(PersistentCookiesPolicy persistentCookiesPolicy READ persistentCookiesPolicy WRITE setPersistentCookiesPolicy NOTIFY persistentCookiesPolicyChanged FINAL)
%%

$prototype=PersistentCookiesPolicy persistentCookiesPolicy() const
$method=5,6,0|QQuickWebEngineProfile::PersistentCookiesPolicy|persistentCookiesPolicy|

$prototype=void setPersistentCookiesPolicy(QQuickWebEngineProfile::PersistentCookiesPolicy)
$method=5,6,0|void|setPersistentCookiesPolicy|QQuickWebEngineProfile::PersistentCookiesPolicy

%%
%% Q_PROPERTY(int httpCacheMaximumSize READ httpCacheMaximumSize WRITE setHttpCacheMaximumSize NOTIFY httpCacheMaximumSizeChanged FINAL)
%%

$prototype=int httpCacheMaximumSize() const
$method=5,6,0|int|httpCacheMaximumSize|

$prototype=void setHttpCacheMaximumSize(int maxSize)
$method=5,6,0|void|setHttpCacheMaximumSize|int

%%
%% Q_PROPERTY(QStringList spellCheckLanguages READ spellCheckLanguages WRITE setSpellCheckLanguages NOTIFY spellCheckLanguagesChanged FINAL REVISION 3)
%%

$prototype=QStringList spellCheckLanguages() const
$method=5,8,0|QStringList|spellCheckLanguages|

$prototype=void setSpellCheckLanguages(const QStringList &languages)
%% TODO: verificar se entrou na versao 5,8,0
$method=5,8,0|void|setSpellCheckLanguages|const QStringList &

%%
%% Q_PROPERTY(bool spellCheckEnabled READ isSpellCheckEnabled WRITE setSpellCheckEnabled NOTIFY spellCheckEnabledChanged FINAL REVISION 3)
%%

%% TODO: confirmar versao do Qt

$prototype=bool isSpellCheckEnabled() const
$method=5,8,0|bool|isSpellCheckEnabled|

$prototype=void setSpellCheckEnabled(bool enabled)
$method=5,8,0|void|setSpellCheckEnabled|bool

%%
%% Q_PROPERTY(QQmlListProperty<QQuickWebEngineScript> userScripts READ userScripts FINAL REVISION 4)
%%

$prototype=QQmlListProperty<QQuickWebEngineScript> userScripts()
%% TODO: implementar
%% $method=5,9,0|QQmlListProperty<QQuickWebEngineScript>|userScripts|

%%
%%
%%

$prototype=QWebEngineCookieStore *cookieStore() const
$method=5,6,0|QWebEngineCookieStore *|cookieStore|

$prototype=void setRequestInterceptor(QWebEngineUrlRequestInterceptor *interceptor)
$method=5,6,0|void|setRequestInterceptor|QWebEngineUrlRequestInterceptor *

$prototype=const QWebEngineUrlSchemeHandler *urlSchemeHandler(const QByteArray &) const
$method=5,6,0|const QWebEngineUrlSchemeHandler *|urlSchemeHandler|const QByteArray &

$prototype=void installUrlSchemeHandler(const QByteArray &scheme, QWebEngineUrlSchemeHandler *)
$method=5,6,0|void|installUrlSchemeHandler|const QByteArray &,QWebEngineUrlSchemeHandler *

$prototype=void removeUrlScheme(const QByteArray &scheme)
$method=5,6,0|void|removeUrlScheme|const QByteArray &

$prototype=void removeUrlSchemeHandler(QWebEngineUrlSchemeHandler *)
$method=5,6,0|void|removeUrlSchemeHandler|QWebEngineUrlSchemeHandler *

$prototype=void removeAllUrlSchemeHandlers()
$method=5,6,0|void|removeAllUrlSchemeHandlers|

$prototype=Q_REVISION(2) Q_INVOKABLE void clearHttpCache()
$method=5,7,0|void|clearHttpCache|

$prototype=static QQuickWebEngineProfile *defaultProfile()
$staticMethod=5,6,0|QQuickWebEngineProfile *|defaultProfile|

$prototype=void destroyedUrlSchemeHandler(QWebEngineUrlSchemeHandler *obj) (slot) [private]

$prototype=QQuickWebEngineSettings *settings() const [private]

$beginSignals
$signal=|cachePathChanged()
%% $signal=|downloadFinished(QQuickWebEngineDownloadItem*)
%% $signal=|downloadRequested(QQuickWebEngineDownloadItem*)
$signal=|httpAcceptLanguageChanged()
$signal=|httpCacheMaximumSizeChanged()
$signal=|httpCacheTypeChanged()
$signal=|httpUserAgentChanged()
$signal=|offTheRecordChanged()
$signal=|persistentCookiesPolicyChanged()
$signal=|persistentStoragePathChanged()
$signal=|spellCheckEnabledChanged()
$signal=|spellCheckLanguagesChanged()
$signal=|storageNameChanged()
$endSignals

#pragma ENDDUMP
