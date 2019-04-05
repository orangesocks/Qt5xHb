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

$includes

$prototype=explicit QImageEncoderControl(QObject *parent = Q_NULLPTR) [protected]

$prototype=virtual ~QImageEncoderControl()
$deleteMethod

$prototype=virtual QStringList supportedImageCodecs() const = 0
$virtualMethod=|QStringList|supportedImageCodecs|

$prototype=virtual QString imageCodecDescription(const QString &codecName) const = 0
$virtualMethod=|QString|imageCodecDescription|const QString &

$prototype=virtual QList<QSize> supportedResolutions(const QImageEncoderSettings &settings,bool *continuous = Q_NULLPTR) const = 0
$virtualMethod=|QList<QSize>|supportedResolutions|const QImageEncoderSettings &,bool *=0

$prototype=virtual QImageEncoderSettings imageSettings() const = 0
$virtualMethod=|QImageEncoderSettings|imageSettings|

$prototype=virtual void setImageSettings(const QImageEncoderSettings &settings) = 0
$virtualMethod=|void|setImageSettings|const QImageEncoderSettings &

#pragma ENDDUMP
