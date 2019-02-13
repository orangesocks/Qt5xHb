/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QDBusVirtualObject INHERIT QObject

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDBusVirtualObject
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtDBus/QDBusVirtualObject>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtDBus/QDBusVirtualObject>
#endif

/*
explicit QDBusVirtualObject(QObject *parent = 0)
*/

/*
virtual QString introspect(const QString &path) const = 0
*/

/*
virtual bool handleMessage(const QDBusMessage &message, const QDBusConnection &connection) = 0
*/

#pragma ENDDUMP
