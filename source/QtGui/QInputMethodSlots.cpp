/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QInputMethodSlots.h"

QInputMethodSlots::QInputMethodSlots( QObject *parent ) : QObject( parent )
{
}

QInputMethodSlots::~QInputMethodSlots()
{
}

void QInputMethodSlots::animatingChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Signals_return_codeblock( object, "animatingChanged()" );

  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QINPUTMETHOD" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}

void QInputMethodSlots::cursorRectangleChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Signals_return_codeblock( object, "cursorRectangleChanged()" );

  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QINPUTMETHOD" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}

void QInputMethodSlots::inputDirectionChanged( Qt::LayoutDirection newDirection )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Signals_return_codeblock( object, "inputDirectionChanged(Qt::LayoutDirection)" );

  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QINPUTMETHOD" );
    PHB_ITEM pnewDirection = hb_itemPutNI( NULL, (int) newDirection );

    hb_vmEvalBlockV( cb, 2, psender, pnewDirection );

    hb_itemRelease( psender );
    hb_itemRelease( pnewDirection );
  }
}

void QInputMethodSlots::keyboardRectangleChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Signals_return_codeblock( object, "keyboardRectangleChanged()" );

  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QINPUTMETHOD" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}

void QInputMethodSlots::localeChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Signals_return_codeblock( object, "localeChanged()" );

  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QINPUTMETHOD" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}

void QInputMethodSlots::visibleChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Signals_return_codeblock( object, "visibleChanged()" );

  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QINPUTMETHOD" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}

void QInputMethodSlots_connect_signal( const QString & signal, const QString & slot )
{
  QInputMethod * obj = (QInputMethod *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QInputMethodSlots * s = QCoreApplication::instance()->findChild<QInputMethodSlots *>();

    if( s == NULL )
    {
      s = new QInputMethodSlots();
      s->moveToThread( QCoreApplication::instance()->thread() );
      s->setParent( QCoreApplication::instance() );
    }

    hb_retl( Signals_connection_disconnection( s, signal, slot ) );
  }
  else
  {
    hb_retl( false );
  }
}
