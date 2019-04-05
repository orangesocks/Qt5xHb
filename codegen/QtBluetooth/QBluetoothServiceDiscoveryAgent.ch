%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtBluetooth

$header

/*
enum QBluetoothServiceDiscoveryAgent::Error
*/
#define QBluetoothServiceDiscoveryAgent_NoError                      QBluetoothDeviceDiscoveryAgent_NoError
#define QBluetoothServiceDiscoveryAgent_InputOutputError             QBluetoothDeviceDiscoveryAgent_InputOutputError
#define QBluetoothServiceDiscoveryAgent_PoweredOffError              QBluetoothDeviceDiscoveryAgent_PoweredOffError
#define QBluetoothServiceDiscoveryAgent_UnknownError                 QBluetoothDeviceDiscoveryAgent_UnknownError

/*
enum QBluetoothServiceDiscoveryAgent::DiscoveryMode
*/
#define QBluetoothServiceDiscoveryAgent_MinimalDiscovery             0
#define QBluetoothServiceDiscoveryAgent_FullDiscovery                1
