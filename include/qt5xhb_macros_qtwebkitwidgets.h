/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QT5XHB_MACROS_QTWEBKITWIDGETS_H
#define QT5XHB_MACROS_QTWEBKITWIDGETS_H

#define ISQGRAPHICSWEBVIEW(n)                               _qt5xhb_isObjectDerivedFrom(n,"QGraphicsWebView")
#define ISQWEBFRAME(n)                                      _qt5xhb_isObjectDerivedFrom(n,"QWebFrame")
#define ISQWEBHITTESTRESULT(n)                              _qt5xhb_isObjectDerivedFrom(n,"QWebHitTestResult")
#define ISQWEBINSPECTOR(n)                                  _qt5xhb_isObjectDerivedFrom(n,"QWebInspector")
#define ISQWEBPAGE(n)                                       _qt5xhb_isObjectDerivedFrom(n,"QWebPage")
#define ISQWEBVIEW(n)                                       _qt5xhb_isObjectDerivedFrom(n,"QWebView")

#define PQGRAPHICSWEBVIEW(n)                                (QGraphicsWebView *) _qt5xhb_itemGetPtr(n)
#define PQWEBFRAME(n)                                       (QWebFrame *) _qt5xhb_itemGetPtr(n)
#define PQWEBHITTESTRESULT(n)                               (QWebHitTestResult *) _qt5xhb_itemGetPtr(n)
#define PQWEBINSPECTOR(n)                                   (QWebInspector *) _qt5xhb_itemGetPtr(n)
#define PQWEBPAGE(n)                                        (QWebPage *) _qt5xhb_itemGetPtr(n)
#define PQWEBVIEW(n)                                        (QWebView *) _qt5xhb_itemGetPtr(n)

#define OPQGRAPHICSWEBVIEW(n,v)                             ISNIL(n)? v : (QGraphicsWebView *) _qt5xhb_itemGetPtr(n)
#define OPQWEBFRAME(n,v)                                    ISNIL(n)? v : (QWebFrame *) _qt5xhb_itemGetPtr(n)
#define OPQWEBHITTESTRESULT(n,v)                            ISNIL(n)? v : (QWebHitTestResult *) _qt5xhb_itemGetPtr(n)
#define OPQWEBINSPECTOR(n,v)                                ISNIL(n)? v : (QWebInspector *) _qt5xhb_itemGetPtr(n)
#define OPQWEBPAGE(n,v)                                     ISNIL(n)? v : (QWebPage *) _qt5xhb_itemGetPtr(n)
#define OPQWEBVIEW(n,v)                                     ISNIL(n)? v : (QWebView *) _qt5xhb_itemGetPtr(n)

#endif /* QT5XHB_MACROS_QTWEBKITWIDGETS_H */