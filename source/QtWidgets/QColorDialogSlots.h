/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QCOLORDIALOGSLOTS_H
#define QCOLORDIALOGSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtWidgets/QColorDialog>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals.h"

class QColorDialogSlots: public QObject
{
  Q_OBJECT
  public:
  QColorDialogSlots( QObject *parent = 0 );
  ~QColorDialogSlots();
  public slots:
  void colorSelected( const QColor & color );
  void currentColorChanged( const QColor & color );
};

#endif /* QCOLORDIALOGSLOTS_H */
