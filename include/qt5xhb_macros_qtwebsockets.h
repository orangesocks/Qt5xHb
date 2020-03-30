/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QT5XHB_MACROS_QTWEBSOCKETS_H
#define QT5XHB_MACROS_QTWEBSOCKETS_H

#define ISQMASKGENERATOR(n)                                 Qt5xHb::isObjectDerivedFrom(n,"QMaskGenerator")
#define ISQWEBSOCKET(n)                                     Qt5xHb::isObjectDerivedFrom(n,"QWebSocket")
#define ISQWEBSOCKETCORSAUTHENTICATOR(n)                    Qt5xHb::isObjectDerivedFrom(n,"QWebSocketCorsAuthenticator")
#define ISQWEBSOCKETSERVER(n)                               Qt5xHb::isObjectDerivedFrom(n,"QWebSocketServer")

#define PQMASKGENERATOR(n)                                  (QMaskGenerator *) Qt5xHb::itemGetPtr(n)
#define PQWEBSOCKET(n)                                      (QWebSocket *) Qt5xHb::itemGetPtr(n)
#define PQWEBSOCKETCORSAUTHENTICATOR(n)                     (QWebSocketCorsAuthenticator *) Qt5xHb::itemGetPtr(n)
#define PQWEBSOCKETSERVER(n)                                (QWebSocketServer *) Qt5xHb::itemGetPtr(n)

#define OPQMASKGENERATOR(n,v)                               ISNIL(n)? v : (QMaskGenerator *) Qt5xHb::itemGetPtr(n)
#define OPQWEBSOCKET(n,v)                                   ISNIL(n)? v : (QWebSocket *) Qt5xHb::itemGetPtr(n)
#define OPQWEBSOCKETCORSAUTHENTICATOR(n,v)                  ISNIL(n)? v : (QWebSocketCorsAuthenticator *) Qt5xHb::itemGetPtr(n)
#define OPQWEBSOCKETSERVER(n,v)                             ISNIL(n)? v : (QWebSocketServer *) Qt5xHb::itemGetPtr(n)

#endif /* QT5XHB_MACROS_QTWEBSOCKETS_H */
