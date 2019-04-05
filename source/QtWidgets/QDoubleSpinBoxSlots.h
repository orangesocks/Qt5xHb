/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QDOUBLESPINBOXSLOTS_H
#define QDOUBLESPINBOXSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtWidgets/QDoubleSpinBox>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class QDoubleSpinBoxSlots: public QObject
{
  Q_OBJECT
  public:
  QDoubleSpinBoxSlots(QObject *parent = 0);
  ~QDoubleSpinBoxSlots();
  public slots:
  void valueChanged( double d );
  void valueChanged( const QString & text );
};

#endif /* QDOUBLESPINBOXSLOTS_H */
