%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtDeclarative

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QStringList>
#include <QtNetwork/QNetworkAccessManager>
#include <QtDeclarative/QDeclarativeContext>

$prototype=QDeclarativeEngine ( QObject * parent = 0 )
$constructor=|new|QObject *=0

$deleteMethod

$prototype=void addImageProvider ( const QString & providerId, QDeclarativeImageProvider * provider )
$method=|void|addImageProvider|const QString &,QDeclarativeImageProvider *

$prototype=void addImportPath ( const QString & path )
$method=|void|addImportPath|const QString &

$prototype=void addPluginPath ( const QString & path )
$method=|void|addPluginPath|const QString &

$prototype=QUrl baseUrl () const
$method=|QUrl|baseUrl|

$prototype=void clearComponentCache ()
$method=|void|clearComponentCache|

$prototype=QDeclarativeImageProvider * imageProvider ( const QString & providerId ) const
$method=|QDeclarativeImageProvider *|imageProvider|const QString &

$prototype=QStringList importPathList () const
$method=|QStringList|importPathList|

$prototype=QNetworkAccessManager * networkAccessManager () const
$method=|QNetworkAccessManager *|networkAccessManager|

$prototype=QDeclarativeNetworkAccessManagerFactory * networkAccessManagerFactory () const
$method=|QDeclarativeNetworkAccessManagerFactory *|networkAccessManagerFactory|

$prototype=QString offlineStoragePath () const
$method=|QString|offlineStoragePath|

$prototype=bool outputWarningsToStandardError () const
$method=|bool|outputWarningsToStandardError|

$prototype=QStringList pluginPathList () const
$method=|QStringList|pluginPathList|

$prototype=void removeImageProvider ( const QString & providerId )
$method=|void|removeImageProvider|const QString &

$prototype=QDeclarativeContext * rootContext () const
$method=|QDeclarativeContext *|rootContext|

$prototype=void setBaseUrl ( const QUrl & url )
$method=|void|setBaseUrl|const QUrl &

$prototype=void setImportPathList ( const QStringList & paths )
$method=|void|setImportPathList|const QStringList &

$prototype=void setNetworkAccessManagerFactory ( QDeclarativeNetworkAccessManagerFactory * factory )
$method=|void|setNetworkAccessManagerFactory|QDeclarativeNetworkAccessManagerFactory *

$prototype=void setOfflineStoragePath ( const QString & dir )
$method=|void|setOfflineStoragePath|const QString &

$prototype=void setOutputWarningsToStandardError ( bool enabled )
$method=|void|setOutputWarningsToStandardError|bool

$prototype=void setPluginPathList ( const QStringList & paths )
$method=|void|setPluginPathList|const QStringList &

$prototype=static QDeclarativeContext * contextForObject ( const QObject * object )
$staticMethod=|QDeclarativeContext *|contextForObject|const QObject *

$prototype=static ObjectOwnership objectOwnership ( QObject * object )
$staticMethod=|QDeclarativeEngine::ObjectOwnership|objectOwnership|QObject *

$prototype=static void setContextForObject ( QObject * object, QDeclarativeContext * context )
$staticMethod=|void|setContextForObject|QObject *,QDeclarativeContext *

$prototype=static void setObjectOwnership ( QObject * object, ObjectOwnership ownership )
$staticMethod=|void|setObjectOwnership|QObject *,QDeclarativeEngine::ObjectOwnership

$beginSignals
$signal=|quit()
$signal=|warnings(QList<QDeclarativeError>)
$endSignals

#pragma ENDDUMP
