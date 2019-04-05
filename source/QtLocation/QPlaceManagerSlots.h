/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QPLACEMANAGERSLOTS_H
#define QPLACEMANAGERSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QtLocation/QPlaceManager>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class QPlaceManagerSlots: public QObject
{
  Q_OBJECT
  public:
  QPlaceManagerSlots(QObject *parent = 0);
  ~QPlaceManagerSlots();
  public slots:
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  void finished( QPlaceReply * reply );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  void error( QPlaceReply * reply, QPlaceReply::Error error, const QString & errorString = QString() );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  void placeAdded( const QString & placeId );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  void placeUpdated( const QString & placeId );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  void placeRemoved( const QString & placeId );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  void categoryAdded( const QPlaceCategory & category, const QString & parentId );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  void categoryUpdated( const QPlaceCategory & category, const QString & parentId );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  void categoryRemoved( const QString & categoryId, const QString & parentId );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  void dataChanged();
#endif
};

#endif /* QPLACEMANAGERSLOTS_H */
