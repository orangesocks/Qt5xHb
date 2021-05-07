/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QBLUETOOTHSERVERSLOTS_H
#define QBLUETOOTHSERVERSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QtBluetooth/QBluetoothServer>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals.h"

class QBluetoothServerSlots: public QObject
{
  Q_OBJECT
  public:
  QBluetoothServerSlots( QObject *parent = 0 );
  ~QBluetoothServerSlots();
  public slots:
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  void newConnection();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  void error( QBluetoothServer::Error error );
#endif
};

#endif /* QBLUETOOTHSERVERSLOTS_H */
