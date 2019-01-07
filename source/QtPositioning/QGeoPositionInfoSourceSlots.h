/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QGEOPOSITIONINFOSOURCESLOTS_H
#define QGEOPOSITIONINFOSOURCESLOTS_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QGeoPositionInfoSource>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class QGeoPositionInfoSourceSlots: public QObject
{
  Q_OBJECT
  public:
  QGeoPositionInfoSourceSlots(QObject *parent = 0);
  ~QGeoPositionInfoSourceSlots();
  public slots:
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  void positionUpdated( const QGeoPositionInfo & update );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  void updateTimeout();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  void error( QGeoPositionInfoSource::Error error );
#endif
};

#endif /* QGEOPOSITIONINFOSOURCESLOTS_H */
