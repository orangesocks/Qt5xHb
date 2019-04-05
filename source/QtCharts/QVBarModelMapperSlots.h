/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QVBARMODELMAPPERSLOTS_H
#define QVBARMODELMAPPERSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QtCharts/QVBarModelMapper>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

using namespace QtCharts;

class QVBarModelMapperSlots: public QObject
{
  Q_OBJECT
  public:
  QVBarModelMapperSlots(QObject *parent = 0);
  ~QVBarModelMapperSlots();
  public slots:
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void firstBarSetColumnChanged();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void firstRowChanged();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void lastBarSetColumnChanged();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void modelReplaced();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void rowCountChanged();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void seriesReplaced();
#endif
};

#endif /* QVBARMODELMAPPERSLOTS_H */
