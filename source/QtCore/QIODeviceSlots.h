/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QIODEVICESLOTS_H
#define QIODEVICESLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtCore/QIODevice>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class QIODeviceSlots: public QObject
{
  Q_OBJECT
  public:
  QIODeviceSlots(QObject *parent = 0);
  ~QIODeviceSlots();
  public slots:
  void aboutToClose();
  void bytesWritten( qint64 bytes );
  void readChannelFinished();
  void readyRead();
};

#endif /* QIODEVICESLOTS_H */
