%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtNetworkAuth

$header

%% #ifndef QT_NO_HTTP
%% #endif // QT_NO_HTTP

#include "hbclass.ch"

$addRequests

$beginClassFrom=QAbstractOAuthReplyHandler

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,10,0

$prototype=explicit QOAuthOobReplyHandler(QObject *parent = nullptr)
$constructor=5,10,0|new|QObject *=nullptr

$deleteMethod=5,10,0

$prototype=QString callback() const override
$method=5,10,0|QString|callback|

$prototype=void networkReplyFinished(QNetworkReply *reply) override [protected]

$prototype=QVariantMap parseResponse(const QByteArray &response) [private]

#pragma ENDDUMP
