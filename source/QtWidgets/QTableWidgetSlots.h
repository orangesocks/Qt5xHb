/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QTABLEWIDGETSLOTS_H
#define QTABLEWIDGETSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtWidgets/QTableWidget>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals.h"

class QTableWidgetSlots: public QObject
{
  Q_OBJECT
  public:
  QTableWidgetSlots( QObject *parent = 0 );
  ~QTableWidgetSlots();
  public slots:
  void cellActivated( int row, int column );
  void cellChanged( int row, int column );
  void cellClicked( int row, int column );
  void cellDoubleClicked( int row, int column );
  void cellEntered( int row, int column );
  void cellPressed( int row, int column );
  void currentCellChanged( int currentRow, int currentColumn, int previousRow, int previousColumn );
  void currentItemChanged( QTableWidgetItem * current, QTableWidgetItem * previous );
  void itemActivated( QTableWidgetItem * item );
  void itemChanged( QTableWidgetItem * item );
  void itemClicked( QTableWidgetItem * item );
  void itemDoubleClicked( QTableWidgetItem * item );
  void itemEntered( QTableWidgetItem * item );
  void itemPressed( QTableWidgetItem * item );
  void itemSelectionChanged();
};

#endif /* QTABLEWIDGETSLOTS_H */
