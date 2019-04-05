%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWebSockets

$header

/*
enum QWebSocketServer::SslMode
*/
// TODO: checar efeito da flag QT_NO_SSL no valor das constantes
//#ifndef QT_NO_SSL
#define QWebSocketServer_SecureMode                                  0
//#endif
#define QWebSocketServer_NonSecureMode                               1
