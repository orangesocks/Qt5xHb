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

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QVideoDeviceSelectorControl(QObject *parent = Q_NULLPTR) [protected]

$prototype=virtual ~QVideoDeviceSelectorControl()
$deleteMethod

$prototype=virtual int defaultDevice() const = 0
$virtualMethod=|int|defaultDevice|

$prototype=virtual int deviceCount() const = 0
$virtualMethod=|int|deviceCount|

$prototype=virtual QString deviceDescription(int index) const = 0
$virtualMethod=|QString|deviceDescription|int

$prototype=virtual QString deviceName(int index) const = 0
$virtualMethod=|QString|deviceName|int

$prototype=virtual int selectedDevice() const = 0
$virtualMethod=|int|selectedDevice|

$prototype=virtual void setSelectedDevice(int index) = 0
$virtualSlotMethod=|void|setSelectedDevice|int

$beginSignals
$signal=|devicesChanged()
$beginGroup
$signal=|selectedDeviceChanged(int)
$signal=|selectedDeviceChanged(QString)
$endGroup
$endSignals

#pragma ENDDUMP
