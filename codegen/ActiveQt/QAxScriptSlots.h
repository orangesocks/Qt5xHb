/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQAXSCRIPT_H
#define SLOTSQAXSCRIPT_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QAxScript>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQAxScript: public QObject
{
  Q_OBJECT
  public:
  SlotsQAxScript(QObject *parent = 0);
  ~SlotsQAxScript();
  public slots:
  void entered ();
  void error ( int code, const QString & description, int sourcePosition, const QString & sourceText );
  void finished ();
  void finished ( const QVariant & result );
  void finished ( int code, const QString & source, const QString & description, const QString & help );
  void stateChanged ( int state );
};

#endif // SLOTSQAXSCRIPT_H
