/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QREGULAREXPRESSIONVALIDATORSLOTS_H
#define QREGULAREXPRESSIONVALIDATORSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtGui/QRegularExpressionValidator>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals.h"

class QRegularExpressionValidatorSlots: public QObject
{
  Q_OBJECT
  public:
  QRegularExpressionValidatorSlots( QObject *parent = 0 );
  ~QRegularExpressionValidatorSlots();
  public slots:
  void regularExpressionChanged( const QRegularExpression & re );
};

#endif /* QREGULAREXPRESSIONVALIDATORSLOTS_H */
