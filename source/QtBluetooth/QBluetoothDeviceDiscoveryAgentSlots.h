/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QBLUETOOTHDEVICEDISCOVERYAGENTSLOTS_H
#define QBLUETOOTHDEVICEDISCOVERYAGENTSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QtBluetooth/QBluetoothDeviceDiscoveryAgent>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals.h"

class QBluetoothDeviceDiscoveryAgentSlots: public QObject
{
  Q_OBJECT
  public:
  QBluetoothDeviceDiscoveryAgentSlots( QObject *parent = 0 );
  ~QBluetoothDeviceDiscoveryAgentSlots();
  public slots:
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  void deviceDiscovered( const QBluetoothDeviceInfo & info );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  void finished();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  void error( QBluetoothDeviceDiscoveryAgent::Error error );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  void canceled();
#endif
};

#endif /* QBLUETOOTHDEVICEDISCOVERYAGENTSLOTS_H */
