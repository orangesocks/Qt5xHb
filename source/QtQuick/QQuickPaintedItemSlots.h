/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QQUICKPAINTEDITEMSLOTS_H
#define QQUICKPAINTEDITEMSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtQuick/QQuickPaintedItem>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals.h"

class QQuickPaintedItemSlots: public QObject
{
  Q_OBJECT
  public:
  QQuickPaintedItemSlots( QObject *parent = 0 );
  ~QQuickPaintedItemSlots();
  public slots:
  void contentsScaleChanged();
  void contentsSizeChanged();
  void fillColorChanged();
  void renderTargetChanged();
};

#endif /* QQUICKPAINTEDITEMSLOTS_H */
