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

$beginClassFrom=QMediaControl

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,5,0

$prototype=explicit QCameraViewfinderSettingsControl2(QObject *parent = Q_NULLPTR) [protected]

$prototype=virtual ~QCameraViewfinderSettingsControl2()
$deleteMethod=5,5,0

$prototype=virtual QList<QCameraViewfinderSettings> supportedViewfinderSettings() const = 0
$virtualMethod=5,5,0|QList<QCameraViewfinderSettings>|supportedViewfinderSettings|

$prototype=virtual QCameraViewfinderSettings viewfinderSettings() const = 0
$virtualMethod=5,5,0|QCameraViewfinderSettings|viewfinderSettings|

$prototype=virtual void setViewfinderSettings(const QCameraViewfinderSettings &settings) = 0
$virtualMethod=5,5,0|void|setViewfinderSettings|const QCameraViewfinderSettings &

#pragma ENDDUMP
