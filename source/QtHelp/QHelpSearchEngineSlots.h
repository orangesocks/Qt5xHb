/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QHELPSEARCHENGINESLOTS_H
#define QHELPSEARCHENGINESLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtHelp/QHelpSearchEngine>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class QHelpSearchEngineSlots: public QObject
{
  Q_OBJECT
  public:
  QHelpSearchEngineSlots(QObject *parent = 0);
  ~QHelpSearchEngineSlots();
  public slots:
  void indexingFinished();
  void indexingStarted();
  void searchingFinished( int hits );
  void searchingStarted();
};

#endif /* QHELPSEARCHENGINESLOTS_H */
