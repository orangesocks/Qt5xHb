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

$prototype=explicit QCameraLocksControl(QObject *parent = Q_NULLPTR) [protected]

$prototype=~QCameraLocksControl()
$deleteMethod

$prototype=virtual QCamera::LockStatus lockStatus(QCamera::LockType lock) const = 0
$virtualMethod=|QCamera::LockStatus|lockStatus|QCamera::LockType

$prototype=virtual void searchAndLock(QCamera::LockTypes locks) = 0
$virtualMethod=|void|searchAndLock|QCamera::LockTypes

$prototype=virtual QCamera::LockTypes supportedLocks() const = 0
$virtualMethod=|QCamera::LockTypes|supportedLocks|

$prototype=virtual void unlock(QCamera::LockTypes locks) = 0
$virtualMethod=|void|unlock|QCamera::LockTypes

$beginSignals
$signal=|lockStatusChanged(QCamera::LockType,QCamera::LockStatus,QCamera::LockChangeReason)
$endSignals

#pragma ENDDUMP
