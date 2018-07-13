%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QAbstractSocket

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QTcpSocket(QObject *parent = Q_NULLPTR)
$constructor=|new|QObject *=0

$prototype=QTcpSocket(QTcpSocketPrivate &dd, QObject *parent = Q_NULLPTR) (protected)

$prototype=QTcpSocket(QAbstractSocket::SocketType socketType, QTcpSocketPrivate &dd, QObject *parent = Q_NULLPTR) (protected)

$prototype=virtual ~QTcpSocket()
$deleteMethod

#pragma ENDDUMP
