/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QValueAxisSlots.h"

QValueAxisSlots::QValueAxisSlots( QObject *parent ) : QObject( parent )
{
}

QValueAxisSlots::~QValueAxisSlots()
{
}

#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QValueAxisSlots::labelFormatChanged( const QString & format )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "labelFormatChanged(QString)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QVALUEAXIS" );
    PHB_ITEM pformat = hb_itemPutC( NULL, QSTRINGTOSTRING(format) );

    hb_vmEvalBlockV( cb, 2, psender, pformat );

    hb_itemRelease( psender );
    hb_itemRelease( pformat );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QValueAxisSlots::maxChanged( qreal max )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "maxChanged(qreal)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QVALUEAXIS" );
    PHB_ITEM pmax = hb_itemPutND( NULL, max );

    hb_vmEvalBlockV( cb, 2, psender, pmax );

    hb_itemRelease( psender );
    hb_itemRelease( pmax );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QValueAxisSlots::minChanged( qreal min )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "minChanged(qreal)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QVALUEAXIS" );
    PHB_ITEM pmin = hb_itemPutND( NULL, min );

    hb_vmEvalBlockV( cb, 2, psender, pmin );

    hb_itemRelease( psender );
    hb_itemRelease( pmin );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QValueAxisSlots::minorTickCountChanged( int tickCount )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "minorTickCountChanged(int)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QVALUEAXIS" );
    PHB_ITEM ptickCount = hb_itemPutNI( NULL, tickCount );

    hb_vmEvalBlockV( cb, 2, psender, ptickCount );

    hb_itemRelease( psender );
    hb_itemRelease( ptickCount );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QValueAxisSlots::rangeChanged( qreal min, qreal max )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "rangeChanged(qreal,qreal)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QVALUEAXIS" );
    PHB_ITEM pmin = hb_itemPutND( NULL, min );
    PHB_ITEM pmax = hb_itemPutND( NULL, max );

    hb_vmEvalBlockV( cb, 3, psender, pmin, pmax );

    hb_itemRelease( psender );
    hb_itemRelease( pmin );
    hb_itemRelease( pmax );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QValueAxisSlots::tickCountChanged( int tickCount )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "tickCountChanged(int)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QVALUEAXIS" );
    PHB_ITEM ptickCount = hb_itemPutNI( NULL, tickCount );

    hb_vmEvalBlockV( cb, 2, psender, ptickCount );

    hb_itemRelease( psender );
    hb_itemRelease( ptickCount );
  }
}
#endif

void QValueAxisSlots_connect_signal( const QString & signal, const QString & slot )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QValueAxis * obj = (QValueAxis *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QValueAxisSlots * s = QCoreApplication::instance()->findChild<QValueAxisSlots *>();

    if( s == NULL )
    {
      s = new QValueAxisSlots();
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
