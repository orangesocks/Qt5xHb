/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QWINTHUMBNAILTOOLBUTTONSLOTS_H
#define QWINTHUMBNAILTOOLBUTTONSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QtWinExtras/QWinThumbnailToolButton>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class QWinThumbnailToolButtonSlots: public QObject
{
  Q_OBJECT
  public:
  QWinThumbnailToolButtonSlots(QObject *parent = 0);
  ~QWinThumbnailToolButtonSlots();
  public slots:
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  void clicked();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  void changed();
#endif
};

#endif /* QWINTHUMBNAILTOOLBUTTONSLOTS_H */
