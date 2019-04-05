%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtMacExtras

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,2,0

$prototype=QMacPasteboardMime(char)
$constructor=5,2,0|new|char

$deleteMethod=5,2,0

$prototype=virtual QString convertorName() = 0
$virtualMethod=5,2,0|QString|convertorName|

$prototype=virtual bool canConvert(const QString &mime, QString flav) = 0
$virtualMethod=5,2,0|bool|canConvert|const QString &,QString

$prototype=virtual QString mimeFor(QString flav) = 0
$virtualMethod=5,2,0|QString|mimeFor|QString

$prototype=virtual QString flavorFor(const QString &mime) = 0
$virtualMethod=5,2,0|QString|flavorFor|const QString &

$prototype=virtual QVariant convertToMime(const QString &mime, QList<QByteArray> data, QString flav) = 0
$virtualMethod=5,2,0|QVariant|convertToMime|const QString &,QList<QByteArray>,QString

$prototype=virtual QList<QByteArray> convertFromMime(const QString &mime, QVariant data, QString flav) = 0
$virtualMethod=5,2,0|QList<QByteArray>|convertFromMime|const QString &,QVariant,QString

$prototype=virtual int count(QMimeData *mimeData)
$virtualMethod=5,2,0|int|count|QMimeData *

$extraMethods

#pragma ENDDUMP
