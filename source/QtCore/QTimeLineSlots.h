/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QTIMELINESLOTS_H
#define QTIMELINESLOTS_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QTimeLine>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class QTimeLineSlots: public QObject
{
  Q_OBJECT
  public:
  QTimeLineSlots(QObject *parent = 0);
  ~QTimeLineSlots();
  public slots:
  void finished();
  void frameChanged( int frame );
  void stateChanged( QTimeLine::State newState );
  void valueChanged( qreal value );
};

#endif /* QTIMELINESLOTS_H */
