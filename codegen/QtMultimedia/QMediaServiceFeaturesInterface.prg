%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtMultimedia

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=virtual ~QMediaServiceFeaturesInterface()
$deleteMethod

$prototype=virtual QMediaServiceProviderHint::Features supportedFeatures(const QByteArray & service) const = 0
$virtualMethod=|QMediaServiceProviderHint::Features|supportedFeatures|const QByteArray &

$extraMethods

#pragma ENDDUMP
