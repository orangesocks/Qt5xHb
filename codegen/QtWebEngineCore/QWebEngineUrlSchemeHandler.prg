%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWebEngineCore

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QWebEngineUrlSchemeHandler(QObject *parent = Q_NULLPTR)
$constructor=|new|QObject *=Q_NULLPTR

$prototype=~QWebEngineUrlSchemeHandler()
$deleteMethod

$prototype=virtual void requestStarted(QWebEngineUrlRequestJob*) = 0
$virtualMethod=|void|requestStarted|QWebEngineUrlRequestJob *

#pragma ENDDUMP

%% TODO: verificar
%% #ifndef Q_QDOC
%% Q_SIGNALS:
%%     void _q_destroyedUrlSchemeHandler(QWebEngineUrlSchemeHandler*);
%% #endif
