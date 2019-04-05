%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtDesigner

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject,QAbstractExtensionFactory

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtDesigner/QExtensionManager>

$prototype=QExtensionFactory ( QExtensionManager * parent = 0 )
$constructor=|new|QExtensionManager *=0

$deleteMethod

$prototype=QExtensionManager * extensionManager () const
$method=|QExtensionManager *|extensionManager|

$prototype=virtual QObject * extension ( QObject * object, const QString & iid ) const
$virtualMethod=|QObject *|extension|QObject *,const QString &

#pragma ENDDUMP
