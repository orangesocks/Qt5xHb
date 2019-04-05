/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QTHREADSLOTS_H
#define QTHREADSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtCore/QThread>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class QThreadSlots: public QObject
{
  Q_OBJECT
  public:
  QThreadSlots(QObject *parent = 0);
  ~QThreadSlots();
  public slots:
  void finished();
  void started();
};

#endif /* QTHREADSLOTS_H */
