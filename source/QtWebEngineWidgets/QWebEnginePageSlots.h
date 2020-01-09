/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QWEBENGINEPAGESLOTS_H
#define QWEBENGINEPAGESLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QtWebEngineWidgets/QWebEnginePage>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class QWebEnginePageSlots: public QObject
{
  Q_OBJECT
  public:
  QWebEnginePageSlots(QObject *parent = 0);
  ~QWebEnginePageSlots();
  public slots:
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  void loadStarted();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  void loadProgress( int progress );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  void loadFinished( bool ok );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  void linkHovered( const QString & url );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  void selectionChanged();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  void geometryChangeRequested( const QRect & geom );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  void windowCloseRequested();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  void featurePermissionRequested( const QUrl & securityOrigin, QWebEnginePage::Feature feature );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  void featurePermissionRequestCanceled( const QUrl & securityOrigin, QWebEnginePage::Feature feature );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  void authenticationRequired( const QUrl & requestUrl, QAuthenticator * authenticator );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  void proxyAuthenticationRequired( const QUrl & requestUrl, QAuthenticator * authenticator, const QString & proxyHost );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  void titleChanged( const QString & title );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  void urlChanged( const QUrl & url );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  void iconUrlChanged( const QUrl & url );
#endif
};

#endif /* QWEBENGINEPAGESLOTS_H */
