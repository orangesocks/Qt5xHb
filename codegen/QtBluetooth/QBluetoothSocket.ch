%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtBluetooth

$header

/*
enum QBluetoothSocket::SocketState
*/
#define QBluetoothSocket_UnconnectedState                            QAbstractSocket_UnconnectedState
#define QBluetoothSocket_ServiceLookupState                          QAbstractSocket_HostLookupState
#define QBluetoothSocket_ConnectingState                             QAbstractSocket_ConnectingState
#define QBluetoothSocket_ConnectedState                              QAbstractSocket_ConnectedState
#define QBluetoothSocket_BoundState                                  QAbstractSocket_BoundState
#define QBluetoothSocket_ClosingState                                QAbstractSocket_ClosingState
#define QBluetoothSocket_ListeningState                              QAbstractSocket_ListeningState

/*
enum QBluetoothSocket::SocketError
*/
#define QBluetoothSocket_NoSocketError                               -2
#define QBluetoothSocket_UnknownSocketError                          QAbstractSocket_UnknownSocketError
#define QBluetoothSocket_HostNotFoundError                           QAbstractSocket_HostNotFoundError
#define QBluetoothSocket_ServiceNotFoundError                        QAbstractSocket_SocketAddressNotAvailableError
#define QBluetoothSocket_NetworkError                                QAbstractSocket_NetworkError
#define QBluetoothSocket_UnsupportedProtocolError                    QAbstractSocket_NetworkError+1
