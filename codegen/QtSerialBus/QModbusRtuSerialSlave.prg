%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtSerialBus

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QModbusServer

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,8,0

$prototype=explicit QModbusRtuSerialSlave(QObject *parent = nullptr)
$prototype=QModbusRtuSerialSlave(QModbusRtuSerialSlavePrivate &dd, QObject *parent = nullptr) [protected]

$prototype=~QModbusRtuSerialSlave()
$deleteMethod=5,8,0

$prototype=bool processesBroadcast() const override

$prototype=bool open() override [protected]

$prototype=void close() override [protected]

$prototype=QModbusResponse processRequest(const QModbusPdu &request) override [protected]

#pragma ENDDUMP
