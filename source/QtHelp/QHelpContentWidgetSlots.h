/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QHELPCONTENTWIDGETSLOTS_H
#define QHELPCONTENTWIDGETSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtHelp/QHelpContentWidget>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class QHelpContentWidgetSlots: public QObject
{
  Q_OBJECT
  public:
  QHelpContentWidgetSlots(QObject *parent = 0);
  ~QHelpContentWidgetSlots();
  public slots:
  void linkActivated( const QUrl & link );
};

#endif /* QHELPCONTENTWIDGETSLOTS_H */
