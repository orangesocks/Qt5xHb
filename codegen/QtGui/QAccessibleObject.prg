$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QOBJECT
REQUEST QRECT
REQUEST QACCESSIBLEINTERFACE
#endif

CLASS QAccessibleObject INHERIT QAccessibleInterface

   METHOD isValid
   METHOD object
   METHOD rect
   METHOD setText
   METHOD childAt

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=bool isValid() const
$method=|bool|isValid|

$prototype=QObject *object() const
$method=|QObject *|object|

$prototype=QRect rect() const
$method=|QRect|rect|

$prototype=void setText(QAccessible::Text t, const QString &text)
$method=|void|setText|QAccessible::Text,const QString &

$prototype=QAccessibleInterface *childAt(int x, int y) const
$method=|QAccessibleInterface *|childAt|int,int

#pragma ENDDUMP
