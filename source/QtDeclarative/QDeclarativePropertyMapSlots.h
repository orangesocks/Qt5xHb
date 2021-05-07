/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QDECLARATIVEPROPERTYMAPSLOTS_H
#define QDECLARATIVEPROPERTYMAPSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtDeclarative/QDeclarativePropertyMap>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals.h"

class QDeclarativePropertyMapSlots: public QObject
{
  Q_OBJECT
  public:
  QDeclarativePropertyMapSlots( QObject *parent = 0 );
  ~QDeclarativePropertyMapSlots();
  public slots:
  void valueChanged( const QString & key, const QVariant & value );
};

#endif /* QDECLARATIVEPROPERTYMAPSLOTS_H */
