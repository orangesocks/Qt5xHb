$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QGESTURE
#endif

CLASS QGestureRecognizer

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD create
   METHOD recognize
   METHOD reset
   METHOD registerRecognizer
   METHOD unregisterRecognizer

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=virtual QGesture * create(QObject * target)
$method=|QGesture *|create|QObject *

$prototype=virtual Result recognize(QGesture * gesture, QObject * watched, QEvent * event) = 0
$method=|QGestureRecognizer::Result|recognize|QGesture *,QObject *,QEvent *

$prototype=virtual void reset(QGesture * gesture)
$method=|void|reset|QGesture *

$prototype=static Qt::GestureType registerRecognizer(QGestureRecognizer * recognizer)
$staticMethod=|Qt::GestureType|registerRecognizer|QGestureRecognizer *

$prototype=static void unregisterRecognizer(Qt::GestureType type)
$staticMethod=|void|unregisterRecognizer|Qt::GestureType

$extraMethods

#pragma ENDDUMP
