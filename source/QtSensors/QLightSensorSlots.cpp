/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QLightSensorSlots.h"

QLightSensorSlots::QLightSensorSlots( QObject *parent ) : QObject( parent )
{
}

QLightSensorSlots::~QLightSensorSlots()
{
}

#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
void QLightSensorSlots::fieldOfViewChanged( qreal fieldOfView )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "fieldOfViewChanged(qreal)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QLIGHTSENSOR" );
    PHB_ITEM pfieldOfView = hb_itemPutND( NULL, fieldOfView );

    hb_vmEvalBlockV( cb, 2, psender, pfieldOfView );

    hb_itemRelease( psender );
    hb_itemRelease( pfieldOfView );
  }
}
#endif

void QLightSensorSlots_connect_signal( const QString & signal, const QString & slot )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QLightSensor * obj = (QLightSensor *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QLightSensorSlots * s = QCoreApplication::instance()->findChild<QLightSensorSlots *>();

    if( s == NULL )
    {
      s = new QLightSensorSlots();
      s->moveToThread( QCoreApplication::instance()->thread() );
      s->setParent( QCoreApplication::instance() );
    }

    hb_retl( Qt5xHb::Signals_connection_disconnection( s, signal, slot ) );
  }
  else
  {
    hb_retl( false );
  }
#else
  hb_retl( false );
#endif
}
