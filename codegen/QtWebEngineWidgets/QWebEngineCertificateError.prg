%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWebEngineWidgets

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,4,0

$prototype=QWebEngineCertificateError(int error, QUrl url, bool overridable, QString errorDescription)
$constructor=5,4,0|new|int,QUrl,bool,QString

$deleteMethod=5,4,0

$prototype=Error error() const
$method=5,4,0|QWebEngineCertificateError::Error|error|

$prototype=QUrl url() const
$method=5,4,0|QUrl|url|

$prototype=bool isOverridable() const
$method=5,4,0|bool|isOverridable|

$prototype=QString errorDescription() const
$method=5,4,0|QString|errorDescription|

$extraMethods

#pragma ENDDUMP
